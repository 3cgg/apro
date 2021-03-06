package me.libme.apro.admin._mat.matcategory.service;


import me.libme.apro.AproCodesTable;
import me.libme.apro.admin._mat.matcategory.model.MatCategory;
import me.libme.apro.admin._mat.matcategory.repo.MatCategoryDataAccess;
import me.libme.apro.admin._mat.matcategory.repo.MatCategoryRepo;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryCriteria;
import me.libme.apro.admin._mat.matcategory.vo.MatCategoryRecord;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.module.spring.jpahibernate.query2.JCondition;
import me.libme.webboot.Copy;
import me.libme.webseed.fn.kv.CodeDictService;
import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
@ClosureException
public class MatCategoryService  {

	@Autowired
	private MatCategoryRepo matCategoryRepo;

	@Autowired
	private MatCategoryDataAccess matCategoryDataAccess;

	@Autowired
	private CodeDictService codeDictService;


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
        dbMatCategory.setGroup(matCategoryRecord.getGroup());
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
		MatCategoryRecord matCategoryRecord= matCategoryRepo.active(id,MatCategoryRecord.class);
		appendInfo(matCategoryRecord);
		return matCategoryRecord;
	}

	
	/**
	 * page...
	 */
	public JPage<MatCategoryRecord> getMatCategorysByPage(MatCategoryCriteria matCategoryCriteria, SimplePageRequest simplePageRequest) throws Exception{
		JPage<MatCategoryRecord> matCategoryRecordJPage= matCategoryDataAccess.getMatCategorysByPage(matCategoryCriteria,simplePageRequest);
		appendInfo(matCategoryRecordJPage.getContent().toArray(new MatCategoryRecord[]{}));
		return matCategoryRecordJPage;
	}


	public List<MatCategoryRecord> getMatCategoryByGroup(String group) throws Exception{
		JCondition condition = matCategoryRepo.singleEntityQuery2()
				.conditionDefault();

		if (JStringUtils.isNotNullOrEmpty(group)) {
			condition.equals("group", group);
		}

		List<MatCategoryRecord> matCategoryRecords= condition.ready()
				.order().asc("group")
				.ready()
				.models(MatCategoryRecord.class);
		appendInfo(matCategoryRecords.toArray(new MatCategoryRecord[]{}));
		return matCategoryRecords;
	}


	private void appendInfo(MatCategoryRecord... matCategoryRecords){
		for(MatCategoryRecord matCategoryRecord:matCategoryRecords){
			matCategoryRecord.setGroupName(codeDictService.val(matCategoryRecord.getGroup(), AproCodesTable.MatCatGroup.CODE));
		}
	}











}
