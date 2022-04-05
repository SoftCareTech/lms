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
@Table(name = "Updates")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Updates.findAll", query = "SELECT u FROM Updates u")
    
    , @NamedQuery(name = "Updates.findById", query = "SELECT u FROM Updates u WHERE u.id = :id")   
    , @NamedQuery(name = "Updates.findByIda", query = "SELECT u FROM Updates u WHERE u.ida = :ida")
    , @NamedQuery(name = "Updates.findByTime", query = "SELECT u FROM Updates u WHERE u.time = :time")
    , @NamedQuery(name = "Updates.findByText", query = "SELECT u FROM Updates u WHERE u.text = :text")
 
})
public class Updates implements Serializable {

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
    @Size(max = 45)
    @Column(name = "time")
    private String time;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "text")
    private String text;

    public Updates() {
    }

    public Updates(String id, String ida, String time, String text) {
        this.id = id;
        this.ida = ida;
        this.time = time;
        this.text = text;
    }

    public Updates(String id) {
        this.id = id;
    }

    public Updates(String id, String text) {
        this.id = id;
        this.text = text;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
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
        if (!(object instanceof Updates)) {
            return false;
        }
        Updates other = (Updates) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.lmsClasses.Updates[ id=" + id + " ]";
    }
    
}
