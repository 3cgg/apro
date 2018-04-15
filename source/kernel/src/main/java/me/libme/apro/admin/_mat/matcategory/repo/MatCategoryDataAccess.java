package me.libme.apro.admin._mat.matcategory.repo;

import me.libme.kernel._c.util.JDateUtils;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.module.spring.jpahibernate.query2.JJpaDateParam;
import me.libme.webboot.fn.jpa.DataAccessSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.TemporalType;

import me.libme.apro.admin._mat.matcategory.vo.MatCategoryRecord;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryCriteria;


@Component
public class MatCategoryDataAccess extends DataAccessSupport {


    @Autowired
    private MatCategoryRepo matCategoryRepo;


    /**
    * page...
    */
    public JPage<MatCategoryRecord> getMatCategorysByPage(MatCategoryCriteria matCategoryCriteria, SimplePageRequest simplePageRequest) throws Exception{
    return matCategoryRepo.singleEntityQuery2()
            .conditionDefault()
            .likes("name", matCategoryCriteria.getName())
            .likes("code", matCategoryCriteria.getCode())
            .likes("description", matCategoryCriteria.getDescription())
            .likes("id", matCategoryCriteria.getId())
            .likes("createId", matCategoryCriteria.getCreateId())
            .likes("updateId", matCategoryCriteria.getUpdateId())
            .larger("createTimeStart", new JJpaDateParam(JDateUtils.parseDate(matCategoryCriteria.getCreateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("createTimeEnd", new JJpaDateParam(JDateUtils.parseDate(matCategoryCriteria.getCreateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("createTime", new JJpaDateParam(JDateUtils.parseDate(matCategoryCriteria.getCreateTime()), TemporalType.DATE))
            .larger("updateTimeStart", new JJpaDateParam(JDateUtils.parseDate(matCategoryCriteria.getUpdateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("updateTimeEnd", new JJpaDateParam(JDateUtils.parseDate(matCategoryCriteria.getUpdateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("updateTime", new JJpaDateParam(JDateUtils.parseDate(matCategoryCriteria.getUpdateTime()), TemporalType.DATE))
            .likes("deleted", matCategoryCriteria.getDeleted())
            .equals("version", matCategoryCriteria.getVersion())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,MatCategoryRecord.class);
    }





}