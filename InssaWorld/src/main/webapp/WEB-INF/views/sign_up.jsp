<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">
#page {
   width: 100%;
   height: 100%;
   /* background-color: antiquewhite; */
   margin-left: 40%;
}

#logo {
   margin-top: 1em;
   margin-left: 1em;
}

.box_join{
}

.inp_text input{
   border-radius: 10px;
    border: 1px solid #e1e1e1;
    padding-left: 2em;
    height: 3em;
    width: 17em;
    margin-top: 1em;
    color: #8f8f8f;
}

#join_bt {
   margin-top: 1em;
   background-color: #f87013;
   color: white;
   padding: 5px;
   height: 3em;
    width: 19em;
   border-radius: 1em;
}

#agree_text {
   margin-top: 2em;
    color: #8f8f8f;   
    font-size: 0.8em;
    margin-left: 1em;
}

#idcheck_bt{
   margin-top: 2em;
   margin-left: 0.5em;
   background-color: #f87013;
   color: white;
   padding: 5px;
   height: 3em;
    width: 7em;
   border-radius: 1em;
}

/* #naver_bt {
   float:none;
   margin-top: 2em;
   background-color: #3eb044;
   color: white;
   padding: 5px;
   height: 3em;
    width: 19em;
   border-radius: 1em;
} */


</style>

</head>
<body>

   <div id="page">
      <div id="logo">
         <img id="logo" src="resources/image/login_logo.png">
      </div>

      <div class="box_join">
      
         <div class="inp_text">
            <input type="email" id="Id" name="Id" placeholder="���̵�">
            <input type="button" id="idcheck_bt" value="�ߺ�üũ" onclick="">
         </div>
         
         <div class="inp_text">
            <input type="password" id="Pw" name="Pw"
               placeholder="��й�ȣ">
         </div>
         
         <div class="inp_text">
            <input type="password" id="Pw_1" name="Pw_1"
               placeholder="��й�ȣ Ȯ��">
         </div>
         
         <div class="inp_text">
            <input type="text" id="name" name="name"
               placeholder="����">
         </div>
         
         <div class="inp_text">
            <input type="email" id="email" name="�̸��� email"
               placeholder="�ּ�">
         </div>
         
         <div class="inp_text">
            <input type="text" id="gender" name="gender"
               placeholder="����">
         </div>
         
         <div class="inp_text">
            <input type="date" id="birth" name="birth"
               placeholder="�������">
         </div>
         
      </div>
      
      <div id="agree_text">
         �����ϸ� ICWORLD��  ���, ������ ��å<br/>
         &nbsp;&nbsp;&nbsp;&nbsp;�� ��Ű��å�� �����ϰ� �˴ϴ�.
      </div>
      
      <input type="button" id="join_bt" value="����" onclick="">
      

   </div>

</body>
</html>