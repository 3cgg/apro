package me.libme.apro.admin._mat.mat.repo;

import me.libme.apro.admin._mat.mat.vo.MatCriteria;
import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


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
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,MatRecord.class);
    }





}