package com.fourmeeting.bee.board.model.vo;

import java.sql.Timestamp;

public class Feed {
	private int boardNo;
	private int beesNo;
	private Timestamp boardDate;
	private String boardCont;
	private int voteNo;
	private int scheduleNo;
	private int fileNo;
	private String imgNo;
	private Timestamp boardDelDate;
	private char boardNoticeYN;
	private char boardDelYN;
	private String userName;
	private String profileImg;
	private int memberNo;
	private int likeCount;
	private int commentCount;
	private String beesName;
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
	public Timestamp getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Timestamp boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardCont() {
		return boardCont;
	}
	public void setBoardCont(String boardCont) {
		this.boardCont = boardCont;
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
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getImgNo() {
		return imgNo;
	}
	public void setImgNo(String imgNo) {
		this.imgNo = imgNo;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public String getBeesName() {
		return beesName;
	}
	public void setBeesName(String beesName) {
		this.beesName = beesName;
	}
	public Feed() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Feed(int boardNo, int beesNo, Timestamp boardDate, String boardCont, int voteNo, int scheduleNo, int fileNo,
			String imgNo, Timestamp boardDelDate, char boardNoticeYN, char boardDelYN, String userName,
			String profileImg, int memberNo, int likeCount, int commentCount, String beesName) {
		super();
		this.boardNo = boardNo;
		this.beesNo = beesNo;
		this.boardDate = boardDate;
		this.boardCont = boardCont;
		this.voteNo = voteNo;
		this.scheduleNo = scheduleNo;
		this.fileNo = fileNo;
		this.imgNo = imgNo;
		this.boardDelDate = boardDelDate;
		this.boardNoticeYN = boardNoticeYN;
		this.boardDelYN = boardDelYN;
		this.userName = userName;
		this.profileImg = profileImg;
		this.memberNo = memberNo;
		this.likeCount = likeCount;
		this.commentCount = commentCount;
		this.beesName = beesName;
	}

}
