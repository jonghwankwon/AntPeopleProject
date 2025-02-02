package com.ezen.antpeople.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;

@Getter
@Entity
@Table(name="role")
//RoleDB - role_id, role
public class RoleEntity implements Serializable {
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    protected int role_id;
	
	@Column(name="role")
	private String role;
}
