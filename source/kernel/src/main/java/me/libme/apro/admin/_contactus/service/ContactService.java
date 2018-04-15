package me.libme.apro.admin._contactus.service;


import me.libme.kernel._c._m.JPage;
import me.libme.kernel._c._m.SimplePageRequest;
import me.libme.webboot.Copy;

import me.libme.webseed.web.ClosureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import me.libme.apro.admin._contactus.model.Contact;
import me.libme.apro.admin._contactus.vo.ContactRecord;
import me.libme.apro.admin._contactus.vo.ContactCriteria;

import me.libme.apro.admin._contactus.repo.ContactRepo;
import me.libme.apro.admin._contactus.repo.ContactDataAccess;


@Service
@Transactional
@ClosureException
public class ContactService  {

	@Autowired
	private ContactRepo contactRepo;

	@Autowired
	private ContactDataAccess contactDataAccess;


    private Contact toContact(ContactRecord contactRecord){
        Contact contact= Copy.simpleCopy(contactRecord,Contact.class);
    	return contact;
    }

	/**
	 * save
	 */
	public String saveContact (ContactRecord contactRecord) throws Exception{
		Contact contact=toContact(contactRecord);
		contact.setId(null);
		contactRepo.saveOnly( contact);
        return contact.getId();
	}
	
	/**
	 * update
	 */
	public void updateContact (ContactRecord contactRecord) throws Exception{

		Contact dbContact=contactRepo.active(contactRecord.getId());

        dbContact.setDetail(contactRecord.getDetail());
        contactRepo.updateOnly(dbContact);
	}

	
	/**
	 * delete
	 */
	public void deleteContactById (String id) throws Exception{
		contactRepo.delete( id);
	}
	
	/**
	 * get
	 */
	public ContactRecord getContactById (String id) throws Exception{
		return contactRepo.active(id,ContactRecord.class);
	}

	
	/**
	 * page...
	 */
	public JPage<ContactRecord> getContactsByPage(ContactCriteria contactCriteria, SimplePageRequest simplePageRequest) throws Exception{
		return contactDataAccess.getContactsByPage(contactCriteria,simplePageRequest);
	}

}
