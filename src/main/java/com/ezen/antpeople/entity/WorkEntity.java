package com.ezen.antpeople.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.ezen.antpeople.dto.user.UserDTO;

import lombok.Getter;

@Entity
@Table(name="work")
@AttributeOverride(name = "id", column = @Column(name = "user_id"))
@AttributeOverride(name = "createdAt", column = @Column(name = "workin_time"))
@AttributeOverride(name = "updatedAt", column = @Column(name = "workout_time"))
@Getter
public class WorkEntity extends BaseEntity implements Serializable {
	
	@Id
	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity user;
	
	
	public UserDTO buildDTO( ) {
		return new UserDTO();
	}
	
	public void buildEntity(UserDTO user) {
		
	}
	
	
}
