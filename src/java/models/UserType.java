/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author 821320
 */
@Entity
@Table(name = "user_type")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserType.findAll", query = "SELECT u FROM UserType u")
    , @NamedQuery(name = "UserType.findByTypeOfUser", query = "SELECT u FROM UserType u WHERE u.typeOfUser = :typeOfUser")
    , @NamedQuery(name = "UserType.findByAccessLevel", query = "SELECT u FROM UserType u WHERE u.accessLevel = :accessLevel")
    , @NamedQuery(name = "UserType.findByTypeName", query = "SELECT u FROM UserType u WHERE u.typeName = :typeName")})
public class UserType implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "type_of_user")
    private Integer typeOfUser;
    @Column(name = "access_level")
    private Integer accessLevel;
    @Column(name = "type_name")
    private String typeName;
    @OneToMany(mappedBy = "typeOfUser")
    private List<UserDetails> userDetailsList;

    public UserType() {
    }

    public UserType(Integer typeOfUser) {
        this.typeOfUser = typeOfUser;
    }

    public Integer getTypeOfUser() {
        return typeOfUser;
    }

    public void setTypeOfUser(Integer typeOfUser) {
        this.typeOfUser = typeOfUser;
    }

    public Integer getAccessLevel() {
        return accessLevel;
    }

    public void setAccessLevel(Integer accessLevel) {
        this.accessLevel = accessLevel;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @XmlTransient
    public List<UserDetails> getUserDetailsList() {
        return userDetailsList;
    }

    public void setUserDetailsList(List<UserDetails> userDetailsList) {
        this.userDetailsList = userDetailsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (typeOfUser != null ? typeOfUser.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserType)) {
            return false;
        }
        UserType other = (UserType) object;
        if ((this.typeOfUser == null && other.typeOfUser != null) || (this.typeOfUser != null && !this.typeOfUser.equals(other.typeOfUser))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.UserType[ typeOfUser=" + typeOfUser + " ]";
    }
    
}
