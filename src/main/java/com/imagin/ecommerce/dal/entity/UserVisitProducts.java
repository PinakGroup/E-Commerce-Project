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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Amer Salah
 */
@Entity
@Table(name = "user_visit_products")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserVisitProducts.findAll", query = "SELECT u FROM UserVisitProducts u")
    , @NamedQuery(name = "UserVisitProducts.findByVisitCount", query = "SELECT u FROM UserVisitProducts u WHERE u.visitCount = :visitCount")
    , @NamedQuery(name = "UserVisitProducts.findByDeleted", query = "SELECT u FROM UserVisitProducts u WHERE u.deleted = :deleted")})
public class UserVisitProducts implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "visit_count")
    private int visitCount;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Product productId;
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userId;

    public UserVisitProducts() {
    }

    public UserVisitProducts(byte[] id) {
        this.id = id;
    }

    public UserVisitProducts(byte[] id, int visitCount) {
        this.id = id;
        this.visitCount = visitCount;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public int getVisitCount() {
        return visitCount;
    }

    public void setVisitCount(int visitCount) {
        this.visitCount = visitCount;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
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
        if (!(object instanceof UserVisitProducts)) {
            return false;
        }
        UserVisitProducts other = (UserVisitProducts) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.UserVisitProducts[ id=" + id + " ]";
    }
    
}
