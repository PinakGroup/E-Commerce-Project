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
@Table(name = "wishing_list_products")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "WishingListProducts.findAll", query = "SELECT w FROM WishingListProducts w")
    , @NamedQuery(name = "WishingListProducts.findByPriceBeforeDiscount", query = "SELECT w FROM WishingListProducts w WHERE w.priceBeforeDiscount = :priceBeforeDiscount")
    , @NamedQuery(name = "WishingListProducts.findByDiscount", query = "SELECT w FROM WishingListProducts w WHERE w.discount = :discount")
    , @NamedQuery(name = "WishingListProducts.findByDeleted", query = "SELECT w FROM WishingListProducts w WHERE w.deleted = :deleted")})
public class WishingListProducts implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "price_before_discount")
    private int priceBeforeDiscount;
    @Column(name = "discount")
    private Short discount;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Product productId;
    @JoinColumn(name = "wishing_list_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private WishingList wishingListId;

    public WishingListProducts() {
    }

    public WishingListProducts(byte[] id) {
        this.id = id;
    }

    public WishingListProducts(byte[] id, int priceBeforeDiscount) {
        this.id = id;
        this.priceBeforeDiscount = priceBeforeDiscount;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public int getPriceBeforeDiscount() {
        return priceBeforeDiscount;
    }

    public void setPriceBeforeDiscount(int priceBeforeDiscount) {
        this.priceBeforeDiscount = priceBeforeDiscount;
    }

    public Short getDiscount() {
        return discount;
    }

    public void setDiscount(Short discount) {
        this.discount = discount;
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

    public WishingList getWishingListId() {
        return wishingListId;
    }

    public void setWishingListId(WishingList wishingListId) {
        this.wishingListId = wishingListId;
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
        if (!(object instanceof WishingListProducts)) {
            return false;
        }
        WishingListProducts other = (WishingListProducts) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.WishingListProducts[ id=" + id + " ]";
    }
    
}
