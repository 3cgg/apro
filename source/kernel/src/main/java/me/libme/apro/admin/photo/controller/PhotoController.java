package me.libme.apro.admin.photo.controller;


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

import me.libme.apro.admin.photo.vo.PhotoRecord;
import me.libme.apro.admin.photo.vo.PhotoCriteria;

import me.libme.apro.admin.photo.service.PhotoService;



@Controller
@RequestMapping("/photo")
@ClosureException
public class PhotoController  {

	@Autowired
	private PhotoService photoService;


	/**
	 * save
	 */
	@ResponseBody
	@RequestMapping(path="/savePhoto",method=RequestMethod.POST)
	public ResponseModel savePhoto (PhotoRecord photoRecord) throws Exception {
		// do something validation on the photoRecord.
		photoService.savePhoto( photoRecord);
		return ResponseModel.newSuccess(true);
	}
	
	/**
	 * update
	 */
	@ResponseBody
	@RequestMapping(path="/updatePhoto",method=RequestMethod.POST)
	public ResponseModel updatePhoto (PhotoRecord photoRecord) throws Exception {
		// do something validation on the photoRecord.
		photoService.updatePhoto( photoRecord);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * delete
	 */
	@ResponseBody
	@RequestMapping(path="/deletePhotoById",method=RequestMethod.POST)
	public ResponseModel deletePhotoById (String id) throws Exception {
		// do something validation on the photoRecord.
		photoService.deletePhotoById( id);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * get
	 */
	@ResponseBody
	@RequestMapping(path="/getPhotoById",method=RequestMethod.GET)
	public ResponseModel getPhotoById (String id) throws Exception {
		PhotoRecord photoRecord= photoService.getPhotoById( id);
		return ResponseModel.newSuccess().setData(photoRecord);
	}
	
	/**
	 * page...
	 */
	@ResponseBody
	@RequestMapping(path="/getPhotosByPage",method=RequestMethod.GET)
	public ResponseModel getPhotosByPage(PhotoCriteria photoCriteria, SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<PhotoRecord> page=photoService.getPhotosByPage( photoCriteria,
		new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess().setData(page);
	}

	
}
