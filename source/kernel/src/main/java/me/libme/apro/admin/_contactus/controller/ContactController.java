package me.libme.apro.admin._contactus.controller;


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

import me.libme.apro.admin._contactus.vo.ContactRecord;
import me.libme.apro.admin._contactus.vo.ContactCriteria;

import me.libme.apro.admin._contactus.service.ContactService;



@Controller
@RequestMapping("/contact")
@ClosureException
public class ContactController  {

	@Autowired
	private ContactService contactService;


	/**
	 * save
	 */
	@ResponseBody
	@RequestMapping(path="/saveContact",method=RequestMethod.POST)
	public ResponseModel saveContact (ContactRecord contactRecord) throws Exception {
		// do something validation on the contactRecord.
		contactService.saveContact( contactRecord);
		return ResponseModel.newSuccess(true);
	}
	
	/**
	 * update
	 */
	@ResponseBody
	@RequestMapping(path="/updateContact",method=RequestMethod.POST)
	public ResponseModel updateContact (ContactRecord contactRecord) throws Exception {
		// do something validation on the contactRecord.
		contactService.updateContact( contactRecord);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * delete
	 */
	@ResponseBody
	@RequestMapping(path="/deleteContactById",method=RequestMethod.POST)
	public ResponseModel deleteContactById (String id) throws Exception {
		// do something validation on the contactRecord.
		contactService.deleteContactById( id);
		return ResponseModel.newSuccess(true);
	}

	/**
	 * get
	 */
	@ResponseBody
	@RequestMapping(path="/getContactById",method=RequestMethod.GET)
	public ResponseModel getContactById (String id) throws Exception {
		ContactRecord contactRecord= contactService.getContactById( id);
		return ResponseModel.newSuccess().setData(contactRecord);
	}
	
	/**
	 * page...
	 */
	@ResponseBody
	@RequestMapping(path="/getContactsByPage",method=RequestMethod.GET)
	public ResponseModel getContactsByPage(ContactCriteria contactCriteria, SimplePageRequestVO simplePageRequestVO) throws Exception {
		JPage<ContactRecord> page=contactService.getContactsByPage( contactCriteria,
		new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess().setData(page);
	}

	
}
