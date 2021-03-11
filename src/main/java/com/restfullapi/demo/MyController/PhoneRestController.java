package com.restfullapi.demo.MyController;

import com.restfullapi.demo.Entity.Phone;
import com.restfullapi.demo.Model.PhoneDto;
import com.restfullapi.demo.Model.PhoneMapper;
import com.restfullapi.demo.Service.PhoneJPA;
import com.restfullapi.demo.Service.PhonePaging;
import com.restfullapi.demo.Service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.cassandra.CassandraProperties;
import org.springframework.data.domain.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Calendar;
import java.util.List;
import java.util.TimerTask;

@RestController
public class PhoneRestController {
    @Autowired
    PhoneService phoneService;
    @Autowired
    PhoneJPA phoneJPA;
    @Autowired
    PhonePaging phonePaging;

    //===================
    //InfoPhone
    @CrossOrigin(origins = "http://localhost:8081")
    @GetMapping("/phones")
    public List<PhoneDto> getListPhone(@RequestParam(name = "keyword", required = false, defaultValue = "") String keyword
            ) {

        List<PhoneDto> phoneList = PhoneMapper.convertListPhone(phoneJPA.findByPhoneNameContaining(keyword));
        return phoneList;
    }
    @GetMapping("/phones-by-brand")
    public List<PhoneDto> getListPhoneByBrand()
     {
         List<PhoneDto> phoneList = PhoneMapper.convertListPhone(phoneJPA.getEachByBrand());
//         Calendar calendar = Calendar.getInstance();
//         calendar.set(Calendar.HOUR_OF_DAY,0);
//         calendar.set(Calendar.MINUTE,0);
//         calendar.set(Calendar.MILLISECOND,0);
//         calendar.set(Calendar.SECOND,0);
        return phoneList;
    }

    @GetMapping("/phones/{id}")
    public ResponseEntity<PhoneDto> getPhoneById(@PathVariable("id") int id) {

        return ResponseEntity.ok(PhoneMapper.convertPhone(phoneJPA.findByPhoneID(id)));
    }
    @PostMapping("/phones")
    public boolean createPhone(@RequestBody Phone phone)
    {
        try {
            phoneService.savePhone(phone);
            return true;
        }catch (Exception e){
            return false;
        }

    }

    @PutMapping("/phones/{id}")
    public ResponseEntity<?> updatePhone() {
        return null;
    }

    @DeleteMapping("/phones/{id}")
    public ResponseEntity<?> deletePhone() {
        return null;
    }
//    @GetMapping("/test-api")
//    public ResponseEntity<Page<Phone>> show(HttpServletRequest request){
//        Pageable pageable = PageRequest.of(0,8);
//        return ResponseEntity.status(HttpStatus.OK).body(phonePaging.getPhoneByBrandId("","i" ,pageable));
//    }
}
