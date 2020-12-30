package com.jmao.blog.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class UploadFile {
	
	@Id @GeneratedValue
	private int id;
	
	@Column
	private String fileName;                //예류.jpg
	
	@Column
	private String saveFileName;            //uuid예류.jpg
	
	@Column
	private String filePath;                // D:/image/uuid예류.jpg
	
	@Column
	private String contentType;             // image/jpeg
	
	private long size;                      // 4476873 (byte)
	
	private LocalDateTime registerDate;     // 2020-02-07 12:27:37.857
}

