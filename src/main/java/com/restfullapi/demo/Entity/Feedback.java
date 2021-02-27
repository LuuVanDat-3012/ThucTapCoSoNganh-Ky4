package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;
@Data
@Entity
@Table(name = "feedback")
public class Feedback {
    @Id
    @GeneratedValue
    private Long feedbackId;
    private String feedbackContent;
    @Temporal(TemporalType.DATE)
    private Date feedbackDate;




    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "feedbackRateId")
    private FeedbackRate feedbackRate;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "phoneID")
    private Phone phone;


    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "userId")
    private User user;

    @OneToMany(mappedBy = "feedbackResultId")
    @JsonIgnore
    Collection<FeedbackResult> feedbackResult;
    private String updateBy;
    private Date updatedDate;
    private Boolean status;
}
