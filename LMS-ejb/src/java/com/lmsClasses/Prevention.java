/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lmsClasses;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author GBENGE AONDOAKULA
 */
@Entity
@Table(name = "Prevention")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Prevention.findAll", query = "SELECT p FROM Prevention p")
    , @NamedQuery(name = "Prevention.findById", query = "SELECT p FROM Prevention p WHERE p.id = :id")
    , @NamedQuery(name = "Prevention.findByIda", query = "SELECT p FROM Prevention p WHERE p.ida = :ida")
    , @NamedQuery(name = "Prevention.findByIdc", query = "SELECT p FROM Prevention p WHERE p.idc = :idc")
    , @NamedQuery(name = "Prevention.findByDiseas", query = "SELECT p FROM Prevention p WHERE p.diseas = :diseas")})
public class Prevention implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "id")
    private String id;
    @Size(max = 45)
    @Column(name = "ida")
    private String ida;
    @Lob
    @Size(max = 65535)
    @Column(name = "prevention")
    private String prevention;
    @Size(max = 45)
    @Column(name = "idc")
    private String idc;
    @Size(max = 100)
    @Column(name = "diseas")
    private String diseas;

    public Prevention() {
    }

    public Prevention(String id, String ida, String prevention, String idc, String diseas) {
        this.id = id;
        this.ida = ida;
        this.prevention = prevention;
        this.idc = idc;
        this.diseas = diseas;
    }

    public Prevention(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIda() {
        return ida;
    }

    public void setIda(String ida) {
        this.ida = ida;
    }

    public String getPrevention() {
        return prevention;
    }

    public void setPrevention(String prevention) {
        this.prevention = prevention;
    }

    public String getIdc() {
        return idc;
    }

    public void setIdc(String idc) {
        this.idc = idc;
    }

    public String getDiseas() {
        return diseas;
    }

    public void setDiseas(String diseas) {
        this.diseas = diseas;
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
        if (!(object instanceof Prevention)) {
            return false;
        }
        Prevention other = (Prevention) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.lmsClasses.Prevention[ id=" + id + " ]";
    }
    
}
