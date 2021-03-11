package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Phone;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhonePaging extends PagingAndSortingRepository<Phone, Integer> {
    @Query(value = "select * from phone where so_luong>0 and brand_id like %?1%  ", nativeQuery = true)
    Page<Phone> getPhoneByBrandId(String brandId, Pageable pageable);

}