package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Phone;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface PhoneJPA extends PagingAndSortingRepository<Phone, Integer> {

    List<Phone> findAllByPhoneID(int id);
    List<Phone> findAllByPhoneName(String name);
    Phone findByPhoneID(int id);

     Phone findByPhoneName(String name);



    @Modifying
    @Query(value = "select * from Phone order by gia_tien and status = 'true'", nativeQuery = true)
    List<Phone> sortByPriceLow();

    @Modifying
    @Query(value = "select * from Phone where status = 'true' order by  gia_tien DESC", nativeQuery = true)
    List<Phone> sortByPriceHigh();



    @Modifying
    @Query(value = "select top 8 * from Phone where brand_Id = (select brand_Id from Phone where phone_Name = ?1) and " +
            "phone_Name <> ?1 and so_luong>0 and status = 'true' order by newid()", nativeQuery = true)
    List<Phone> findPhoneSameBrand(String phoneName);



    @Query(value = "select phoneid from Phone where phone_name =  ?1 and status = 'true' ", nativeQuery = true)
    int getIdByName(String name);

    @Query(value = "select count(phoneid) from phone", nativeQuery = true)
    int countRecord();

    @Query(value = "select  top 15 * from Phone p where phone_name lIKE %?1% and status = 'true' ", nativeQuery = true)
   List<Phone> findByPhoneNameContaining(String name);

    @Query(value = "select top 15 * from Phone and status = 'true' ORDER BY NEWID()", nativeQuery = true)
    List<Phone> getPhoneRanDom();
//    @Query(value = "select top 15 * from Phone where brand_id Like 'RM' ORDER BY NEWID()", nativeQuery = true)
//    List<Phone> getPhoneRM();
//    @Query(value = "select top 15 * from Phone where brand_id Like 'OP' ORDER BY NEWID()", nativeQuery = true)
//    List<Phone> getPhoneOP();

    @Query(value = "select top 10 * from phone where brand_id='SS' and status = 'true' \n" +
            "union\n" +
            "select top 10 * from phone where brand_id='RM' and status = 'true'  \n" +
            "union\n" +
            "select top 10 * from phone where brand_id='OP' and status = 'true'  "
            +
            "union\n" +
            "select top 5 * from phone where brand_id='IOS' and status = 'true'  ", nativeQuery = true)
    List<Phone> getEachByBrand();

    @Query(value = "select top 11 phone_name from phone  where so_luong >0", nativeQuery = true)
    List<String> getPhoneName();








}
