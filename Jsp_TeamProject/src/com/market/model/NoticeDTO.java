package com.market.model;

public class NoticeDTO {
	private int notice_no; // 번호
	private String notice_userId; // 사용자 아이디
	private String notice_writer; // 작성자
	private String notice_title; // 제목
	private String notice_content; // 내용
	private String notice_pwd; // 비밀번호
	private int notice_hit; // 조회수
	private String notice_date; // 작성일
	private String notice_update; // 수정일

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_userId() {
		return notice_userId;
	}

	public void setNotice_userId(String notice_userId) {
		this.notice_userId = notice_userId;
	}

	public String getNotice_writer() {
		return notice_writer;
	}

	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_pwd() {
		return notice_pwd;
	}

	public void setNotice_pwd(String notice_pwd) {
		this.notice_pwd = notice_pwd;
	}

	public int getNotice_hit() {
		return notice_hit;
	}

	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}

	public String getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}

	public String getNotice_update() {
		return notice_update;
	}

	public void setNotice_update(String notice_update) {
		this.notice_update = notice_update;
	}

}
