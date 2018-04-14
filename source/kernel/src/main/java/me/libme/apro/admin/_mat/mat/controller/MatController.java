package me.libme.apro.admin._mat.mat.controller;


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

import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.apro.admin._mat.mat.vo.MatCriteria;

import me.libme.apro.admin._mat.mat.service.MatService;



@Controller("adminMatController")
@RequestMapping("/mat")
@ClosureException
public class MatController  {

	@Autowired
	private MatService matService;


	/**
	 * save
	 */
	@ResponseBody
	@RequestMapping(path="/saveMat",method=RequestMethod.POST)
	public ResponseModel saveMat (MatRecord matRecord) throws Exception {
		// do something validation on the matRecord.
		matService.saveMat( matRecord);
		return ResponseModel.newSuccess(true);
	}
	
	/**
	 * update
	 */
	@ResponseBody
	@RequestMapping(path="/updateMat",method=RequestMethod.POST)
	public ResponseModel updateMat (MatRecord matRecord) throws Exception {
		// do something validation on the matRecord.
		matService.updateMat( matRecord);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * delete
	 */
	@ResponseBody
	@RequestMapping(path="/deleteMatById",method=RequestMethod.POST)
	public ResponseModel deleteMatById (String id) throws Exception {
		// do something validation on the matRecord.
		matService.deleteMatById( id);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * get
	 */
	@ResponseBody
	@RequestMapping(path="/getMatById",method=RequestMethod.GET)
	public ResponseModel getMatById (String id) throws Exception {
		MatRecord matRecord= matService.getMatById( id);
		return ResponseModel.newSuccess().setData(matRecord);
	}
	
	/**
	 * page...
	 */
	@ResponseBody
	@RequestMapping(path="/getMatsByPage",method=RequestMethod.GET)
	public ResponseModel getMatsByPage(MatCriteria matCriteria, SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<MatRecord> page=matService.getMatsByPage( matCriteria,
		new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess().setData(page);
	}

	
}
