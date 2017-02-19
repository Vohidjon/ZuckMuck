package com.websystique.springmvc.model;

import javax.persistence.*;

/**
 * Created by ali on 2/11/17.
 */


@Entity
@Table(name = "PHOTOS_UPLOAD")
public class Photo_Upload {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "PHOTO_ID")
    public long getId() {

        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name = "PHOTO_NAME", nullable = false)
    private String photoName;
    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    @Column(name = "PHOTO_DATA")
    private byte[] photo_Data;
    public byte[] getPhoto_Data() {
        return photo_Data;
    }

    public void setData(byte[] photo_Data) {
        this.photo_Data = photo_Data;
    }

}
