package com.fourmeeting.bee.board.model.vo;

public class BoardImage {
	private int boardNo;
	private int imgNo;
	
	
	public BoardImage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardImage(int boardNo, int imgNo) {
		super();
		this.boardNo = boardNo;
		this.imgNo = imgNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	
}
