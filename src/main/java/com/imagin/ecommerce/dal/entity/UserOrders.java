/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagin.ecommerce.dal.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Amer Salah
 */
@Entity
@Table(name = "user_orders")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserOrders.findAll", query = "SELECT u FROM UserOrders u")
    , @NamedQuery(name = "UserOrders.findByDatePurchased", query = "SELECT u FROM UserOrders u WHERE u.datePurchased = :datePurchased")
    , @NamedQuery(name = "UserOrders.findByDeleted", query = "SELECT u FROM UserOrders u WHERE u.deleted = :deleted")})
public class UserOrders implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date_purchased")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datePurchased;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userOrdersId")
    private Collection<OrderProducts> orderProductsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
    private Collection<UserReviews> userReviewsCollection;

    public UserOrders() {
    }

    public UserOrders(byte[] id) {
        this.id = id;
    }

    public UserOrders(byte[] id, Date datePurchased) {
        this.id = id;
        this.datePurchased = datePurchased;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public Date getDatePurchased() {
        return datePurchased;
    }

    public void setDatePurchased(Date datePurchased) {
        this.datePurchased = datePurchased;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    @XmlTransient
    public Collection<OrderProducts> getOrderProductsCollection() {
        return orderProductsCollection;
    }

    public void setOrderProductsCollection(Collection<OrderProducts> orderProductsCollection) {
        this.orderProductsCollection = orderProductsCollection;
    }

    @XmlTransient
    public Collection<UserReviews> getUserReviewsCollection() {
        return userReviewsCollection;
    }

    public void setUserReviewsCollection(Collection<UserReviews> userReviewsCollection) {
        this.userReviewsCollection = userReviewsCollection;
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
        if (!(object instanceof UserOrders)) {
            return false;
        }
        UserOrders other = (UserOrders) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.UserOrders[ id=" + id + " ]";
    }
    
}
