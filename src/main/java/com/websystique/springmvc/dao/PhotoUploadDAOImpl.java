package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Photo_Upload;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by ali on 2/11/17.
 */

@Repository
public class PhotoUploadDAOImpl implements PhotoUploadDAO {
    @Autowired

    private SessionFactory sessionFactory;

    public PhotoUploadDAOImpl() {

    }

    public PhotoUploadDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void save(Photo_Upload photo_upload) {
        sessionFactory.getCurrentSession().save(photo_upload);
    }
}
