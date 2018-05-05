package me.libme.apro.portal.mat;

import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.module.spring.jpahibernate.query2.JCondition;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
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

        String sql="SELECT " +
                " ao.`name` AS NAME, " +
                " ao.size AS size, " +
                " ao._code AS CODE, " +
                " ao._desc AS description, " +
                " ao.img_id AS imgId ," +
                " ao.id as id" +
                " FROM " +
                " t_mat ao " +
                " WHERE ao.deleted = 'N'  and  " +
                " ao.id IN ( " +
                "  SELECT " +
                "  a.id AS id " +
                "  FROM " +
                "  t_mat a " +
                "  LEFT JOIN t_mat_category_link b ON a.id = b.mat_id " +
                "  LEFT JOIN t_mat_category c ON b.category_id = c.id " +
                "  WHERE 1=1  " ;

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
        if(JStringUtils.isNotNullOrEmpty(categoryIds)){
            ArrayList<String> vals=new ArrayList<>();
            Arrays.asList(categoryIds.split(",")).forEach(k->vals.add(k));
            params.put("categoryIds", JCondition.Condition.in(vals));
            sql =sql+" and c.`id` in ( :categoryIds )";
        }

        String name=matCriteria.getName();
        if(JStringUtils.isNotNullOrEmpty(name)){
            params.put("name", JCondition.Condition.likes(name));
            sql =sql+" and  a.`name` like :name ";
        }

//        Map<String,Object> paramObject=params(params);
//        List<String> vals=new ArrayList<>();
//        Arrays.asList(categoryIds.split(",")).forEach(k->vals.add(k));
//        paramObject.put("categoryIds",vals);

        sql=sql+" ) ";

        return nativeQuery().setSql(sql).setParams(params(params))
                .modelPage(simplePageRequest,MatRecord.class);
    }




}
