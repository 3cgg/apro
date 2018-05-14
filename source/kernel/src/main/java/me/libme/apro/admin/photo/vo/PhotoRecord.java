package me.libme.apro.admin.photo.vo;

import me.libme.apro.admin.photo.model.Photo;
import me.libme.webseed._b._core.attachment.vo.AttachmentRecordVO;

public class PhotoRecord extends Photo {

    private AttachmentRecordVO  imgFile;

    private AttachmentRecordVO  compressImgFile;

    public AttachmentRecordVO getImgFile() {
        return imgFile;
    }

    public void setImgFile(AttachmentRecordVO imgFile) {
        this.imgFile = imgFile;
    }

    public AttachmentRecordVO getCompressImgFile() {
        return compressImgFile;
    }

    public void setCompressImgFile(AttachmentRecordVO compressImgFile) {
        this.compressImgFile = compressImgFile;
    }

}
