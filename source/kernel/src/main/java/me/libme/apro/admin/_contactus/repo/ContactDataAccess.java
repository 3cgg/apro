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
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,ContactRecord.class);
    }





}