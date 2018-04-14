package me.libme.apro.admin._mat.mat.repo;

import me.libme.kernel._c.util.JDateUtils;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.module.spring.jpahibernate.query2.JJpaDateParam;
import me.libme.webboot.fn.jpa.DataAccessSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.TemporalType;

import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.apro.admin._mat.mat.vo.MatCriteria;


@Component
public class MatDataAccess extends DataAccessSupport {


    @Autowired
    private MatRepo matRepo;


    /**
    * page...
    */
    public JPage<MatRecord> getMatsByPage(MatCriteria matCriteria, SimplePageRequest simplePageRequest) throws Exception{
    return matRepo.singleEntityQuery2()
            .conditionDefault()
            .likes("name", matCriteria.getName())
            .likes("code", matCriteria.getCode())
            .likes("size", matCriteria.getSize())
            .likes("description", matCriteria.getDescription())
            .likes("id", matCriteria.getId())
            .likes("createId", matCriteria.getCreateId())
            .likes("updateId", matCriteria.getUpdateId())
            .likes("deleted", matCriteria.getDeleted())
            .equals("version", matCriteria.getVersion())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,MatRecord.class);
    }





}