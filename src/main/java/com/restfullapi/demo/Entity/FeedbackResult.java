package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
public class FeedbackResult {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long feedbackResultId;
    private String feedbackResultContent;
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "feedbackId")
    Feedback feedback;
    @Temporal(TemporalType.DATE)
    private Date feedbackResultDate;
    private String updateBy;
    private Date updatedDate;
    private Boolean status;

}
