<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>


.first form p span{
	line-height: 0px;
}


.firstset img{
	width:250px;
	height:250px;
}
.firstset form{
  position: absolute;
  top: 50%;
  left: 50%;
  margin-top: 150px;
  margin-left: -175px;
  width: 350px;
  height: 350px;
  border: dashed 2.5px rgba(210, 215, 217, 0.75);
  padding : 25px;
}

.firstset form p{

  text-align: center;
  line-height: 100px;
  color: black;
  font-family: Arial;
}
.firstset form input{
  position: absolute;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  outline: none;
  opacity: 0;
}

#nav ul li #step1{
   background-color: #F2F6FE;
   color: #f56a6a;
  }


</style>
</head>



<body>

<div class="firstset">
	<form action="write.do"  enctype="multipart/form-data" method="post">
	 	  <input type="file" id="uploadfile" name="uploadfile" required>
		  <p><img src="img/interface2.png"><br>Drag your files here or click in this area.</p>
	</form>
</div>
	
</body>



<script>

function showname () {
    var name = document.getElementById('uploadfile');
    var list = [ name.files.item(0).name, name.files.item(0).size, name.files.item(0).type];
    return list;
  };

$(document).ready(function(){
	  $('form input').change(function () {
	    var list = showname();
		$('form p').html("<span>FileName: "+list[0]+"<br>FileSize: "+list[1]+"byte</span>");
        location.href="step2.do?fileName="+list[0];
        
			    
	  });
	});

</script>
</html>