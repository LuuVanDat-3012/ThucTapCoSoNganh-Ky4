package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Collection;

@Data
@Entity
@Table(name = "feedback_rate")
public class FeedbackRate {
    @Id
    @GeneratedValue
    private Long feedbackRateId;
    private int feedbackPoint;
    private String feedbackDescription;
    @OneToMany(mappedBy = "feedbackRate", fetch = FetchType.LAZY)
    @JsonIgnore
    Collection<Feedback> feedbacks;
}
