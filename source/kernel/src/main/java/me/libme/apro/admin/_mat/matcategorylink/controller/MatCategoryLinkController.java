package me.libme.apro.admin._mat.matcategorylink.controller;


import me.libme.apro.admin._mat.matcategorylink.service.MatCategoryLinkService;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkCriteria;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.ResponseModel;
import me.libme.webseed.web.ClosureException;
import me.libme.webseed.web.SimplePageRequestVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/matcategorylink")
@ClosureException
public class MatCategoryLinkController  {

	@Autowired
	private MatCategoryLinkService matCategoryLinkService;

	@ResponseBody
	@RequestMapping(path="/getBindMatCategory",method=RequestMethod.GET)
	public ResponseModel  getBindMatCategory(String matId, MatCategoryLinkCriteria matCategoryLinkCriteria,
											 SimplePageRequestVO simplePageRequestVO) throws Exception{
		JPage<MatCategoryLinkRecord> page=matCategoryLinkService.getBindMatCategory(matId, matCategoryLinkCriteria,
				new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess(page);
	}

	@ResponseBody
	@RequestMapping(path="/getUnbindMatCategory",method=RequestMethod.GET)
	public ResponseModel  getUnbindMatCategory(String matId, MatCategoryLinkCriteria matCategoryLinkCriteria,
											 SimplePageRequestVO simplePageRequestVO) throws Exception{
		JPage<MatCategoryLinkRecord> page=matCategoryLinkService.getUnbindMatCategory(matId, matCategoryLinkCriteria,
				new SimplePageRequest(simplePageRequestVO.getPageNumber(),simplePageRequestVO.getPageSize()));
		return ResponseModel.newSuccess(page);
	}


	@ResponseBody
	@RequestMapping(path="/bindMatCategory",method=RequestMethod.POST)
	public ResponseModel  bindMatCategory(MatCategoryLinkRecord matCategoryLinkRecord) throws Exception{
		matCategoryLinkService.bindMatCategory(matCategoryLinkRecord.getImgId(),matCategoryLinkRecord.getCategoryId());
		return ResponseModel.newSuccess();
	}

	@ResponseBody
	@RequestMapping(path="/unbindMatCategory",method=RequestMethod.POST)
	public ResponseModel  unbindMatCategory(MatCategoryLinkRecord matCategoryLinkRecord) throws Exception{
		matCategoryLinkService.unbindMatCategory(matCategoryLinkRecord.getImgId(),matCategoryLinkRecord.getCategoryId());
		return ResponseModel.newSuccess();
	}
	
}
