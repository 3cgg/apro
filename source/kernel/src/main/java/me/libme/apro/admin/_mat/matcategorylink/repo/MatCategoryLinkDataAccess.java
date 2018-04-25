package me.libme.apro.admin._mat.matcategorylink.repo;

import me.libme.apro.admin._mat.matcategorylink.model.MatCategoryLink;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkCriteria;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.module.spring.jpahibernate.query2.JCondition;
import me.libme.module.spring.jpahibernate.query2.JQuery;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;


@Component
public class MatCategoryLinkDataAccess extends DataAccessSupport {


    @Autowired
    private MatCategoryLinkRepo matCategoryLinkRepo;


    public MatCategoryLink getMatCategoryLink(String matId,
                                          String categoryId) throws Exception{
        return matCategoryLinkRepo.singleEntityQuery2()
                .conditionDefault()
                .equals("matId", matId)
                .equals("categoryId", categoryId)
                .ready().model();
    }

    /**
     *select
     a.id as id ,
     a.`name` as name,
     a.size as size,
     a._code as code,
     a._desc as description ,

     from t_mat  a
     left join t_mat_category_link b on a.id=b.mat_id
     where a.deleted='N' and b.category_id in (

     )
     * @return
     */
    private JQuery<?> buildBindMatCategoryQuery(String categoryId,
                                                Map<String, JCondition.Condition> params){

        String sql="select " +
                "a.id as id , " +
                "a.`name` as name, " +
                "a.size as size, " +
                "a._code as code, " +
                "a._desc as description , " +
                "from t_mat  a  " +
                "left join t_mat_category_link b on a.id=b.mat_id " +
                "where a.deleted='N' and b.category_id = :categoryId";

        if(JStringUtils.isNotNullOrEmpty(categoryId)){
            params.put("categoryId",JCondition.Condition.equal(categoryId));
        }

        return nativeQuery().setSql(sql)
                .setParams(params(params));
    }

    public JPage<MatCategoryLinkRecord> getBindMatCategory(String categoryId,MatCategoryLinkCriteria matCategoryLinkCriteria,
                                                           SimplePageRequest simplePageRequest){
        Map<String, JCondition.Condition> params=new HashMap<>();
        return  buildBindMatCategoryQuery(categoryId,params)
                .modelPage(simplePageRequest,MatCategoryLinkRecord.class);
    }

    public JPage<MatCategoryLinkRecord> getUnbindMatCategory(String categoryId,MatCategoryLinkCriteria matCategoryLinkCriteria,
                                                           SimplePageRequest simplePageRequest){

        Map<String, JCondition.Condition> params=new HashMap<>();
        return  buildUnbindMatCategoryQuery(categoryId,params)
                .modelPage(simplePageRequest,MatCategoryLinkRecord.class);

    }


    /**
     * select
     a.id as id ,
     a.`name` as name,
     a.size as size,
     a._code as code,
     a._desc as description

     from t_mat  a
     left join t_mat_category_link b on a.id=b.mat_id
     where a.deleted='N' and a.id not in (

     select
     aa.id
     from t_mat aa
     left join t_mat_category_link b on aa.id=b.mat_id
     left join t_mat_category c on b.category_id=c.id
     where aa.deleted='N' and c.deleted='N' and c.id =1

     )
     * @param categoryId
     * @param params
     * @return
     */
    private JQuery<?> buildUnbindMatCategoryQuery(String categoryId,
                                                Map<String, JCondition.Condition> params){

        String sql="select " +
                "a.id as id , " +
                "a.`name` as name, " +
                "a.size as size, " +
                "a._code as code, " +
                "a._desc as description  " +
                " " +
                "from t_mat  a  " +
                "left join t_mat_category_link b on a.id=b.mat_id " +
                "where a.deleted='N' and a.id not in ( " +

                "select  " +
                "aa.id  " +
                "from t_mat aa  " +
                "left join t_mat_category_link b on aa.id=b.mat_id " +
                "left join t_mat_category c on b.category_id=c.id " +
                "where aa.deleted='N' and c.deleted='N' and c.id = :categoryId " +

                ")";

        if(JStringUtils.isNotNullOrEmpty(categoryId)){
            params.put("categoryId",JCondition.Condition.equal(categoryId));
        }

        return nativeQuery().setSql(sql)
                .setParams(params(params));
    }








}