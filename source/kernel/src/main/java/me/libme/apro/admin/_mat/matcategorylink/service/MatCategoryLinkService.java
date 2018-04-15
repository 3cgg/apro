package me.libme.apro.admin._mat.matcategorylink.service;


import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.Copy;

import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import me.libme.apro.admin._mat.matcategorylink.model.MatCategoryLink;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkRecord;
import me.libme.apro.admin._mat.matcategorylink.vo.MatCategoryLinkCriteria;

import me.libme.apro.admin._mat.matcategorylink.repo.MatCategoryLinkRepo;
import me.libme.apro.admin._mat.matcategorylink.repo.MatCategoryLinkDataAccess;


@Service
@Transactional
@ClosureException
public class MatCategoryLinkService  {

	@Autowired
	private MatCategoryLinkRepo matCategoryLinkRepo;

	@Autowired
	private MatCategoryLinkDataAccess matCategoryLinkDataAccess;


    private MatCategoryLink toMatCategoryLink(MatCategoryLinkRecord matCategoryLinkRecord){
        MatCategoryLink matCategoryLink= Copy.simpleCopy(matCategoryLinkRecord,MatCategoryLink.class);
    	return matCategoryLink;
    }

	/**
	 * save
	 */
	public String saveMatCategoryLink (MatCategoryLinkRecord matCategoryLinkRecord) throws Exception{
		MatCategoryLink matCategoryLink=toMatCategoryLink(matCategoryLinkRecord);
		matCategoryLinkRepo.saveOnly( matCategoryLink);
        return matCategoryLink.getId();
	}
	
	/**
	 * update
	 */
	public void updateMatCategoryLink (MatCategoryLinkRecord matCategoryLinkRecord) throws Exception{

		MatCategoryLink dbMatCategoryLink=matCategoryLinkRepo.active(matCategoryLinkRecord.getId());

        dbMatCategoryLink.setMatId(matCategoryLinkRecord.getMatId());
        dbMatCategoryLink.setCategoryId(matCategoryLinkRecord.getCategoryId());
        matCategoryLinkRepo.updateOnly(dbMatCategoryLink);
	}

	
	/**
	 * delete
	 */
	public void deleteMatCategoryLinkById (String id) throws Exception{
		matCategoryLinkRepo.delete( id);
	}
	
	/**
	 * get
	 */
	public MatCategoryLinkRecord getMatCategoryLinkById (String id) throws Exception{
		return matCategoryLinkRepo.active(id,MatCategoryLinkRecord.class);
	}

	
	/**
	 * page...
	 */
	public JPage<MatCategoryLinkRecord> getMatCategoryLinksByPage(MatCategoryLinkCriteria matCategoryLinkCriteria, SimplePageRequest simplePageRequest) throws Exception{
		return matCategoryLinkDataAccess.getMatCategoryLinksByPage(matCategoryLinkCriteria,simplePageRequest);
	}

}
