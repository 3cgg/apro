package me.libme.apro.admin._mat.mat.vo;

import me.libme.apro.admin._mat.mat.model.Mat;
import me.libme.webseed._b._core.attachment.vo.AttachmentRecordVO;

public class MatRecord extends Mat {


    private AttachmentRecordVO imgFile;

    public AttachmentRecordVO getImgFile() {
        return imgFile;
    }

    public void setImgFile(AttachmentRecordVO imgFile) {
        this.imgFile = imgFile;
    }
}
