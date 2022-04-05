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
@Table(name = "Animals")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Animals.findAll", query = "SELECT a FROM Animals a")
    , @NamedQuery(name = "Animals.findById", query = "SELECT a FROM Animals a WHERE a.id = :id")
    , @NamedQuery(name = "Animals.findByName", query = "SELECT a FROM Animals a WHERE a.name = :name")
    , @NamedQuery(name = "Animals.findByOthers", query = "SELECT a FROM Animals a WHERE a.others = :others")})
public class Animals implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "id")
    private String id;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @Size(max = 45)
    @Column(name = "others")
    private String others;

    public Animals() {
    }

    public Animals(String id, String name, String others) {
        this.id = id;
        this.name = name;
        this.others = others;
    }

    public Animals(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
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
        if (!(object instanceof Animals)) {
            return false;
        }
        Animals other = (Animals) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.lmsClasses.Animals[ id=" + id + " ]";
    }
    
}
