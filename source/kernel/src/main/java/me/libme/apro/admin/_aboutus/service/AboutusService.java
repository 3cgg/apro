package me.libme.apro.admin._aboutus.service;


import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.Copy;

import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import me.libme.apro.admin._aboutus.model.AboutUs;
import me.libme.apro.admin._aboutus.vo.AboutUsRecord;
import me.libme.apro.admin._aboutus.vo.AboutUsCriteria;

import me.libme.apro.admin._aboutus.repo.AboutUsRepo;
import me.libme.apro.admin._aboutus.repo.AboutusDataAccess;


@Service
@Transactional
@ClosureException
public class AboutusService  {

	@Autowired
	private AboutUsRepo aboutUsRepo;

	@Autowired
	private AboutusDataAccess aboutusDataAccess;


    private AboutUs toAboutUs(AboutUsRecord aboutUsRecord){
        AboutUs aboutUs= Copy.simpleCopy(aboutUsRecord,AboutUs.class);
    	return aboutUs;
    }

	/**
	 * save
	 */
	public String saveAboutUs (AboutUsRecord aboutUsRecord) throws Exception{
		AboutUs aboutUs=toAboutUs(aboutUsRecord);
		aboutUs.setId(null);
		aboutUsRepo.saveOnly( aboutUs);
        return aboutUs.getId();
	}
	
	/**
	 * update
	 */
	public void updateAboutUs (AboutUsRecord aboutUsRecord) throws Exception{

		AboutUs dbAboutUs=aboutUsRepo.active(aboutUsRecord.getId());

        dbAboutUs.setDetail(aboutUsRecord.getDetail());
        aboutUsRepo.updateOnly(dbAboutUs);
	}

	
	/**
	 * delete
	 */
	public void deleteAboutUsById (String id) throws Exception{
		aboutUsRepo.delete( id);
	}
	
	/**
	 * get
	 */
	public AboutUsRecord getAboutUsById (String id) throws Exception{
		return aboutUsRepo.active(id,AboutUsRecord.class);
	}

	
	/**
	 * page...
	 */
	public JPage<AboutUsRecord> getAboutUssByPage(AboutUsCriteria aboutUsCriteria, SimplePageRequest simplePageRequest) throws Exception{
		return aboutusDataAccess.getAboutUssByPage(aboutUsCriteria,simplePageRequest);
	}

}
