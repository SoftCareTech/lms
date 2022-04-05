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
@Table(name = "Housing")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Housing.findAll", query = "SELECT h FROM Housing h")
    , @NamedQuery(name = "Housing.findById", query = "SELECT h FROM Housing h WHERE h.id = :id")
    , @NamedQuery(name = "Housing.findByIda", query = "SELECT h FROM Housing h WHERE h.ida = :ida")
    , @NamedQuery(name = "Housing.findByIdc", query = "SELECT h FROM Housing h WHERE h.idc = :idc")})
public class Housing implements Serializable {

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
    @Column(name = "method")
    private String method;
    @Size(max = 45)
    @Column(name = "idc")
    private String idc;

    public Housing() {
    }

    public Housing(String id, String ida, String method, String idc) {
        this.id = id;
        this.ida = ida;
        this.method = method;
        this.idc = idc;
    }

    public Housing(String id) {
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

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
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
        if (!(object instanceof Housing)) {
            return false;
        }
        Housing other = (Housing) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.lmsClasses.Housing[ id=" + id + " ]";
    }
    
}
