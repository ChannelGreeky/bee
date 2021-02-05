package com.fourmeeting.bee.image.model.vo;

public class Image {
	private int imgNo;
	private String orginalImageName;
	private String changeImageName;
	private String imgPath;
	private int imgSize;
	private int boardNo;
	private char imgDelYN;

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public String getOrginalImageName() {
		return orginalImageName;
	}

	public void setOrginalImageName(String orginalImageName) {
		this.orginalImageName = orginalImageName;
	}

	public String getChangeImageName() {
		return changeImageName;
	}

	public void setChangeImageName(String changeImageName) {
		this.changeImageName = changeImageName;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public int getImgSize() {
		return imgSize;
	}

	public void setImgSize(int imgSize) {
		this.imgSize = imgSize;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public char getImgDelYN() {
		return imgDelYN;
	}

	public void setImgDelYN(char imgDelYN) {
		this.imgDelYN = imgDelYN;
	}

	public Image(int imgNo, String orginalImageName, String changeImageName, String imgPath, int imgSize, int boardNo,
			char imgDelYN) {
		super();
		this.imgNo = imgNo;
		this.orginalImageName = orginalImageName;
		this.changeImageName = changeImageName;
		this.imgPath = imgPath;
		this.imgSize = imgSize;
		this.boardNo = boardNo;
		this.imgDelYN = imgDelYN;
	}

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}
}
