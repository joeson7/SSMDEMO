package org.lanqiao.entity;

public class Students {
    private Integer id;

    private String sname;

    private String gender;

    private String birthday;

    private String telephone;

    private String email;
    
    private Classes classes;

    //private Integer classid;

    public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}
    
    public Integer getId() {
        return id;
    }

	public void setId(Integer id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday == null ? null : birthday.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

	public Students() {
		super();
	}

	@Override
	public String toString() {
		return "Students [id=" + id + ", sname=" + sname + ", gender=" + gender + ", birthday=" + birthday
				+ ", telephone=" + telephone + ", email=" + email + ", classes=" + classes + "]";
	}
    
}