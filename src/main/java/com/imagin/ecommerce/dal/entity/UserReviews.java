/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagin.ecommerce.dal.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Amer Salah
 */
@Entity
@Table(name = "user_reviews")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserReviews.findAll", query = "SELECT u FROM UserReviews u")
    , @NamedQuery(name = "UserReviews.findByRating", query = "SELECT u FROM UserReviews u WHERE u.rating = :rating")
    , @NamedQuery(name = "UserReviews.findByReviewDetails", query = "SELECT u FROM UserReviews u WHERE u.reviewDetails = :reviewDetails")
    , @NamedQuery(name = "UserReviews.findByDeleted", query = "SELECT u FROM UserReviews u WHERE u.deleted = :deleted")})
public class UserReviews implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "rating")
    private short rating;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 400)
    @Column(name = "review_details")
    private String reviewDetails;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "product_id", referencedColumnName = "product_id")
    @ManyToOne(optional = false)
    private OrderProducts productId;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne(optional = false)
    private UserOrders userId;

    public UserReviews() {
    }

    public UserReviews(byte[] id) {
        this.id = id;
    }

    public UserReviews(byte[] id, short rating, String reviewDetails) {
        this.id = id;
        this.rating = rating;
        this.reviewDetails = reviewDetails;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public short getRating() {
        return rating;
    }

    public void setRating(short rating) {
        this.rating = rating;
    }

    public String getReviewDetails() {
        return reviewDetails;
    }

    public void setReviewDetails(String reviewDetails) {
        this.reviewDetails = reviewDetails;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public OrderProducts getProductId() {
        return productId;
    }

    public void setProductId(OrderProducts productId) {
        this.productId = productId;
    }

    public UserOrders getUserId() {
        return userId;
    }

    public void setUserId(UserOrders userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserReviews)) {
            return false;
        }
        UserReviews other = (UserReviews) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.UserReviews[ id=" + id + " ]";
    }
    
}
