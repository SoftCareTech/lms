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
@Table(name = "Feed")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Feed.findAll", query = "SELECT f FROM Feed f")
    , @NamedQuery(name = "Feed.findById", query = "SELECT f FROM Feed f WHERE f.id = :id")
    , @NamedQuery(name = "Feed.findByIda", query = "SELECT f FROM Feed f WHERE f.ida = :ida")
    , @NamedQuery(name = "Feed.findByIdc", query = "SELECT f FROM Feed f WHERE f.idc = :idc")})
public class Feed implements Serializable {

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
    @Column(name = "methode")
    private String methode;
    @Size(max = 45)
    @Column(name = "idc")
    private String idc;

    public Feed() {
    }

    public Feed(String id, String ida, String methode, String idc) {
        this.id = id;
        this.ida = ida;
        this.methode = methode;
        this.idc = idc;
    }

    public Feed(String id) {
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

    public String getMethode() {
        return methode;
    }

    public void setMethode(String methode) {
        this.methode = methode;
    }

    public String getIdc() {
        return idc;
    }

    public void setIdc(String idc) {
        this.idc = idc;
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
        if (!(object instanceof Feed)) {
            return false;
        }
        Feed other = (Feed) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.lmsClasses.Feed[ id=" + id + " ]";
    }
    
}
