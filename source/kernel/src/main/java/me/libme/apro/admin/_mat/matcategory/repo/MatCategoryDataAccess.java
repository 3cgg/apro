package me.libme.apro.admin._mat.matcategory.repo;

import me.libme.apro.admin._mat.matcategory.vo.MatCategoryCriteria;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.module.spring.jpahibernate.query2.JCondition;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class MatCategoryDataAccess extends DataAccessSupport {


    @Autowired
    private MatCategoryRepo matCategoryRepo;


    /**
    * page...
    */
    public JPage<MatCategoryRecord> getMatCategorysByPage(MatCategoryCriteria matCategoryCriteria, SimplePageRequest simplePageRequest) throws Exception{
        JCondition condition=matCategoryRepo.singleEntityQuery2()
            .conditionDefault()
            .likes("name", matCategoryCriteria.getName());

        if(JStringUtils.isNotNullOrEmpty(matCategoryCriteria.getGroup())){
            condition.equals("group", matCategoryCriteria.getGroup());
        }

        return condition.ready()
        .order().desc("group")
        .ready()
        .modelPage(simplePageRequest,MatCategoryRecord.class);

    }





}