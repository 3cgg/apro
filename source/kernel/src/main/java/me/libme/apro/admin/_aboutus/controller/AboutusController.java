package me.libme.apro.admin._aboutus.controller;


import me.libme.apro.admin._aboutus.service.AboutusService;
import me.libme.apro.admin._aboutus.vo.AboutUsCriteria;
import me.libme.apro.admin._aboutus.vo.AboutUsRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.webboot.ResponseModel;
import me.libme.webseed.web.ClosureException;
import me.libme.webseed.web.SimplePageRequestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/aboutus")
@ClosureException
public class AboutusController  {

	@Autowired
	private AboutusService aboutusService;


	/**
	 * save
	 */
	@ResponseBody
	@RequestMapping(path="/saveAboutUs",method=RequestMethod.POST)
	public ResponseModel saveAboutUs (AboutUsRecord aboutUsRecord) throws Exception {
		// do something validation on the aboutUsRecord.
		aboutusService.saveAboutUs( aboutUsRecord);
		return ResponseModel.newSuccess(true);
	}
	
	/**
	 * update
	 */
	@ResponseBody
	@RequestMapping(path="/updateAboutUs",method=RequestMethod.POST)
	public ResponseModel updateAboutUs (AboutUsRecord aboutUsRecord) throws Exception {
		// do something validation on the aboutUsRecord.
		if(JStringUtils.isNullOrEmpty(aboutUsRecord.getId())){
			aboutusService.saveAboutUs(aboutUsRecord);
		}else {
			aboutusService.updateAboutUs(aboutUsRecord);
		}
		return ResponseModel.newSuccess(true);
	}

	/**
	 * delete
	 */
	@ResponseBody
	@RequestMapping(path="/deleteAboutUsById",method=RequestMethod.POST)
	public ResponseModel deleteAboutUsById (String id) throws Exception {
		// do something validation on the aboutUsRecord.
		aboutusService.deleteAboutUsById( id);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * get
	 */
	@ResponseBody
	@RequestMapping(path="/getAboutUsById",method=RequestMethod.GET)
	public ResponseModel getAboutUsById (String id) throws Exception {
		AboutUsRecord aboutUsRecord= null;
		if(JStringUtils.isNullOrEmpty(id)){
			List list=aboutusService.getAboutUssByPage(new AboutUsCriteria(),new SimplePageRequest(0,10)).getContent();
			if(list.isEmpty()){
//				contactRecord=new ContactRecord();
			}else{
				aboutUsRecord= (AboutUsRecord) list.get(0);
			}
		}else{
			aboutUsRecord= aboutusService.getAboutUsById( id);
		}
		return ResponseModel.newSuccess().setData(aboutUsRecord);
	}
	
	/**
	 * page...
	 */
	@ResponseBody
	@RequestMapping(path="/getAboutUssByPage",method=RequestMethod.GET)
	public ResponseModel getAboutUssByPage(AboutUsCriteria aboutUsCriteria, SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<AboutUsRecord> page=aboutusService.getAboutUssByPage( aboutUsCriteria,
		new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess().setData(page);
	}

	
}
