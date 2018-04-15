package me.libme.apro.admin._mat.matcategorylink.repo;

import me.libme.kernel._c.util.JDateUtils;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.module.spring.jpahibernate.query2.JJpaDateParam;
import me.libme.webboot.fn.jpa.DataAccessSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.TemporalType;

import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkRecord;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkCriteria;


@Component
public class MatCategoryLinkDataAccess extends DataAccessSupport {


    @Autowired
    private MatCategoryLinkRepo matCategoryLinkRepo;


    /**
    * page...
    */
    public JPage<MatCategoryLinkRecord> getMatCategoryLinksByPage(MatCategoryLinkCriteria matCategoryLinkCriteria, SimplePageRequest simplePageRequest) throws Exception{
    return matCategoryLinkRepo.singleEntityQuery2()
            .conditionDefault()
            .likes("matId", matCategoryLinkCriteria.getMatId())
            .likes("categoryId", matCategoryLinkCriteria.getCategoryId())
            .likes("id", matCategoryLinkCriteria.getId())
            .likes("createId", matCategoryLinkCriteria.getCreateId())
            .likes("updateId", matCategoryLinkCriteria.getUpdateId())
            .larger("createTimeStart", new JJpaDateParam(JDateUtils.parseDate(matCategoryLinkCriteria.getCreateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("createTimeEnd", new JJpaDateParam(JDateUtils.parseDate(matCategoryLinkCriteria.getCreateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("createTime", new JJpaDateParam(JDateUtils.parseDate(matCategoryLinkCriteria.getCreateTime()), TemporalType.DATE))
            .larger("updateTimeStart", new JJpaDateParam(JDateUtils.parseDate(matCategoryLinkCriteria.getUpdateTimeStart()), TemporalType.TIMESTAMP))
            .smaller("updateTimeEnd", new JJpaDateParam(JDateUtils.parseDate(matCategoryLinkCriteria.getUpdateTimeEnd()), TemporalType.TIMESTAMP))
            .equals("updateTime", new JJpaDateParam(JDateUtils.parseDate(matCategoryLinkCriteria.getUpdateTime()), TemporalType.DATE))
            .likes("deleted", matCategoryLinkCriteria.getDeleted())
            .equals("version", matCategoryLinkCriteria.getVersion())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,MatCategoryLinkRecord.class);
    }





}