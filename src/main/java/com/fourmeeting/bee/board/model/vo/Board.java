package com.fourmeeting.bee.board.model.vo;

import java.sql.Timestamp;

public class Board {
	private int boardNo;
	private int beesNo;
	private int memberNo;
	private Timestamp boardDate;
	private int voteNo;
	private int scheduleNo;
	private Timestamp boardDelDate;
	private char boardNoticeYN;
	private char boardDelYN;
	
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Board(int boardNo, int beesNo, int memberNo, Timestamp boardDate, int voteNo, int scheduleNo,
			Timestamp boardDelDate, char boardNoticeYN, char boardDelYN) {
		super();
		this.boardNo = boardNo;
		this.beesNo = beesNo;
		this.memberNo = memberNo;
		this.boardDate = boardDate;
		this.voteNo = voteNo;
		this.scheduleNo = scheduleNo;
		this.boardDelDate = boardDelDate;
		this.boardNoticeYN = boardNoticeYN;
		this.boardDelYN = boardDelYN;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getBeesNo() {
		return beesNo;
	}
	public void setBeesNo(int beesNo) {
		this.beesNo = beesNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public Timestamp getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Timestamp boardDate) {
		this.boardDate = boardDate;
	}
	public int getVoteNo() {
		return voteNo;
	}
	public void setVoteNo(int voteNo) {
		this.voteNo = voteNo;
	}
	public int getScheduleNo() {
		return scheduleNo;
	}
	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}
	public Timestamp getBoardDelDate() {
		return boardDelDate;
	}
	public void setBoardDelDate(Timestamp boardDelDate) {
		this.boardDelDate = boardDelDate;
	}
	public char getBoardNoticeYN() {
		return boardNoticeYN;
	}
	public void setBoardNoticeYN(char boardNoticeYN) {
		this.boardNoticeYN = boardNoticeYN;
	}
	public char getBoardDelYN() {
		return boardDelYN;
	}
	public void setBoardDelYN(char boardDelYN) {
		this.boardDelYN = boardDelYN;
	}

	
}
