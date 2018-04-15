package me.libme.apro.admin._mat.matcategorylink.controller;


import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;

import me.libme.webseed.web.ClosureException;
import me.libme.webboot.ResponseModel;
import me.libme.webseed.web.SimplePageRequestVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkRecord;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkCriteria;

import me.libme.apro.admin._mat.matcategorylink.service.MatCategoryLinkService;



@Controller
@RequestMapping("/matcategorylink")
@ClosureException
public class MatCategoryLinkController  {

	@Autowired
	private MatCategoryLinkService matCategoryLinkService;


	/**
	 * save
	 */
	@ResponseBody
	@RequestMapping(path="/saveMatCategoryLink",method=RequestMethod.POST)
	public ResponseModel saveMatCategoryLink (MatCategoryLinkRecord matCategoryLinkRecord) throws Exception {
		// do something validation on the matCategoryLinkRecord.
		matCategoryLinkService.saveMatCategoryLink( matCategoryLinkRecord);
		return ResponseModel.newSuccess(true);
	}
	
	/**
	 * update
	 */
	@ResponseBody
	@RequestMapping(path="/updateMatCategoryLink",method=RequestMethod.POST)
	public ResponseModel updateMatCategoryLink (MatCategoryLinkRecord matCategoryLinkRecord) throws Exception {
		// do something validation on the matCategoryLinkRecord.
		matCategoryLinkService.updateMatCategoryLink( matCategoryLinkRecord);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * delete
	 */
	@ResponseBody
	@RequestMapping(path="/deleteMatCategoryLinkById",method=RequestMethod.POST)
	public ResponseModel deleteMatCategoryLinkById (String id) throws Exception {
		// do something validation on the matCategoryLinkRecord.
		matCategoryLinkService.deleteMatCategoryLinkById( id);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * get
	 */
	@ResponseBody
	@RequestMapping(path="/getMatCategoryLinkById",method=RequestMethod.GET)
	public ResponseModel getMatCategoryLinkById (String id) throws Exception {
		MatCategoryLinkRecord matCategoryLinkRecord= matCategoryLinkService.getMatCategoryLinkById( id);
		return ResponseModel.newSuccess().setData(matCategoryLinkRecord);
	}
	
	/**
	 * page...
	 */
	@ResponseBody
	@RequestMapping(path="/getMatCategoryLinksByPage",method=RequestMethod.GET)
	public ResponseModel getMatCategoryLinksByPage(MatCategoryLinkCriteria matCategoryLinkCriteria, SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<MatCategoryLinkRecord> page=matCategoryLinkService.getMatCategoryLinksByPage( matCategoryLinkCriteria,
		new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess().setData(page);
	}

	
}
