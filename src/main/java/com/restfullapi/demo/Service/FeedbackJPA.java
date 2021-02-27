package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FeedbackJPA extends JpaRepository<Feedback, Long> {
      @Query(value = "select avg(feedback_rate_id) from feedback where phoneid = ?1", nativeQuery = true)
      float getFeedbackPoint(int phoneId);
      List<Feedback> findAllByPhonePhoneID(int phoneId);
}
