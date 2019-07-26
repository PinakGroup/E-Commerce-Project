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
import javax.persistence.Lob;
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
@Table(name = "delivery_status")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DeliveryStatus.findAll", query = "SELECT d FROM DeliveryStatus d")
    , @NamedQuery(name = "DeliveryStatus.findByDescription", query = "SELECT d FROM DeliveryStatus d WHERE d.description = :description")
    , @NamedQuery(name = "DeliveryStatus.findByDeleted", query = "SELECT d FROM DeliveryStatus d WHERE d.deleted = :deleted")})
public class DeliveryStatus implements Serializable {

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
    @Column(name = "description")
    private String description;
    @Column(name = "deleted")
    private Boolean deleted;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "deliverStatusId")
    private Collection<OrderProducts> orderProductsCollection;

    public DeliveryStatus() {
    }

    public DeliveryStatus(byte[] id) {
        this.id = id;
    }

    public DeliveryStatus(byte[] id, String description) {
        this.id = id;
        this.description = description;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DeliveryStatus)) {
            return false;
        }
        DeliveryStatus other = (DeliveryStatus) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.amer.mavenproject1.DeliveryStatus[ id=" + id + " ]";
    }
    
}
