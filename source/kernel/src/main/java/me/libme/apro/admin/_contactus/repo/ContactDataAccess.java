package me.libme.apro.admin._contactus.repo;

import me.libme.kernel._c.util.JDateUtils;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.module.spring.jpahibernate.query2.JJpaDateParam;
import me.libme.webboot.fn.jpa.DataAccessSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.TemporalType;

import me.libme.apro.admin._contactus.vo.ContactRecord;
import me.libme.apro.admin._contactus.vo.ContactCriteria;


@Component
public class ContactDataAccess extends DataAccessSupport {


    @Autowired
    private ContactRepo contactRepo;


    /**
    * page...
    */
    public JPage<ContactRecord> getContactsByPage(ContactCriteria contactCriteria, SimplePageRequest simplePageRequest) throws Exception{
    return contactRepo.singleEntityQuery2()
            .conditionDefault()
            .likes("detail", contactCriteria.getDetail())
            .likes("id", contactCriteria.getId())
            .likes("createId", contactCriteria.getCreateId())
            .likes("updateId", contactCriteria.getUpdateId())
            .larger("createTimeStart", new JJpaDateParam(JDateUtils.parseDate(contactCriteria.getCreateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("createTimeEnd", new JJpaDateParam(JDateUtils.parseDate(contactCriteria.getCreateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("createTime", new JJpaDateParam(JDateUtils.parseDate(contactCriteria.getCreateTime()), TemporalType.DATE))
            .larger("updateTimeStart", new JJpaDateParam(JDateUtils.parseDate(contactCriteria.getUpdateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("updateTimeEnd", new JJpaDateParam(JDateUtils.parseDate(contactCriteria.getUpdateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("updateTime", new JJpaDateParam(JDateUtils.parseDate(contactCriteria.getUpdateTime()), TemporalType.DATE))
            .likes("deleted", contactCriteria.getDeleted())
            .equals("version", contactCriteria.getVersion())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,ContactRecord.class);
    }





}