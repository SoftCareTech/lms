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
@Table(name = "Disease")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Disease.findAll", query = "SELECT d FROM Disease d")
    , @NamedQuery(name = "Disease.findById", query = "SELECT d FROM Disease d WHERE d.id = :id")
    , @NamedQuery(name = "Disease.findByIda", query = "SELECT d FROM Disease d WHERE d.ida = :ida")
    , @NamedQuery(name = "Disease.findByDisease", query = "SELECT d FROM Disease d WHERE d.disease = :disease")
    , @NamedQuery(name = "Disease.findByIdc", query = "SELECT d FROM Disease d WHERE d.idc = :idc")})
public class Disease implements Serializable {

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
    @Size(max = 100)
    @Column(name = "disease")
    private String disease;
    @Lob
    @Size(max = 65535)
    @Column(name = "syntoms")
    private String syntoms;
    @Lob
    @Size(max = 65535)
    @Column(name = "cure")
    private String cure;
    @Size(max = 45)
    @Column(name = "idc")
    private String idc;
    @Lob
    @Size(max = 65535)
    @Column(name = "prevention")
    private String prevention;

    public Disease() {
    }

    public Disease(String id, String ida, String disease, String syntoms, String cure, String idc, String prevention) {
        this.id = id;
        this.ida = ida;
        this.disease = disease;
        this.syntoms = syntoms;
        this.cure = cure;
        this.idc = idc;
        this.prevention = prevention;
    }

    public Disease(String id) {
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

    public String getDisease() {
        return disease;
    }

    public void setDisease(String disease) {
        this.disease = disease;
    }

    public String getSyntoms() {
        return syntoms;
    }

    public void setSyntoms(String syntoms) {
        this.syntoms = syntoms;
    }

    public String getCure() {
        return cure;
    }

    public void setCure(String cure) {
        this.cure = cure;
    }

    public String getIdc() {
        return idc;
    }

    public void setIdc(String idc) {
        this.idc = idc;
    }

    public String getPrevention() {
        return prevention;
    }

    public void setPrevention(String prevention) {
        this.prevention = prevention;
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
        if (!(object instanceof Disease)) {
            return false;
        }
        Disease other = (Disease) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.lmsClasses.Disease[ id=" + id + " ]";
    }
    
}
