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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Amer Salah
 */
@Entity
@Table(name = "product")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p")
    , @NamedQuery(name = "Product.findByDescription", query = "SELECT p FROM Product p WHERE p.description = :description")
    , @NamedQuery(name = "Product.findByDetailedDescription", query = "SELECT p FROM Product p WHERE p.detailedDescription = :detailedDescription")
    , @NamedQuery(name = "Product.findByPrice", query = "SELECT p FROM Product p WHERE p.price = :price")
    , @NamedQuery(name = "Product.findByQuantity", query = "SELECT p FROM Product p WHERE p.quantity = :quantity")
    , @NamedQuery(name = "Product.findByBuyingCount", query = "SELECT p FROM Product p WHERE p.buyingCount = :buyingCount")
    , @NamedQuery(name = "Product.findByMainPhotoUrl", query = "SELECT p FROM Product p WHERE p.mainPhotoUrl = :mainPhotoUrl")
    , @NamedQuery(name = "Product.findByDiscount", query = "SELECT p FROM Product p WHERE p.discount = :discount")
    , @NamedQuery(name = "Product.findByShortLinedDescription", query = "SELECT p FROM Product p WHERE p.shortLinedDescription = :shortLinedDescription")
    , @NamedQuery(name = "Product.findByDeleted", query = "SELECT p FROM Product p WHERE p.deleted = :deleted")})
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "id")
    private byte[] id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "detailed_description")
    private String detailedDescription;
    @Basic(optional = false)
    @NotNull
    @Column(name = "price")
    private int price;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private int quantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "buying_count")
    private int buyingCount;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "main_photo_url")
    private String mainPhotoUrl;
    @Column(name = "discount")
    private Short discount;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "short_lined_description")
    private String shortLinedDescription;
    @Column(name = "deleted")
    private Boolean deleted;
    @JoinColumn(name = "brand_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Brand brandId;
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Category categoryId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private Collection<WishingListProducts> wishingListProductsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private Collection<OrderProducts> orderProductsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private Collection<UserVisitProducts> userVisitProductsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private Collection<ProductMedia> productMediaCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private Collection<ShoppingCartProducts> shoppingCartProductsCollection;

    public Product() {
    }

    public Product(byte[] id) {
        this.id = id;
    }

    public Product(byte[] id, String description, String detailedDescription, int price, int quantity, int buyingCount, String mainPhotoUrl, String shortLinedDescription) {
        this.id = id;
        this.description = description;
        this.detailedDescription = detailedDescription;
        this.price = price;
        this.quantity = quantity;
        this.buyingCount = buyingCount;
        this.mainPhotoUrl = mainPhotoUrl;
        this.shortLinedDescription = shortLinedDescription;
    }

    public byte[] getId() {
        return id;
    }

    public void setId(byte[] id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetailedDescription() {
        return detailedDescription;
    }

    public void setDetailedDescription(String detailedDescription) {
        this.detailedDescription = detailedDescription;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getBuyingCount() {
        return buyingCount;
    }

    public void setBuyingCount(int buyingCount) {
        this.buyingCount = buyingCount;
    }

    public String getMainPhotoUrl() {
        return mainPhotoUrl;
    }

    public void setMainPhotoUrl(String mainPhotoUrl) {
        this.mainPhotoUrl = mainPhotoUrl;
    }

    public Short getDiscount() {
        return discount;
    }

    public void setDiscount(Short discount) {
        this.discount = discount;
    }

    public String getShortLinedDescription() {
        return shortLinedDescription;
    }

    public void setShortLinedDescription(String shortLinedDescription) {
        this.shortLinedDescription = shortLinedDescription;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public Brand getBrandId() {
        return brandId;
    }

    public void setBrandId(Brand brandId) {
        this.brandId = brandId;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    @XmlTransient
    public Collection<WishingListProducts> getWishingListProductsCollection() {
        return wishingListProductsCollection;
    }

    public void setWishingListProductsCollection(Collection<WishingListProducts> wishingListProductsCollection) {
        this.wishingListProductsCollection = wishingListProductsCollection;
    }

    @XmlTransient
    public Collection<OrderProducts> getOrderProductsCollection() {
        return orderProductsCollection;
    }

    public void setOrderProductsCollection(Collection<OrderProducts> orderProductsCollection) {
        this.orderProductsCollection = orderProductsCollection;
    }

    @XmlTransient
    public Collection<UserVisitProducts> getUserVisitProductsCollection() {
        return userVisitProductsCollection;
    }

    public void setUserVisitProductsCollection(Collection<UserVisitProducts> userVisitProductsCollection) {
        this.userVisitProductsCollection = userVisitProductsCollection;
    }

    @XmlTransient
    public Collection<ProductMedia> getProductMediaCollection() {
        return productMediaCollection;
    }

    public void setProductMediaCollection(Collection<ProductMedia> productMediaCollection) {
        this.productMediaCollection = productMediaCollection;
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
        if (!(object instanceof Product)) {
            return false;
        }
        Product other = (Product) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.Product[ id=" + id + " ]";
    }
    
}
