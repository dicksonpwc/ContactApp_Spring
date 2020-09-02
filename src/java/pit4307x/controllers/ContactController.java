package pit4307x.controllers;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import pit4307x.models.Contact;
import pit4307x.services.ContactService;

/**
 *
 * @author leslietsang
 */
@Controller
@RequestMapping("/")
@SessionAttributes("contactservice")
public class ContactController {   
    private ContactService contactService;
    
    @RequestMapping("/addContact")
    public String addContact(Model box) {
        Contact contact = new Contact();
        box.addAttribute("contact", contact);
        return "addContactForm";
    }

    @RequestMapping("/addContactSubmit")
    public String addContactSubmit(@Valid Contact contact, BindingResult result, Model box) {
        if (result.hasErrors()) {
            return "addContactForm";
        } else {
            if (contactService == null) {
                contactService = new ContactService();
            }
            contactService.addContact(contact);
            box.addAttribute("contactservice", contactService);
            return "addContactSuccess";
        }
    }
    
    @RequestMapping("/listContacts")
    public String listContacts() {
        return "listContacts";
    }

}
