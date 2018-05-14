package me.libme.apro.admin.photo.service;


import me.libme.apro.admin.photo.model.Photo;
import me.libme.apro.admin.photo.repo.PhotoDataAccess;
import me.libme.apro.admin.photo.repo.PhotoRepo;
import me.libme.apro.admin.photo.vo.PhotoCriteria;
import me.libme.apro.admin.photo.vo.PhotoRecord;
import me.libme.kernel._c._fn.Try;
import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.kernel._c.util.JStringUtils;
import me.libme.webboot.Copy;
import me.libme.webseed._b._core.attachment.service.AttachmentService;
import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
@ClosureException
public class PhotoService  {

	@Autowired
	private PhotoRepo photoRepo;

	@Autowired
	private PhotoDataAccess photoDataAccess;

	@Autowired
	private AttachmentService attachmentService;


    private Photo toPhoto(PhotoRecord photoRecord){
        Photo photo= Copy.simpleCopy(photoRecord,Photo.class);
    	return photo;
    }

	/**
	 * save
	 */
	public String savePhoto (PhotoRecord photoRecord) throws Exception{
		Photo photo=toPhoto(photoRecord);
		photoRepo.saveOnly( photo);
        return photo.getId();
	}
	
	/**
	 * update
	 */
	public void updatePhoto (PhotoRecord photoRecord) throws Exception{

		Photo dbPhoto=photoRepo.active(photoRecord.getId());

        dbPhoto.setImg(photoRecord.getImg());
        dbPhoto.setCompressImg(photoRecord.getCompressImg());
        dbPhoto.setDescription(photoRecord.getDescription());
        dbPhoto.setMatId(photoRecord.getMatId());
        photoRepo.updateOnly(dbPhoto);
	}

	
	/**
	 * delete
	 */
	public void deletePhotoById (String id) throws Exception{
		photoRepo.delete( id);
	}
	
	/**
	 * get
	 */
	public PhotoRecord getPhotoById (String id) throws Exception{
		PhotoRecord photoRecord= photoRepo.active(id,PhotoRecord.class);
		imgFile(photoRecord);
		return photoRecord;
	}

	private void imgFile(PhotoRecord photoRecord) throws Exception {
		if(JStringUtils.isNotNullOrEmpty(photoRecord.getImg())){
			photoRecord.setImgFile(attachmentService.getAttachment(photoRecord.getImg()));
		}

		if(JStringUtils.isNotNullOrEmpty(photoRecord.getCompressImg())){
			photoRecord.setCompressImgFile(attachmentService.getAttachment(photoRecord.getCompressImg()));
		}
	}


	/**
	 * page...
	 */
	public JPage<PhotoRecord> getPhotosByPage(PhotoCriteria photoCriteria, SimplePageRequest simplePageRequest) throws Exception{
		JPage<PhotoRecord> page= photoDataAccess.getPhotosByPage(photoCriteria,simplePageRequest);
		page.getContent().forEach(Try.apply(photoRecord -> imgFile(photoRecord)));
		return page;
	}

}
