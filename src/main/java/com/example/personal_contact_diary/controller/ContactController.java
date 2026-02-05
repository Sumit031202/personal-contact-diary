package com.example.personal_contact_diary.controller;

import com.example.personal_contact_diary.model.Contact;
import com.example.personal_contact_diary.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ContactController {
    @Autowired
    private ContactRepository contactRepository;

    @PostMapping("/addContact")
    public void addContact(@RequestBody Contact contact){
        contactRepository.save(contact);
    }

    @GetMapping("/getAll")
    public List<Contact> getAllContacts(){
        return contactRepository.findAll();
    }

    @DeleteMapping("/delete/{id}")
    public void deleteContact(@PathVariable Long id) {
        contactRepository.deleteById(id);
    }
}
