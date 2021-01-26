<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
    .insert {
  padding: 20px 30px;
  display: block;
  width: 600px;
  margin: 5vh auto;
  height: 90vh;
  border: 1px solid #dbdbdb;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
    .insert .file-hidden-list {
  height: 0;
  overflow: hidden;
}
    .insert .file-list {
  height: 130px;
  overflow: auto;
  border: 1px solid #989898;
  text-align: center;
}
.insert .file-list .thumbnail {
  width: 20%;
  float: left;
  position: relative;
  margin-top: 20px;
  color: #555;
  text-align: center;
  padding: 20px 0px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.insert .file-list .thumbnail i {
  font-size: 50px;
}
.insert .file-list .thumbnail p {
  font-size: 14px;
  margin-top: 10px;
}
.insert .file-list .thumbnail .delete i{
  position: absolute;
  font-size: 14px;
  top: 0;
  right: 0;
  color: #ff5353;
}
    
    
    </style>
    <!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css ></script>
</head>
<body>
<div class="insert">
 <button id="addFile" class="add-button">사진 올리기</button>
  <div class="file-list">
  </div>
 </div>
    
    <script>
    function hiddenFile(o){
  let file = '';
  file += '<input type="file" name="file" id="'+o.id+'"/>';
  return file;
}

function file(o){
  let type = '';
  if(o.ext === 'pptx' || o.ext === 'ppt'){
    type = 'powerpoint';
  }else if(o.ext === 'png' || o.ext === 'jpg'){
    type = 'image';
  }else if(o.ext === 'xlsx'){
    type = 'excel';
  }else if(o.ext === 'pdf'){
    type = 'pdf';
  }else {
    type = 'alt';
  }

  let fileThumbnail = '';
  fileThumbnail += '<div class="thumbnail">';
  fileThumbnail += '  <i class="far fa-file-'+type+'"></i>';
  fileThumbnail += '  <p class="name">'+o.name+'</p>';
  fileThumbnail += '  <a href="#'+o.id+'" class="delete"><i class="far fa-minus-square"></i></a>';
  fileThumbnail += '</div>';
  return fileThumbnail;
}

function addFile(o){
  $('.file-hidden-list').append(hiddenFile(o));
  $('#' + o.id).click();
  $('#' + o.id).on('change', function(e){
    const arr1 = e.target.value.split('\\');
    const name = arr1[arr1.length-1];
    o.name = name;

    const arr2 = e.target.value.split('.');
    const ext = arr2[arr2.length-1];
    o.ext = ext;

    $('.file-list').append(file(o));
  });
}

function makeid(length) {
  var result           = '';
  var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  var charactersLength = characters.length;
  for ( var i = 0; i < length; i++ ) {
     result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

$(document).on('click', '#addFile', function(){
  addFile({id:makeid(10)});
});
$(document).on('click', '.delete', function(){
  const id = $(this).attr('href');
  $(id).remove();
  $(this).parent().remove();
});
    
    
    
    
    
    </script>
</body>
</html>