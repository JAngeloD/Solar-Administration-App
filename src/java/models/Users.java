package models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * Represents a user
 */
@Entity
@Table(name = "users")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Users.findAll", query = "SELECT u FROM Users u")
    , @NamedQuery(name = "Users.findByEmail", query = "SELECT u FROM Users u WHERE u.email = :email")
    , @NamedQuery(name = "Users.findByFirstName", query = "SELECT u FROM Users u WHERE u.firstName = :firstName")
    , @NamedQuery(name = "Users.findByLastName", query = "SELECT u FROM Users u WHERE u.lastName = :lastName")
    , @NamedQuery(name = "Users.findByPassword", query = "SELECT u FROM Users u WHERE u.password = :password")
    , @NamedQuery(name = "Users.findByActive", query = "SELECT u FROM Users u WHERE u.active = :active")})
public class Users implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "password")
    private String password;
    @Column(name = "active")
    private Boolean active;
    @OneToMany(mappedBy = "email", fetch = FetchType.EAGER)
    private List<FacilityLogs> facilityLogsList;
    @JoinColumn(name = "type_id", referencedColumnName = "type_id")
    @ManyToOne(fetch = FetchType.EAGER)
    private UserType typeId;

    public Users() {
    }

    /**
     * Creates a user with the specified email
     * @param email 
     */
    public Users(String email) {
        this.email = email;
    }
    
    /**
     * Gets the user's email
     * @return a string representing the user's email address
     */
    public String getEmail() {
        return email;
    }

    /**
     * Set's the user's email
     * @param email 
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Gets the user's first name
     * @return a string representing the user's first name
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Set's the user's first name
     * @param firstName The user's first name 
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
    * Gets the user's last name
    * @return a string representing the user's last name
    */
    public String getLastName() {
        return lastName;
    }

    /**
    * Set's the user's last name
    * @param lastName The user's last name 
    */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
    * Gets the user's password
    * @return a string representing the user's password
    */
    public String getPassword() {
        return password;
    }

    /**
    * Set's the user's password
    * @param password The user's password 
    */    
    public void setPassword(String password) {
        this.password = password;
    }

    /**
    * Gets the user's active status
    * @return a boolean value representing the user's active status
    */
    public Boolean getActive() {
        return active;
    }
    /**
    * Sets the user active status true if active false if inactive
    * @param active the user's status
    */
    public void setActive(Boolean active) {
        this.active = active;
    }

    @XmlTransient
    public List<FacilityLogs> getFacilityLogsList() {
        return facilityLogsList;
    }

    public void setFacilityLogsList(List<FacilityLogs> facilityLogsList) {
        this.facilityLogsList = facilityLogsList;
    }

    /**
    * Gets the user's type
    * @return a UserType object representing the user's type
    */
    public UserType getTypeId() {
        return typeId;
    }
    /**
     * Sets the user type
     * @param typeId A UserType object representing the user's type
     */
    public void setTypeId(UserType typeId) {
        this.typeId = typeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (email != null ? email.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.email == null && other.email != null) || (this.email != null && !this.email.equals(other.email))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Users[ email=" + email + " ]";
    }
    
}
