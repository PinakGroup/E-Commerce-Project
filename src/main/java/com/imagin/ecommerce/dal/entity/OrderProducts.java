/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagin.ecommerce.dal.entity;

import java.io.Serializable;
import java.util.Collection;
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
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Amer Salah
 */
@Entity
@Table(name = "order_products")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrderProducts.findAll", query = "SELECT o FROM OrderProducts o")
    , @NamedQuery(name = "OrderProducts.findByQuantity", query = "SELECT o FROM OrderProducts o WHERE o.quantity = :quantity")
    , @NamedQuery(name = "OrderProducts.findByPriceBeforeDiscount", query = "SELECT o FROM OrderProducts o WHERE o.priceBeforeDiscount = :priceBeforeDiscount")
    , @NamedQuery(name = "OrderProducts.findByTotalDiscount", query = "SELECT o FROM OrderProducts o WHERE o.totalDiscount = :totalDiscount")
    , @NamedQuery(name = "OrderProducts.findByDeleted", query = "SELECT o FROM OrderProducts o WHERE o.deleted = :deleted")})
public class OrderProducts implements Serializable {

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
    @Column(name = "total_discount")
    private Short totalDiscount;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "coupon_id", referencedColumnName = "id")
    @ManyToOne
    private Coupon couponId;
    @JoinColumn(name = "deliver_status_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private DeliveryStatus deliverStatusId;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Product productId;
    @JoinColumn(name = "user_orders_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private UserOrders userOrdersId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private Collection<UserReviews> userReviewsCollection;

    public OrderProducts() {
    }

    public OrderProducts(byte[] id) {
        this.id = id;
    }

    public OrderProducts(byte[] id, int quantity, int priceBeforeDiscount) {
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

    public DeliveryStatus getDeliverStatusId() {
        return deliverStatusId;
    }

    public void setDeliverStatusId(DeliveryStatus deliverStatusId) {
        this.deliverStatusId = deliverStatusId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public UserOrders getUserOrdersId() {
        return userOrdersId;
    }

    public void setUserOrdersId(UserOrders userOrdersId) {
        this.userOrdersId = userOrdersId;
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
        if (!(object instanceof OrderProducts)) {
            return false;
        }
        OrderProducts other = (OrderProducts) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.OrderProducts[ id=" + id + " ]";
    }
    
}
