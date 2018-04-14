package me.libme.apro.admin._mat.mat.service;


import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.Copy;

import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import me.libme.apro.admin._mat.mat.model.Mat;
import me.libme.apro.admin._mat.mat.vo.MatRecord;
import me.libme.apro.admin._mat.mat.vo.MatCriteria;

import me.libme.apro.admin._mat.mat.repo.MatRepo;
import me.libme.apro.admin._mat.mat.repo.MatDataAccess;


@Service
@Transactional
@ClosureException
public class MatService  {

	@Autowired
	private MatRepo matRepo;

	@Autowired
	private MatDataAccess matDataAccess;


    private Mat toMat(MatRecord matRecord){
        Mat mat= Copy.simpleCopy(matRecord,Mat.class);
    	return mat;
    }

	/**
	 * save
	 */
	public String saveMat (MatRecord matRecord) throws Exception{
		Mat mat=toMat(matRecord);
		matRepo.saveOnly( mat);
        return mat.getId();
	}
	
	/**
	 * update
	 */
	public void updateMat (MatRecord matRecord) throws Exception{

		Mat dbMat=matRepo.active(matRecord.getId());

        dbMat.setName(matRecord.getName());
        dbMat.setCode(matRecord.getCode());
        dbMat.setSize(matRecord.getSize());
        dbMat.setDescription(matRecord.getDescription());
        dbMat.setImgUrl(matRecord.getImgUrl());
        matRepo.updateOnly(dbMat);
	}

	
	/**
	 * delete
	 */
	public void deleteMatById (String id) throws Exception{
		matRepo.delete( id);
	}
	
	/**
	 * get
	 */
	public MatRecord getMatById (String id) throws Exception{
		return matRepo.active(id,MatRecord.class);
	}

	
	/**
	 * page...
	 */
	public JPage<MatRecord> getMatsByPage(MatCriteria matCriteria, SimplePageRequest simplePageRequest) throws Exception{
		return matDataAccess.getMatsByPage(matCriteria,simplePageRequest);
	}

}
