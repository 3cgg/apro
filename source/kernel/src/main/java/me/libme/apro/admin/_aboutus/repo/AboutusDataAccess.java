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
            .likes("id", aboutUsCriteria.getId())
            .likes("createId", aboutUsCriteria.getCreateId())
            .likes("updateId", aboutUsCriteria.getUpdateId())
            .larger("createTimeStart", new JJpaDateParam(JDateUtils.parseDate(aboutUsCriteria.getCreateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("createTimeEnd", new JJpaDateParam(JDateUtils.parseDate(aboutUsCriteria.getCreateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("createTime", new JJpaDateParam(JDateUtils.parseDate(aboutUsCriteria.getCreateTime()), TemporalType.DATE))
            .larger("updateTimeStart", new JJpaDateParam(JDateUtils.parseDate(aboutUsCriteria.getUpdateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("updateTimeEnd", new JJpaDateParam(JDateUtils.parseDate(aboutUsCriteria.getUpdateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("updateTime", new JJpaDateParam(JDateUtils.parseDate(aboutUsCriteria.getUpdateTime()), TemporalType.DATE))
            .likes("deleted", aboutUsCriteria.getDeleted())
            .equals("version", aboutUsCriteria.getVersion())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,AboutUsRecord.class);
    }





}