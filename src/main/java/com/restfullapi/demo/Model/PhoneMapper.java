package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Phone;
import com.restfullapi.demo.Service.PhoneJPA;
import com.restfullapi.demo.Service.PhoneService;
import com.restfullapi.demo.Service.PhoneServiceImpl;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class PhoneMapper {

    public static PhoneDto convertPhone(Phone phone){
        ModelMapper modelMapper = new ModelMapper();
        PhoneDto phoneDto = modelMapper.map(phone, PhoneDto.class);
        return  phoneDto;
    }
    public static List<PhoneDto> convertListPhone(List<Phone> phoneList){
        List<PhoneDto> phoneDtoList = new ArrayList<>();
         for (int i=0 ; i <phoneList.size() ; i++){
             phoneDtoList.add(convertPhone(phoneList.get(i)));
         }
         return phoneDtoList;
    }
}
