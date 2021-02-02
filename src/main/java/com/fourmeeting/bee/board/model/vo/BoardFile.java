package com.fourmeeting.bee.board.model.vo;

public class BoardFile {
	private int boardNo;
	private int fileNo;
	
	
	public BoardFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardFile(int boardNo, int fileNo) {
		super();
		this.boardNo = boardNo;
		this.fileNo = fileNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	
	
}
