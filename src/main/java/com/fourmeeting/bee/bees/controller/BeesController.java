package com.fourmeeting.bee.bees.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fourmeeting.bee.bees.model.service.BeesService;
import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.bees.model.vo.Setting;
import com.fourmeeting.bee.beesuser.model.service.BeesUserService;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserList;
import com.fourmeeting.bee.board.model.service.BoardService;
import com.fourmeeting.bee.board.model.vo.BoardLike;
import com.fourmeeting.bee.board.model.vo.Feed;
import com.fourmeeting.bee.comment.model.service.CommentService;
import com.fourmeeting.bee.comment.model.vo.FeedComment;
import com.fourmeeting.bee.file.model.service.FileService;
import com.fourmeeting.bee.file.model.vo.BeesFile;
import com.fourmeeting.bee.image.model.service.ImageService;
import com.fourmeeting.bee.image.model.vo.Image;
import com.fourmeeting.bee.member.model.vo.Member;
import com.fourmeeting.bee.schedule.model.service.ScheduleService;
import com.fourmeeting.bee.schedule.model.vo.Schedule;
import com.fourmeeting.bee.vote.model.service.VoteService;
import com.fourmeeting.bee.vote.model.vo.FeedVote;

@Controller("beesController")
public class BeesController {
	
	@Autowired
	@Qualifier(value = "beesService")
	private BeesService bService;
	
	@Resource(name="BeesUserService")
	private BeesUserService userService;
	
	@Resource(name="BoardService")
	private BoardService boardService;
	
	@Resource(name="CommentService")
	private CommentService commentService;
	
	@Resource(name="VoteService")
	private VoteService voteService;

	@Resource(name="FileService")
	private FileService fileService;
	
	@Resource(name="ImageService")
	private ImageService imageService;
	
	@Resource(name="ScheduleService")
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/beeCreateMain.do")
	public String beeCreateMain()
	{
			return "bees/beeCreate/Main";
		
	}	
	@RequestMapping(value="/beeCreateSub.do")
	public String beeCreateSub()
	{
			return "bees/beeCreate/Sub";
		
	}
	
	@RequestMapping(value="/beesSelectOne.do")
	private String beesSelectOne(@RequestParam int beesNo, @RequestParam int memberNo, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		Bees bees = bService.beesSelectOne(beesNo);
		request.setAttribute("bees", bees);
		int userCount = userService.userCount(beesNo);
		request.setAttribute("userCount", userCount);
		
		
		ArrayList<Feed> feedList = boardService.boardSelectAll(beesNo);
		request.setAttribute("feedList", feedList);
		
		
		//댓글을 불러오자
		ArrayList<FeedComment> commentAll=commentService.commentSelectAll(beesNo);
		HashMap<Integer, ArrayList<FeedComment>> commentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		HashMap<Integer, ArrayList<FeedComment>> recommentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		for(int i=0; i<commentAll.size();i++) {
			
			FeedComment comment = commentAll.get(i);
			
			if(comment.getRecommentNo()>0) {
				
				if(recommentMap.get(comment.getRecommentNo())==null) {
					
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = recommentMap.get(comment.getRecommentNo());
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
					
				}
				
				
			}else{
				
				if(commentMap.get(comment.getBoardNo())==null) {
				
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = commentMap.get(comment.getBoardNo());
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
					
				}			
			}
		}
		request.setAttribute("commentMap", commentMap);
		request.setAttribute("recommentMap", recommentMap);	
		
		//투표보여주기
		ArrayList<FeedVote> voteList = voteService.voteSelectAll(beesNo);
		HashMap<Integer, ArrayList<FeedVote>> voteMap = new HashMap<Integer, ArrayList<FeedVote>>();
		for(FeedVote vote : voteList) {
			if(voteMap.get(vote.getVoteNo())==null) {	
				ArrayList<FeedVote> list = new ArrayList<FeedVote>();
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}else {
				ArrayList<FeedVote> list = voteMap.get(vote.getVoteNo());
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}
		}
		request.setAttribute("voteMap", voteMap);
		
		//일정보여주기	
		
		
		ArrayList<Schedule> scheduleList = scheduleService.scheduleSelectAll(beesNo);
		HashMap<Integer, Schedule> scheduleMap = new HashMap<Integer, Schedule>();
		for(Schedule sche : scheduleList) {
			scheduleMap.put(sche.getBoardNo(),sche);
		}
		request.setAttribute("scheduleMap", scheduleMap);
		
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAll(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		
		//파일보여주기
		ArrayList<BeesFile> fileList = fileService.fileSelectAll(beesNo);
		HashMap<Integer, BeesFile> fileMap = new HashMap<Integer, BeesFile>();
		for(int i=0; i<fileList.size(); i++) {
			if(fileList.get(i).getFileNo()>0) {
			fileMap.put(fileList.get(i).getBoardNo(),fileList.get(i));
			}
		}
		request.setAttribute("fileMap",fileMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		//유저 정보 불러오기
		BeesUser user = userService.userSelectOne(memberNo, beesNo);
		request.setAttribute("user", user);
		
		//세팅 정보 불러오기
		Setting setting = bService.selectBeesSetting(beesNo);
		request.setAttribute("setting", setting);
		
		return "/bees/main/beesMainPage";
		
	
	}
	
	@RequestMapping(value="/beesSearchOne.do")
	private String beesSearchOne(@RequestParam int beesNo, @RequestParam int memberNo, @RequestParam String keyword, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		request.setAttribute("keyword", keyword);
		
		Bees bees = bService.beesSelectOne(beesNo);
		request.setAttribute("bees", bees);
		int userCount = userService.userCount(beesNo);
		request.setAttribute("userCount", userCount);
		
		ArrayList<Feed> feedList = boardService.boardSearchAll(beesNo,keyword);
		request.setAttribute("feedList", feedList);

		
		//댓글을 불러오자
		ArrayList<FeedComment> commentAll=commentService.commentSelectAll(beesNo);
		HashMap<Integer, ArrayList<FeedComment>> commentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		HashMap<Integer, ArrayList<FeedComment>> recommentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		for(int i=0; i<commentAll.size();i++) {
			
			FeedComment comment = commentAll.get(i);
			
			if(comment.getRecommentNo()>0) {
				
				if(recommentMap.get(comment.getRecommentNo())==null) {
					
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = recommentMap.get(comment.getRecommentNo());
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
					
				}
				
				
			}else{
				
				if(commentMap.get(comment.getBoardNo())==null) {
				
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = commentMap.get(comment.getBoardNo());
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
					
				}			
			}
		}
		request.setAttribute("commentMap", commentMap);
		request.setAttribute("recommentMap", recommentMap);	
		
		//투표보여주기
		ArrayList<FeedVote> voteList = voteService.voteSelectAll(beesNo);
		HashMap<Integer, ArrayList<FeedVote>> voteMap = new HashMap<Integer, ArrayList<FeedVote>>();
		for(FeedVote vote : voteList) {
			if(voteMap.get(vote.getVoteNo())==null) {	
				ArrayList<FeedVote> list = new ArrayList<FeedVote>();
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}else {
				ArrayList<FeedVote> list = voteMap.get(vote.getVoteNo());
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}
		}
		request.setAttribute("voteMap", voteMap);
		
		//일정보여주기	
		
		
		ArrayList<Schedule> scheduleList = scheduleService.scheduleSelectAll(beesNo);
		HashMap<Integer, Schedule> scheduleMap = new HashMap<Integer, Schedule>();
		for(Schedule sche : scheduleList) {
			scheduleMap.put(sche.getBoardNo(),sche);
		}
		request.setAttribute("scheduleMap", scheduleMap);
		
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAll(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		
		//파일보여주기
		ArrayList<BeesFile> fileList = fileService.fileSelectAll(beesNo);
		HashMap<Integer, BeesFile> fileMap = new HashMap<Integer, BeesFile>();
		for(int i=0; i<fileList.size(); i++) {
			if(fileList.get(i).getFileNo()>0) {
			fileMap.put(fileList.get(i).getBoardNo(),fileList.get(i));
			}
		}
		request.setAttribute("fileMap",fileMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		//유저 정보 불러오기
		BeesUser user = userService.userSelectOne(memberNo, beesNo);
		request.setAttribute("user", user);
		
		//세팅 정보 불러오기
		Setting setting = bService.selectBeesSetting(beesNo);
		request.setAttribute("setting", setting);
		
		return "/bees/main/beesSearchPage";
		
	
	}
	
	
	@RequestMapping(value="/myPageBoard.do")
	private String myPageBoard(@RequestParam int memberNo, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		
		ArrayList<Feed> feedList = boardService.boardSelectMine(memberNo);
		request.setAttribute("feedList", feedList);
		
		
		List<Integer> beesNo = userService.selectAllBeesNo(memberNo);
		
		//댓글을 불러오자
		ArrayList<FeedComment> commentAll=commentService.commentSelectAllMyBees(beesNo);
		
		
		
		
		HashMap<Integer, ArrayList<FeedComment>> commentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		HashMap<Integer, ArrayList<FeedComment>> recommentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		for(int i=0; i<commentAll.size();i++) {
			
			FeedComment comment = commentAll.get(i);
			
			if(comment.getRecommentNo()>0) {
				
				if(recommentMap.get(comment.getRecommentNo())==null) {
					
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = recommentMap.get(comment.getRecommentNo());
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
					
				}
				
				
			}else{
				
				if(commentMap.get(comment.getBoardNo())==null) {
				
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = commentMap.get(comment.getBoardNo());
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
					
				}			
			}
		}
		request.setAttribute("commentMap", commentMap);
		request.setAttribute("recommentMap", recommentMap);	
		
		
		//투표보여주기
		ArrayList<FeedVote> voteList = voteService.voteSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<FeedVote>> voteMap = new HashMap<Integer, ArrayList<FeedVote>>();
		for(FeedVote vote : voteList) {
			if(voteMap.get(vote.getVoteNo())==null) {	
				ArrayList<FeedVote> list = new ArrayList<FeedVote>();
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}else {
				ArrayList<FeedVote> list = voteMap.get(vote.getVoteNo());
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}
		}
		request.setAttribute("voteMap", voteMap);
		
		//일정보여주기	
		
		
		ArrayList<Schedule> scheduleList = scheduleService.scheduleSelectAllMyBees(beesNo);
		HashMap<Integer, Schedule> scheduleMap = new HashMap<Integer, Schedule>();
		for(Schedule sche : scheduleList) {
			scheduleMap.put(sche.getBoardNo(),sche);
		}
		request.setAttribute("scheduleMap", scheduleMap);
		
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		
		//파일보여주기
		ArrayList<BeesFile> fileList = fileService.fileSelectAllMyBees(beesNo);
		HashMap<Integer, BeesFile> fileMap = new HashMap<Integer, BeesFile>();
		for(int i=0; i<fileList.size(); i++) {
			if(fileList.get(i).getFileNo()>0) {
			fileMap.put(fileList.get(i).getBoardNo(),fileList.get(i));
			}
		}
		request.setAttribute("fileMap",fileMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		return "/user/myPage/board";
		
	
	}
	
	@RequestMapping(value="/myPageHeart.do")
	private String myPageHeart(@RequestParam int memberNo, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		
		ArrayList<Feed> feedList = boardService.boardSelectLiked(memberNo);
		request.setAttribute("feedList", feedList);
		
		
		List<Integer> beesNo = userService.selectAllBeesNo(memberNo);
		
		//댓글을 불러오자
		ArrayList<FeedComment> commentAll=commentService.commentSelectAllMyBees(beesNo);
		
		
		
		
		HashMap<Integer, ArrayList<FeedComment>> commentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		HashMap<Integer, ArrayList<FeedComment>> recommentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		for(int i=0; i<commentAll.size();i++) {
			
			FeedComment comment = commentAll.get(i);
			
			if(comment.getRecommentNo()>0) {
				
				if(recommentMap.get(comment.getRecommentNo())==null) {
					
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = recommentMap.get(comment.getRecommentNo());
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
					
				}
				
				
			}else{
				
				if(commentMap.get(comment.getBoardNo())==null) {
				
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = commentMap.get(comment.getBoardNo());
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
					
				}			
			}
		}
		request.setAttribute("commentMap", commentMap);
		request.setAttribute("recommentMap", recommentMap);	
		
		
		//투표보여주기
		ArrayList<FeedVote> voteList = voteService.voteSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<FeedVote>> voteMap = new HashMap<Integer, ArrayList<FeedVote>>();
		for(FeedVote vote : voteList) {
			if(voteMap.get(vote.getVoteNo())==null) {	
				ArrayList<FeedVote> list = new ArrayList<FeedVote>();
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}else {
				ArrayList<FeedVote> list = voteMap.get(vote.getVoteNo());
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}
		}
		request.setAttribute("voteMap", voteMap);
		
		//일정보여주기	
		
		
		ArrayList<Schedule> scheduleList = scheduleService.scheduleSelectAllMyBees(beesNo);
		HashMap<Integer, Schedule> scheduleMap = new HashMap<Integer, Schedule>();
		for(Schedule sche : scheduleList) {
			scheduleMap.put(sche.getBoardNo(),sche);
		}
		request.setAttribute("scheduleMap", scheduleMap);
		
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		
		//파일보여주기
		ArrayList<BeesFile> fileList = fileService.fileSelectAllMyBees(beesNo);
		HashMap<Integer, BeesFile> fileMap = new HashMap<Integer, BeesFile>();
		for(int i=0; i<fileList.size(); i++) {
			if(fileList.get(i).getFileNo()>0) {
			fileMap.put(fileList.get(i).getBoardNo(),fileList.get(i));
			}
		}
		request.setAttribute("fileMap",fileMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		return "/user/myPage/heart";
		
	
	}
	
	@RequestMapping(value="/myBeesPage.do")
	private String selectMainPage(@RequestParam int memberNo, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		List<Integer> beesNo = userService.selectAllBeesNo(memberNo);
		
		ArrayList<Feed> feedList = boardService.boardSelectAllBees(beesNo);
		request.setAttribute("feedList", feedList);
		
		
		
		//댓글을 불러오자
		ArrayList<FeedComment> commentAll=commentService.commentSelectAllMyBees(beesNo);
		
		
		
		
		HashMap<Integer, ArrayList<FeedComment>> commentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		HashMap<Integer, ArrayList<FeedComment>> recommentMap = new HashMap<Integer, ArrayList<FeedComment>>();
		for(int i=0; i<commentAll.size();i++) {
			
			FeedComment comment = commentAll.get(i);
			
			if(comment.getRecommentNo()>0) {
				
				if(recommentMap.get(comment.getRecommentNo())==null) {
					
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = recommentMap.get(comment.getRecommentNo());
					list.add(comment);
					recommentMap.put(comment.getRecommentNo(),list);
					
				}
				
				
			}else{
				
				if(commentMap.get(comment.getBoardNo())==null) {
				
					ArrayList<FeedComment> list = new ArrayList<FeedComment>();
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
				
				}else {
					
					ArrayList<FeedComment> list = commentMap.get(comment.getBoardNo());
					list.add(comment);
					commentMap.put(comment.getBoardNo(),list);
					
				}			
			}
		}
		request.setAttribute("commentMap", commentMap);
		request.setAttribute("recommentMap", recommentMap);	
		
		
		//투표보여주기
		ArrayList<FeedVote> voteList = voteService.voteSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<FeedVote>> voteMap = new HashMap<Integer, ArrayList<FeedVote>>();
		for(FeedVote vote : voteList) {
			if(voteMap.get(vote.getVoteNo())==null) {	
				ArrayList<FeedVote> list = new ArrayList<FeedVote>();
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}else {
				ArrayList<FeedVote> list = voteMap.get(vote.getVoteNo());
				list.add(vote);
				voteMap.put(vote.getVoteNo(),list);
			}
		}
		request.setAttribute("voteMap", voteMap);
		
		//일정보여주기	
		
		
		ArrayList<Schedule> scheduleList = scheduleService.scheduleSelectAllMyBees(beesNo);
		HashMap<Integer, Schedule> scheduleMap = new HashMap<Integer, Schedule>();
		for(Schedule sche : scheduleList) {
			scheduleMap.put(sche.getBoardNo(),sche);
		}
		request.setAttribute("scheduleMap", scheduleMap);
		
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		
		//파일보여주기
		ArrayList<BeesFile> fileList = fileService.fileSelectAllMyBees(beesNo);
		HashMap<Integer, BeesFile> fileMap = new HashMap<Integer, BeesFile>();
		for(int i=0; i<fileList.size(); i++) {
			if(fileList.get(i).getFileNo()>0) {
			fileMap.put(fileList.get(i).getBoardNo(),fileList.get(i));
			}
		}
		request.setAttribute("fileMap",fileMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		return "/user/main/myBeesPage";
		
	
	}
	
	@RequestMapping(value="/bestFeedPage.do")
	private String bestFeedPage(@RequestParam int memberNo, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		List<Integer> beesNo = userService.selectAllBeesNo(memberNo);
		
		ArrayList<Feed> feedList = boardService.selectAllBestFeed();
		request.setAttribute("feedList", feedList);
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		return "/user/main/bestFeedPage";
		
	
	}
	
	@RequestMapping(value="/feedSearchResult.do")
	private String bestFeedPage(@RequestParam int memberNo, @RequestParam String keyword, HttpServletRequest request, HttpSession session) throws Exception {
		
		Member member = new Member();
		member.setMemberNo(memberNo);
		request.getSession();
		session.setAttribute("member", member);
		
		List<Integer> beesNo = userService.selectAllBeesNo(memberNo);
		
		ArrayList<Feed> feedList = boardService.selectSerachAllFeed(keyword);
		request.setAttribute("feedList", feedList);
		
		//이미지보여주기
		ArrayList<Image> imageList = imageService.imageSelectAllMyBees(beesNo);
		HashMap<Integer, ArrayList<Image>> imageMap = new HashMap<Integer, ArrayList<Image>>();
		for(Image image : imageList) {
			if(imageMap.get(image.getBoardNo())==null) {	
				ArrayList<Image> list = new ArrayList<Image>();
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}else {
				ArrayList<Image> list = imageMap.get(image.getBoardNo());
				list.add(image);
				imageMap.put(image.getBoardNo(),list);
			}
		}
		request.setAttribute("imageMap", imageMap);
		
		//내가 좋아한 보드 리스트 보여주기
		ArrayList<BoardLike> boardLikeList = boardService.selectAllLike(memberNo);
		HashMap<Integer, Integer> myLikeMap = new HashMap<Integer, Integer>();
		for(int i=0; i<boardLikeList.size();i++) {
			myLikeMap.put(boardLikeList.get(i).getBoardNo(), boardLikeList.get(i).getBoardNo());
		}
		request.setAttribute("likeMap", myLikeMap);
		
		return "/user/search/feedSearchResult";
		
	
	}
	
	@RequestMapping(value="/beeCreate.do")
	public String beeCreate(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
		char beesPublicYN = 0;
		Bees bee = new Bees(); 
		bee.setBeesName(request.getParameter("beeName"));
		bee.setBeesCover(request.getParameter("beeCoverImage"));
		bee.setBeesCategory(request.getParameter("category"));	
		bee.setBeesHost("hellohi");
		String beesPublic = request.getParameter("beeType");
		if(beesPublic.equals("public")){
			beesPublicYN ='Y';
		}else{
			beesPublicYN ='N';
		}
		bee.setBeesPublicYN(beesPublicYN);
		
		int beeResult = bService.insertBee(bee);
		
		if (beeResult > 0) {
			model.addAttribute("msg", "비즈가 성공적으로 만들어졌습니다");
		} else {
			model.addAttribute("msg", "비즈 생성이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/index.jsp");

	
		return "bees/beeCreate/beeResult";
		
	}
	
	@RequestMapping(value="/beeSettingMain.do")
	public ModelAndView beeSettingMain(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
			Bees bee = new Bees(); 
			bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
			System.out.println("비즈 번호: "+bee.getBeesNo());
			Bees beeResult = bService.selectBeeSetting(bee);
			
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("beeResult",beeResult);
			mav.setViewName("bees/beeSetting/Main");  //ViewResolver에 의해서 경로가 최종 완성됨
					
			return mav;			
			/*return "bees/beeSetting/Main";*/
		
	}
	
	@RequestMapping(value="/beeSettingSubCoverUpdate.do")
	public ModelAndView beeSettingSubCoverUpdate(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
			Bees bee = new Bees(); 
			bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
			System.out.println("커버변경 비즈 번호: "+bee.getBeesNo());
			Bees beeResult = bService.selectBeeSetting(bee);
			
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("beeResult",beeResult);
			mav.setViewName("bees/beeSetting/SubCoverUpdate");  //ViewResolver에 의해서 경로가 최종 완성됨
					
			return mav;	
		
	}
	@RequestMapping(value="/coverUpdateSet.do")
	public String coverUpdateSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
			
			Bees bee = new Bees(); 
			bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
			bee.setBeesName(request.getParameter("beeName"));
			bee.setBeesCover(request.getParameter("beeCoverImage"));
			System.out.println("커버변경 설정: "+bee.getBeesName()+"/"+bee.getBeesCover());
			int beeResult = bService.updateBeeSettingCover(bee);
			
			if (beeResult > 0) {
				model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
			} else {
				model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
			}
			model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());

		
			return "bees/beeCreate/beeResult";	
	}
	
	@RequestMapping(value="/beeSettingSubType.do")
	public ModelAndView beeSettingSubType(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("타입변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/Type");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;					
	}
	@RequestMapping(value="/subTypeSet.do")
	   public String subTypeSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {   
	      char beesPublicYN = 0;
	      Bees bee = new Bees(); 
	      bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
	      String beesPublic = request.getParameter("beeType");
	      if(beesPublic.equals("public")){
	         beesPublicYN ='Y';
	      }else{
	         beesPublicYN ='N';
	      }
	      bee.setBeesPublicYN(beesPublicYN);
	      System.out.println("타입변경 설정: "+bee.getBeesNo()+"/"+bee.getBeesPublicYN());
	      int beeResult = bService.updateBeeSettingType(bee);		
			if (beeResult > 0) {
				model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
			} else {
				model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
			}
			model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
			
			return "bees/beeCreate/beeResult";	           
	   }
	
	@RequestMapping(value="/beeSettingSubIntro.do")
	public ModelAndView beeSettingSubIntro(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("소개변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/Intro");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;							
	}
	@RequestMapping(value="/subIntroSet.do")
	public String subIntroSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		bee.setBeesCont(request.getParameter("beeCont"));
		System.out.println("소개변경 설정: "+bee.getBeesNo()+"/"+bee.getBeesCont());
		int beeResult = bService.updateBeeSettingIntro(bee);		
		if (beeResult > 0) {
			model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
		
		return "bees/beeCreate/beeResult";	    					
		
	}
	
	@RequestMapping(value="/beeSettingSubMaxMember.do")
	public ModelAndView beeSettingSubMaxMember(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("최대인원변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/MaxMember");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;								
	}
	@RequestMapping(value="/subMaxMemberSet.do")
	public String subMaxMemberSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		String MaxMember = request.getParameter("MaxMember");
		bee.setBeesUserLimit(Integer.parseInt(MaxMember));
		System.out.println("최대인원변경 설정: "+bee.getBeesNo()+"/"+MaxMember);
		int beeResult = bService.updateBeeSettingMaxMember(bee);		
		if (beeResult > 0) {
			model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
		
		return "bees/beeCreate/beeResult";	    
	}
	
	@RequestMapping(value="/beeSettingSubJoinStandard.do")
	public ModelAndView beeSettingSubJoinStandard(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		System.out.println("가입조건변경 비즈 번호: "+bee.getBeesNo());
		Bees beeResult = bService.selectBeeSetting(bee);
		System.out.println("가입조건변경 비즈 성별: "+beeResult.getBeesGender());
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/JoinStandard");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;										
	}
	@RequestMapping(value="/subJoinStandardSet.do")
	public String subJoinStandardSet(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		bee.setBeesNo(Integer.parseInt(request.getParameter("beesNo")));
		bee.setBeesGender(request.getParameter("gender").charAt(0));
		bee.setBeesMaxBirth(Integer.parseInt(request.getParameter("maxAge")));
		bee.setBeesMinBirth(Integer.parseInt(request.getParameter("minAge")));
		String gender = request.getParameter("gender");
		String maxAge = request.getParameter("maxAge");
		String minAge = request.getParameter("minAge");
		System.out.println("가입조건변경 설정: "+bee.getBeesNo()+"/"+gender+"/"+maxAge+"/"+minAge);
		int beeResult = bService.updateBeeSettingJoinStandard(bee);		
		if (beeResult > 0) {
			model.addAttribute("msg", "성공적으로 비즈설정이 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비즈 설정 변경이 실패하였습니다. 지속적으로 실패 시 관리자에게 문의하세요.");
		}
		model.addAttribute("location", "/beeSettingMain.do?beesNo="+bee.getBeesNo());
		
		return "bees/beeCreate/beeResult";	   
	}
	
	@RequestMapping(value="/beeSettingSubJoinManager.do")
	public ModelAndView beeSettingSubJoinManager(Model model, HttpServletRequest request) throws UnsupportedEncodingException {	
		Bees bee = new Bees(); 
		int beesNO = Integer.parseInt(request.getParameter("beesNo"));
		System.out.println("매니저 관리 비즈 번호: "+beesNO);
		ArrayList<BeesUserList> list = bService.selectBeesUser(beesNO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("bees/beeSetting/JoinManager"); //viewResolve를 통해 경로 최종 완성
		
		return mav;

		
		/*Bees beeResult = bService.selectBeeSetting(bee);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("beeResult",beeResult);
		mav.setViewName("bees/beeSetting/JoinManager");  //ViewResolver에 의해서 경로가 최종 완성됨
				
		return mav;	*/	

	}
	@RequestMapping(value="/beeSettingSubMemberPermission.do")
	public String beeSettingSubMemberPermission()
	{
			return "bees/beeSetting/MemberPermission";
		
	}
	@RequestMapping(value="/beeSettingSubMemberWithdraw.do")
	public String beeSettingSubMemberWithdraw()
	{
			return "bees/beeSetting/MemberWithdraw";
		
	}
	
	@RequestMapping(value="/beeSettingSubMemberWithdrawDo.do")
	public String beeSettingSubMemberWithdrawDo()
	{
			return "bees/beeSetting/MemberWithdrawDo";
		
	}
	
}
