package com.fourmeeting.bee.image.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.image.model.service.ImageService;
import com.fourmeeting.bee.image.model.service.ImageService2;
import com.fourmeeting.bee.image.model.vo.AttachFileDTO;
import com.fourmeeting.bee.member.model.vo.Member;
import com.google.gson.JsonIOException;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class ImageController2 {

	

	@Autowired
	ServletContext context;
	
	 @Autowired
	@Qualifier(value="imageService2")
	private ImageService2 iService2;
	 
	 
@RequestMapping(value="/selectAllImage.do",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
		@ResponseBody
		public ModelAndView selectAllImage(@SessionAttribute("member") Member m, HttpServletResponse response,@RequestParam int beesNo) throws JsonIOException, IOException{
            System.out.println(beesNo);	
			int memberNo = m.getMemberNo();
			System.out.println(memberNo);
			BeesUser b = new BeesUser();
			b.setBeesNo(beesNo);
			b.setMemberNo(memberNo);
			ArrayList<AttachFileDTO> list = iService2.selectAllImage(b);
	
			ModelAndView mav = new ModelAndView();
			System.out.println("list"+ list );
			mav.addObject("list", list);
			mav.setViewName("bees/board/beesUploadImage"); 	
			return mav;
			/*return ;  */

			
		}

	
	 
	 @PostMapping(value = "/uploadAjaxAction.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
		@ResponseBody
		public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile, HttpServletRequest request) {  //파일 업로드 하기
		 
		 List<AttachFileDTO> list = new ArrayList<>();
		 Map<String, Object> map = new HashMap<String, Object>();
		 
		 
		 String uploadPath="/resources/file/";          //Wepapp이하 부터 파일명 앞까지 실제 경로
		 String realUploadPath = context.getRealPath(uploadPath);
			System.out.println("1.IMG real path: " + realUploadPath);
		 
			 HttpSession session = request.getSession();
	           Member m = (Member)session.getAttribute("member");
	           
	           int fileUser = m.getMemberNo();  //userId가 업로드 유저 (fileUser)
	           
	           AttachFileDTO attachDTO = new AttachFileDTO();
	      		// // make yyyy/MM/dd folder
	      		
	      		 for (MultipartFile multipartFile : uploadFile) {		//스프링에서 제공해주는 multipartfile
	      		
	      			
	      		System.out.println("2.Original File Name: " + multipartFile.getOriginalFilename());		//실제 파일명
	      		System.out.println("3.IMG Size: " + multipartFile.getSize());							//파일 사이즈
	      		
	      		
	      		 String uploadFileName = multipartFile.getOriginalFilename();  //실제 파일명.
	      		
	      		// // IE has file path
	      		uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);	//IE는 전체 파일 경로가 전송되므로 마지막 \를 기준으로 잘라낸게 실제 파일이름임.
	      		System.out.println("only file name: " + uploadFileName);
	      		attachDTO.setFileName(uploadFileName);
	      		//
	      		 UUID uuid = UUID.randomUUID();      //동일한 파일명이 업로드 되면 기존에 등록된게 지워지므로 이름이 같으면 안됨. 따라서 랜덤문자열을 생성하여 유니크 이름 지정
	    		 
	    		 uploadFileName = uuid.toString() + "_" + uploadFileName;  //파일 이름 바꾸기   ,  랜덤문자열_실제이름
	    		  
	    		
	    		 try {
	    			 File saveFile = new File(realUploadPath, uploadFileName);  		
	    		 multipartFile.transferTo(saveFile);
	    		 System.out.println("실험"+saveFile.getPath());
	    		 attachDTO.setUuid(uuid.toString());
	    			attachDTO.setUploadPath(saveFile.getPath());
	    		 
	    			attachDTO.setChangeFileName(saveFile.getName());
	    			attachDTO.setMemberNo(fileUser);
	    			attachDTO.setImgSIze(multipartFile.getSize());
	    			
	    			attachDTO.setImgDelYN('N');
	    			File thumbnailFileName = new File(realUploadPath, "s_" + uploadFileName);
	    			attachDTO.setThumbnailFileName(thumbnailFileName.getPath());
	    			FileOutputStream thumbnail = new FileOutputStream(thumbnailFileName);
	    		 
	    		 Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 500, 500);
	    		 
	    		 thumbnail.close();
	    		 list.add(attachDTO);
	    		 
	    		 System.out.println("1" + attachDTO.getFileName());  //beeLogo.png
	    		 System.out.println("2" + attachDTO.getUploadPath()); //C:\java_all\springWorkSpace\bee3\src\main\webapp\resources\file\
	    		System.out.println("3" + attachDTO.getChangeFileName()); 
	    		System.out.println("4" + attachDTO.getMemberNo());
	    		System.out.println("5" + attachDTO.getImgSIze()); 
	    		System.out.println("6" + attachDTO.getBoardNo()); 
	    		System.out.println("7" + attachDTO.getImgDelYN()); 
	    		System.out.println("8" + attachDTO.getThumbnailFileName()); 
	    		
	    		
	    		 } catch (Exception e) {
	    		 e.printStackTrace();
	    		} // end catch
	    		
	    		} // end for
	      		 map.put("list", list);
	      		 
	      		int result = iService2.insertOnlyImage(map);
	      		
	      		if(result > 0){
	      			System.out.println("이미지 등록 성공");
	      		}else{
	      			attachDTO.setImgDelYN('Y');
	      			iService2.updateDeleteImage(attachDTO);
	      		}
		 return new ResponseEntity<>(list, HttpStatus.OK);
	 }
	
	
	
	
	 @GetMapping("/display.do")
		@ResponseBody
		public ResponseEntity<byte[]> getFile(String fileName) {

			System.out.println("fileName: " + fileName);

			File file = new File(fileName);

			System.out.println("file: " + file);

			ResponseEntity<byte[]> result = null;

			try {
				HttpHeaders header = new HttpHeaders();

				header.add("Content-Type", Files.probeContentType(file.toPath()));
				result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return result;
		}
		
		@GetMapping(value = "/download.do", produces =MediaType.APPLICATION_OCTET_STREAM_VALUE)
				@ResponseBody
			 public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent")String userAgent, String fileName) {
				
			Resource resource = new FileSystemResource(fileName);
			System.out.println("resource: " + resource);
			 if(resource.exists() == false) {
			 return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			 }
			
			String resourceName = resource.getFilename();
			
			 HttpHeaders headers = new HttpHeaders();
			 try {
			
					boolean checkIE = (userAgent.indexOf("MSIE") > -1 ||
					 userAgent.indexOf("Trident") > -1);
					
					 String downloadName = null;
					
					if (checkIE) {
					 downloadName = URLEncoder.encode(resourceName, "UTF8").replaceAll("\\+", "");
					 } else {
					 downloadName = new String(resourceName.getBytes("UTF-8"), "ISO-8859-1");
					}
					
					 headers.add("Content-Disposition", "attachment; filename=" + downloadName);
			
			 } catch (UnsupportedEncodingException e) {
			 e.printStackTrace();
			 }
			
			 	return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
			 }
				
		

		
	
@PostMapping("/deleteFile.do")
@ResponseBody
public ResponseEntity<String> deleteFile(String filePath, String type,String name,HttpServletRequest request) {

	System.out.println("deleteFile: " + filePath);
	System.out.println("originName: " + name);
	HttpSession session = request.getSession();
    Member m = (Member)session.getAttribute("member");
    int memberNo= m.getMemberNo();
    AttachFileDTO aDTO = new AttachFileDTO();
    
	File file;

	try {
		file = new File(URLDecoder.decode(filePath, "UTF-8"));

		file.delete();

		if (type.equals("image")) {

			String largeFileName = file.getAbsolutePath().replace("s_", "");

			System.out.println("largeFileName: " + largeFileName);

			file = new File(largeFileName);
			System.out.println("largeFileName"+largeFileName);
			file.delete();
			aDTO.setMemberNo(memberNo);
			aDTO.setChangeFileName(name);
		    aDTO.setImgDelYN('Y');
			int result = iService2.updateDeleteImage(aDTO);
			if(result>0){
				System.out.println("정상적으로 삭제");
			}else{
				System.out.println("삭제취소");
			}
			System.out.println("삭제하고왔다. 컨트롤러");
		}

	} catch (UnsupportedEncodingException e) {
		e.printStackTrace();
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	return new ResponseEntity<String>("deleted", HttpStatus.OK);

}
		
}				
		
