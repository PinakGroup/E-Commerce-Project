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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Amer Salah
 */
@Entity
@Table(name = "coupon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Coupon.findAll", query = "SELECT c FROM Coupon c")
    , @NamedQuery(name = "Coupon.findByCode", query = "SELECT c FROM Coupon c WHERE c.code = :code")
    , @NamedQuery(name = "Coupon.findByDiscount", query = "SELECT c FROM Coupon c WHERE c.discount = :discount")
    , @NamedQuery(name = "Coupon.findByStartDate", query = "SELECT c FROM Coupon c WHERE c.startDate = :startDate")
    , @NamedQuery(name = "Coupon.findByEndDate", query = "SELECT c FROM Coupon c WHERE c.endDate = :endDate")
    , @NamedQuery(name = "Coupon.findByDeleted", query = "SELECT c FROM Coupon c WHERE c.deleted = :deleted")})
public class Coupon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "code")
    private String code;
    @Basic(optional = false)
    @NotNull
    @Column(name = "discount")
    private short discount;
    @Basic(optional = false)
    @NotNull
    @Column(name = "start_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date startDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "end_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;
    @Column(name = "deleted")
    private Boolean deleted;
    @OneToMany(mappedBy = "couponId")
    private Collection<OrderProducts> orderProductsCollection;
    @OneToMany(mappedBy = "couponId")
    private Collection<ShoppingCartProducts> shoppingCartProductsCollection;

    public Coupon() {
    }

    public Coupon(byte[] id) {
        this.id = id;
    }

    public Coupon(byte[] id, String code, short discount, Date startDate, Date endDate) {
        this.id = id;
        this.code = code;
        this.discount = discount;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public short getDiscount() {
        return discount;
    }

    public void setDiscount(short discount) {
        this.discount = discount;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    @XmlTransient
    public Collection<OrderProducts> getOrderProductsCollection() {
        return orderProductsCollection;
    }

    public void setOrderProductsCollection(Collection<OrderProducts> orderProductsCollection) {
        this.orderProductsCollection = orderProductsCollection;
    }

    @XmlTransient
    public Collection<ShoppingCartProducts> getShoppingCartProductsCollection() {
        return shoppingCartProductsCollection;
    }

    public void setShoppingCartProductsCollection(Collection<ShoppingCartProducts> shoppingCartProductsCollection) {
        this.shoppingCartProductsCollection = shoppingCartProductsCollection;
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
        if (!(object instanceof Coupon)) {
            return false;
        }
        Coupon other = (Coupon) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.Coupon[ id=" + id + " ]";
    }
    
}
