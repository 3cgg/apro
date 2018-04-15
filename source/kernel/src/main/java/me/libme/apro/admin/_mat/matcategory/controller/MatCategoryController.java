package me.libme.apro.admin._mat.matcategory.controller;


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

import me.libme.apro.admin._mat.matcategory.vo.MatCategoryRecord;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryCriteria;

import me.libme.apro.admin._mat.matcategory.service.MatCategoryService;



@Controller
@RequestMapping("/matcategory")
@ClosureException
public class MatCategoryController  {

	@Autowired
	private MatCategoryService matCategoryService;


	/**
	 * save
	 */
	@ResponseBody
	@RequestMapping(path="/saveMatCategory",method=RequestMethod.POST)
	public ResponseModel saveMatCategory (MatCategoryRecord matCategoryRecord) throws Exception {
		// do something validation on the matCategoryRecord.
		matCategoryService.saveMatCategory( matCategoryRecord);
		return ResponseModel.newSuccess(true);
	}
	
	/**
	 * update
	 */
	@ResponseBody
	@RequestMapping(path="/updateMatCategory",method=RequestMethod.POST)
	public ResponseModel updateMatCategory (MatCategoryRecord matCategoryRecord) throws Exception {
		// do something validation on the matCategoryRecord.
		matCategoryService.updateMatCategory( matCategoryRecord);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * delete
	 */
	@ResponseBody
	@RequestMapping(path="/deleteMatCategoryById",method=RequestMethod.POST)
	public ResponseModel deleteMatCategoryById (String id) throws Exception {
		// do something validation on the matCategoryRecord.
		matCategoryService.deleteMatCategoryById( id);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * get
	 */
	@ResponseBody
	@RequestMapping(path="/getMatCategoryById",method=RequestMethod.GET)
	public ResponseModel getMatCategoryById (String id) throws Exception {
		MatCategoryRecord matCategoryRecord= matCategoryService.getMatCategoryById( id);
		return ResponseModel.newSuccess().setData(matCategoryRecord);
	}
	
	/**
	 * page...
	 */
	@ResponseBody
	@RequestMapping(path="/getMatCategorysByPage",method=RequestMethod.GET)
	public ResponseModel getMatCategorysByPage(MatCategoryCriteria matCategoryCriteria, SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<MatCategoryRecord> page=matCategoryService.getMatCategorysByPage( matCategoryCriteria,
		new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess().setData(page);
	}

	
}
