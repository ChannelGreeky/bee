package com.fourmeeting.bee.beesuser.model.vo;

public class BeesUserSelect {
	private String keyword;
	private String option;
	
	public BeesUserSelect() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BeesUserSelect(String keyword, String option) {
		super();
		this.keyword = keyword;
		this.option = option;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
}
