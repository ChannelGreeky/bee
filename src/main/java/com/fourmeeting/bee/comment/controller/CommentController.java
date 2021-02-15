package com.fourmeeting.bee.comment.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourmeeting.bee.beesuser.model.service.BeesUserService;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.board.model.service.BoardService;
import com.fourmeeting.bee.board.model.vo.Board;
import com.fourmeeting.bee.comment.model.service.CommentService;
import com.fourmeeting.bee.comment.model.vo.BeesComment;
import com.google.gson.Gson;

@Controller
public class CommentController {
	
	@Resource(name="CommentService")
	private CommentService commentService;
	
	@Resource(name="BeesUserService")
	private BeesUserService userService;
	
	@Resource(name="BoardService")
	private BoardService boardService;
	
	@RequestMapping("/insertComment.do")
	public void insertComment(@RequestParam String commentCont, @RequestParam int memberNo, @RequestParam int boardNo, HttpServletResponse response ) throws Exception{
	
		Board board = boardService.boardSelectOne(boardNo);
		BeesUser user = userService.userSelectOne(memberNo, board.getBeesNo());
		
		BeesComment comment = new BeesComment();
		comment.setCommentCont(commentCont);
		comment.setUserNo(user.getUserNo());
		comment.setBoardNo(boardNo);
		comment.setBeesNo(board.getBeesNo());
		
		
		int result = commentService.insertComment(comment);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		new Gson().toJson(result,out);
		
	}
	
	@RequestMapping("/insertRecomment.do")
	public void insertRecomment(@RequestParam String commentCont, @RequestParam int memberNo, @RequestParam int boardNo, @RequestParam int recommentNo, HttpServletResponse response ) throws Exception{
	
		Board board = boardService.boardSelectOne(boardNo);
		BeesUser user = userService.userSelectOne(memberNo, board.getBeesNo());
		
		BeesComment comment = new BeesComment();
		comment.setCommentCont(commentCont);
		comment.setUserNo(user.getUserNo());
		comment.setBoardNo(boardNo);
		comment.setBeesNo(board.getBeesNo());
		comment.setRecommentNo(recommentNo);
		
		int result = commentService.insertRecomment(comment);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		new Gson().toJson(result,out);
		
	}
	
	@RequestMapping("/updateComment.do")
	public void updateComment(@RequestParam String commentCont, @RequestParam int commentNo , HttpServletResponse response ) throws Exception{
		BeesComment comment = new BeesComment();
		comment.setCommentCont(commentCont);
		comment.setCommentNo(commentNo);
		
		int result = commentService.updateComment(comment);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		new Gson().toJson(result,out);
		
	}
	@RequestMapping("/deleteComment.do")
	public void deleteComment(@RequestParam int commentNo , HttpServletResponse response ) throws Exception{
		
		int result = commentService.deleteComment(commentNo);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		new Gson().toJson(result,out);
		
	}
}
