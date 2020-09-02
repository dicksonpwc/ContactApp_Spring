package pit4307x.services;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import pit4307x.models.Contact;

/**
 *
 * @author leslietsang
 */
public class ContactService implements Serializable {
    private final List<Contact> contacts;

    public ContactService() {
        contacts = new ArrayList();
    }
    
    public void addContact(Contact contact) {
        contacts.add(contact);
    }

    public List<Contact> getContacts() {
        return contacts;
    }
}
