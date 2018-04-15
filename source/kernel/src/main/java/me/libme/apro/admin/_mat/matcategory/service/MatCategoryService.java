package me.libme.apro.admin._mat.matcategory.service;


import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.Copy;

import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import me.libme.apro.admin._mat.matcategory.model.MatCategory;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryRecord;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryCriteria;

import me.libme.apro.admin._mat.matcategory.repo.MatCategoryRepo;
import me.libme.apro.admin._mat.matcategory.repo.MatCategoryDataAccess;


@Service
@Transactional
@ClosureException
public class MatCategoryService  {

	@Autowired
	private MatCategoryRepo matCategoryRepo;

	@Autowired
	private MatCategoryDataAccess matCategoryDataAccess;


    private MatCategory toMatCategory(MatCategoryRecord matCategoryRecord){
        MatCategory matCategory= Copy.simpleCopy(matCategoryRecord,MatCategory.class);
    	return matCategory;
    }

	/**
	 * save
	 */
	public String saveMatCategory (MatCategoryRecord matCategoryRecord) throws Exception{
		MatCategory matCategory=toMatCategory(matCategoryRecord);
		matCategoryRepo.saveOnly( matCategory);
        return matCategory.getId();
	}
	
	/**
	 * update
	 */
	public void updateMatCategory (MatCategoryRecord matCategoryRecord) throws Exception{

		MatCategory dbMatCategory=matCategoryRepo.active(matCategoryRecord.getId());

        dbMatCategory.setName(matCategoryRecord.getName());
        dbMatCategory.setCode(matCategoryRecord.getCode());
        dbMatCategory.setDescription(matCategoryRecord.getDescription());
        matCategoryRepo.updateOnly(dbMatCategory);
	}

	
	/**
	 * delete
	 */
	public void deleteMatCategoryById (String id) throws Exception{
		matCategoryRepo.delete( id);
	}
	
	/**
	 * get
	 */
	public MatCategoryRecord getMatCategoryById (String id) throws Exception{
		return matCategoryRepo.active(id,MatCategoryRecord.class);
	}

	
	/**
	 * page...
	 */
	public JPage<MatCategoryRecord> getMatCategorysByPage(MatCategoryCriteria matCategoryCriteria, SimplePageRequest simplePageRequest) throws Exception{
		return matCategoryDataAccess.getMatCategorysByPage(matCategoryCriteria,simplePageRequest);
	}

}
