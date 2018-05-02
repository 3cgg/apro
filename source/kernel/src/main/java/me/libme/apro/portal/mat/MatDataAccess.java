package me.libme.apro.portal.mat;

import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.module.spring.jpahibernate.query2.JCondition;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by J on 2018/4/21.
 */
@Component("PortalMatDataAccess")
public class MatDataAccess extends DataAccessSupport {


    /**
     * select

     a.id as id ,
     a.`name` as name,
     a.size as size,
     a._code as code,
     a._desc as description

     from t_mat  a
     left join t_mat_category_link b on a.id=b.mat_id
     left join t_mat_category c on b.category_id=c.id
     where c.`name` like '_'
     * @param matCriteria
     * @param simplePageRequest
     * @return
     */
    JPage<MatRecord> getMatRecordsByPage(MatCriteria matCriteria, SimplePageRequest simplePageRequest){

        String sql="select " +
                " " +
                "a.id as id , " +
                "a.`name` as name, " +
                "a.size as size, " +
                "a._code as code, " +
                "a._desc as description  " +
                " " +
                "from t_mat  a " +
                "left join t_mat_category_link b on a.id=b.mat_id " +
                "left join t_mat_category c on b.category_id=c.id " +
                "where 1=1 ";

        Map<String, JCondition.Condition> params=new HashMap<>();

        String category=matCriteria.getCategory();
        if(JStringUtils.isNotNullOrEmpty(category)){
            params.put("categoryName", JCondition.Condition.likes(category));
            sql =sql+" and  c.`name` like :categoryName ";
        }

        String categoryId=matCriteria.getCategoryId();
        if(JStringUtils.isNotNullOrEmpty(categoryId)){
            params.put("categoryId", JCondition.Condition.equal(categoryId));
            sql =sql+" and c.`id` = :categoryId ";
        }


        String categoryIds=matCriteria.getCategoryIds();
        if(JStringUtils.isNotNullOrEmpty(categoryId)){
            params.put("categoryIds", JCondition.Condition.equal(categoryIds));
            sql =sql+" and c.`id` in ( :categoryIds )";
        }

        String name=matCriteria.getName();
        if(JStringUtils.isNotNullOrEmpty(name)){
            params.put("name", JCondition.Condition.likes(name));
            sql =sql+" and  a.`name` like :name ";
        }

        return nativeQuery().setSql(sql).setParams(params(params))
                .modelPage(simplePageRequest,MatRecord.class);
    }




}
