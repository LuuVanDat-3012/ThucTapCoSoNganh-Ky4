package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Phone;
import com.restfullapi.demo.Model.PhoneDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@Service
public class PhoneServiceImpl implements PhoneService{
    @Autowired(required = true)
    PhoneJPA phoneJPA;


    @Override
    public Phone getPhoneById(int id) {
        return null;
    }

    @Override
    public void savePhone(Phone phone) {
        phoneJPA.save(phone);
    }


    @Override
    public Page<Phone> getAllByName(String name, Pageable pageable) {

        return null;
    }



    @Override
    public Page<Phone> pagination(Pageable pageable) {
        return  phoneJPA.findAll(pageable);
    }

    @Override
    public List<Phone> getPhoneByName(String name) {
        return  phoneJPA.findAllByPhoneName(name);
    }


}
