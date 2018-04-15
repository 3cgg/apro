package me.libme.apro.admin._aboutus.repo;

import me.libme.kernel._c.util.JDateUtils;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.module.spring.jpahibernate.query2.JJpaDateParam;
import me.libme.webboot.fn.jpa.DataAccessSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.TemporalType;

import me.libme.apro.admin._aboutus.vo.AboutUsRecord;
import me.libme.apro.admin._aboutus.vo.AboutUsCriteria;


@Component
public class AboutusDataAccess extends DataAccessSupport {


    @Autowired
    private AboutUsRepo aboutUsRepo;


    /**
    * page...
    */
    public JPage<AboutUsRecord> getAboutUssByPage(AboutUsCriteria aboutUsCriteria, SimplePageRequest simplePageRequest) throws Exception{
    return aboutUsRepo.singleEntityQuery2()
            .conditionDefault()
            .likes("detail", aboutUsCriteria.getDetail())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,AboutUsRecord.class);
    }





}