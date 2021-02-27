package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Phone;
import com.restfullapi.demo.Model.PhoneDto;
import com.restfullapi.demo.Model.PhoneMapper;
import lombok.extern.java.Log;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface PhoneService {


    Phone getPhoneById(int id);
    void savePhone(Phone phone);

    Page<Phone> getAllByName(String name, Pageable pageable);
    Page<Phone> pagination(Pageable pageable);
    List<Phone> getPhoneByName(String name);

}
