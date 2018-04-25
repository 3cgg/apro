package me.libme.apro.admin._mat.matcategorylink.service;


import me.libme.apro.admin._mat.matcategorylink.model.MatCategoryLink;
import me.libme.apro.admin._mat.matcategorylink.repo.MatCategoryLinkDataAccess;
import me.libme.apro.admin._mat.matcategorylink.repo.MatCategoryLinkRepo;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkCriteria;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
@ClosureException
public class MatCategoryLinkService  {

	@Autowired
	private MatCategoryLinkRepo matCategoryLinkRepo;

	@Autowired
	private MatCategoryLinkDataAccess matCategoryLinkDataAccess;

	public void bindMatCategory( String matId,
								String categoryId)  throws Exception{
		MatCategoryLink dbMatCategoryLink=matCategoryLinkDataAccess.getMatCategoryLink(matId, categoryId);
		if(dbMatCategoryLink!=null){
			matCategoryLinkRepo.deletePermanently( dbMatCategoryLink);
		}
		MatCategoryLink matCategoryLink=new MatCategoryLink();
		matCategoryLink.setMatId(matId);
		matCategoryLink.setCategoryId(categoryId);
		matCategoryLinkRepo.saveOnly(matCategoryLink);
	}


	public void unbindMatCategory( String matId,
								 String categoryId)  throws Exception{
		MatCategoryLink dbMatCategoryLink=matCategoryLinkDataAccess.getMatCategoryLink(matId, categoryId);
		matCategoryLinkRepo.deletePermanently(dbMatCategoryLink);
	}


	public JPage<MatCategoryLinkRecord> getBindMatCategory(String categoryId,MatCategoryLinkCriteria matCategoryLinkCriteria,
														   SimplePageRequest simplePageRequest) throws Exception{
		return  matCategoryLinkDataAccess.getBindMatCategory(categoryId, matCategoryLinkCriteria, simplePageRequest);
	}

	public JPage<MatCategoryLinkRecord> getUnbindMatCategory(String categoryId,MatCategoryLinkCriteria matCategoryLinkCriteria,
															 SimplePageRequest simplePageRequest) throws Exception{
		return  matCategoryLinkDataAccess.getUnbindMatCategory(categoryId, matCategoryLinkCriteria, simplePageRequest);

	}


}
