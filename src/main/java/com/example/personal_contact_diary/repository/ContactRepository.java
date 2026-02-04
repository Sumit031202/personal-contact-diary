package com.example.personal_contact_diary.repository;

import com.example.personal_contact_diary.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactRepository extends JpaRepository<Contact,Long> {

}
