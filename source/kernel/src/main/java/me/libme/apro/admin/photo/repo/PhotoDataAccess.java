package me.libme.apro.admin.photo.repo;

import me.libme.apro.admin.photo.vo.PhotoCriteria;
import me.libme.apro.admin.photo.vo.PhotoRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.fn.jpa.DataAccessSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class PhotoDataAccess extends DataAccessSupport {


    @Autowired
    private PhotoRepo photoRepo;


    /**
    * page...
    */
    public JPage<PhotoRecord> getPhotosByPage(PhotoCriteria photoCriteria, SimplePageRequest simplePageRequest) throws Exception{
    return photoRepo.singleEntityQuery2()
            .conditionDefault()

            .likes("description", photoCriteria.getDescription())
            .ready()
            .order().desc("updateTime")
            .ready()
            .modelPage(simplePageRequest,PhotoRecord.class);
    }





}