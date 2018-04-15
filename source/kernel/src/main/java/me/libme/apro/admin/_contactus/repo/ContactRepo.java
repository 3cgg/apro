package me.libme.apro.admin._contactus.repo;

import me.libme.apro.admin._contactus.model.Contact;

import me.libme.webboot.fn.jpa.ISingleEntityAccess;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactRepo extends ISingleEntityAccess<Contact,String> {

}
