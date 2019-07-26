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
@Table(name = "shopping_cart_products")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ShoppingCartProducts.findAll", query = "SELECT s FROM ShoppingCartProducts s")
    , @NamedQuery(name = "ShoppingCartProducts.findByQuantity", query = "SELECT s FROM ShoppingCartProducts s WHERE s.quantity = :quantity")
    , @NamedQuery(name = "ShoppingCartProducts.findByPriceBeforeDiscount", query = "SELECT s FROM ShoppingCartProducts s WHERE s.priceBeforeDiscount = :priceBeforeDiscount")
    , @NamedQuery(name = "ShoppingCartProducts.findByProductDiscount", query = "SELECT s FROM ShoppingCartProducts s WHERE s.productDiscount = :productDiscount")
    , @NamedQuery(name = "ShoppingCartProducts.findByCouponDiscount", query = "SELECT s FROM ShoppingCartProducts s WHERE s.couponDiscount = :couponDiscount")
    , @NamedQuery(name = "ShoppingCartProducts.findByTotalDiscount", query = "SELECT s FROM ShoppingCartProducts s WHERE s.totalDiscount = :totalDiscount")
    , @NamedQuery(name = "ShoppingCartProducts.findByDeleted", query = "SELECT s FROM ShoppingCartProducts s WHERE s.deleted = :deleted")})
public class ShoppingCartProducts implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private int quantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "price_before_discount")
    private int priceBeforeDiscount;
    @Column(name = "product_discount")
    private Short productDiscount;
    @Column(name = "coupon_discount")
    private Short couponDiscount;
    @Column(name = "total_discount")
    private Short totalDiscount;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "coupon_id", referencedColumnName = "id")
    @ManyToOne
    private Coupon couponId;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Product productId;
    @JoinColumn(name = "shopping_cart_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private ShoppingCart shoppingCartId;

    public ShoppingCartProducts() {
    }

    public ShoppingCartProducts(byte[] id) {
        this.id = id;
    }

    public ShoppingCartProducts(byte[] id, int quantity, int priceBeforeDiscount) {
        this.id = id;
        this.quantity = quantity;
        this.priceBeforeDiscount = priceBeforeDiscount;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPriceBeforeDiscount() {
        return priceBeforeDiscount;
    }

    public void setPriceBeforeDiscount(int priceBeforeDiscount) {
        this.priceBeforeDiscount = priceBeforeDiscount;
    }

    public Short getProductDiscount() {
        return productDiscount;
    }

    public void setProductDiscount(Short productDiscount) {
        this.productDiscount = productDiscount;
    }

    public Short getCouponDiscount() {
        return couponDiscount;
    }

    public void setCouponDiscount(Short couponDiscount) {
        this.couponDiscount = couponDiscount;
    }

    public Short getTotalDiscount() {
        return totalDiscount;
    }

    public void setTotalDiscount(Short totalDiscount) {
        this.totalDiscount = totalDiscount;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public Coupon getCouponId() {
        return couponId;
    }

    public void setCouponId(Coupon couponId) {
        this.couponId = couponId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public ShoppingCart getShoppingCartId() {
        return shoppingCartId;
    }

    public void setShoppingCartId(ShoppingCart shoppingCartId) {
        this.shoppingCartId = shoppingCartId;
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
        if (!(object instanceof ShoppingCartProducts)) {
            return false;
        }
        ShoppingCartProducts other = (ShoppingCartProducts) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.ShoppingCartProducts[ id=" + id + " ]";
    }
    
}
