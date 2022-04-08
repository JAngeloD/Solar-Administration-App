package models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * Represents the type of user
 */
@Entity
@Table(name = "user_type")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserType.findAll", query = "SELECT u FROM UserType u")
    , @NamedQuery(name = "UserType.findByTypeId", query = "SELECT u FROM UserType u WHERE u.typeId = :typeId")
    , @NamedQuery(name = "UserType.findByAccessLevel", query = "SELECT u FROM UserType u WHERE u.accessLevel = :accessLevel")
    , @NamedQuery(name = "UserType.findByTypeName", query = "SELECT u FROM UserType u WHERE u.typeName = :typeName")})
public class UserType implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "type_id")
    private Integer typeId;
    @Column(name = "access_level")
    private Integer accessLevel;
    @Column(name = "type_name")
    private String typeName;
    @OneToMany(mappedBy = "typeId", fetch = FetchType.EAGER)
    private List<Users> usersList;

    public UserType() {
    }

    /**
     * Creates a UserType with the specified typeId
     * @param typeId An integer representing the typeId
     */
    public UserType(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * Gets the typeId for the UserType
     * @return an Integer representing the user type id
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * Sets the user type id
     * @param typeId an integer representing the user type id
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * Gets the user's access lever
     * @return an integer representing the user's access level
     */
    public Integer getAccessLevel() {
        return accessLevel;
    }
    /**
     * Sets the user access level
     * @param accessLevel  An integer representing the user's access level
     */
    public void setAccessLevel(Integer accessLevel) {
        this.accessLevel = accessLevel;
    }

    /**
     * Sets the user type name
     * @return A string representing the user type's name
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * Gets the user type's name
     * @param typeName  A string representing the user type's name
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    /**
     * Gets a list of all users
     * @return A List collection of all users
     */
    @XmlTransient
    public List<Users> getUsersList() {
        return usersList;
    }

    /**
     * Sets a list of all users
     * @param usersList a List collection of type Users where the list of all users will be stored
     */
    public void setUsersList(List<Users> usersList) {
        this.usersList = usersList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (typeId != null ? typeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserType)) {
            return false;
        }
        UserType other = (UserType) object;
        if ((this.typeId == null && other.typeId != null) || (this.typeId != null && !this.typeId.equals(other.typeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.UserType[ typeId=" + typeId + " ]";
    }
    
}
