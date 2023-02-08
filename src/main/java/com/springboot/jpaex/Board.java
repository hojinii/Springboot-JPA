package com.springboot.jpaex;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="board")
public class Board {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long seq;
	@Column(length=100)
	private String title;
	@Column(length=100)
	private String writer;
	@Column(length=200)
	private String content;
	
	
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	//생성자 (인자를 포함하는)
	public Board(long seq, String title, String writer, String content) {
		super();
		this.seq = seq;
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	//디폴트 생성자
	public Board() {
		
	}
		

}