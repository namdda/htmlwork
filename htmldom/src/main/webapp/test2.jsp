<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오또케 가지고 오지</title>

</head>
<body>

	<a href="https://www.naver.com/">naver로 </a>
	<br />
	<img
		src="https://ssl.pstatic.net/tveta/libs/1327/1327542/b0024043079f3ad40720_20201130103937804_4.jpg" />
	</br>
	<a href="https://zdnet.co.kr/view/?no=20210323082745">뉴스 1</a>
	<br />
	<img
		src="https://s.pstatic.net/static/newsstand/2021/0323/article_img/new_main/9027/122200_001.jpg" />
	<br />
	<img
		src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F2021%2F0317%2Fupload_1615968896092VxjcN.jpg%22&type=nf340_228" />
	<br />
	<a
		href="https://post.naver.com/viewer/postView.nhn?volumeNo=30961060&memberNo=36236175&navigationType=push">테스트1</a>
	<br />
	<a
		href="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%3C%2F%EB%82%98%EB%B9%84%3E&oquery=%3C%EB%82%98%EB%B9%84%3E&tqi=haERylprvTossKZJvdGssssst%2BG-270464"><나비>
		검색 </a>
	<br />
	<img
		src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMjJfNTAg%2FMDAxNjExMjQ0ODI2NTc0.z8MeRfJNEhtbdki4D9W9EQTbKOKNg5K2FmBnrLxj5aog.25XMhYZbOOjrqEXEfAetrm20adJSzEP502AGizIP-o4g.JPEG.ab01294%2F%25EA%25BE%25B8%25EB%253F%25B8%25EA%25B8%25B020210114_120510.jpg&type=b280"></img>'

	<br/>
	<button id="button1" onclick="getlength2();">실험버튼</button>
	
	<p id="demo"></p>
	<p id="demo2"></p>
	
	<script type="text/javascript">
	
	var atag = document.getElementsByTagName("a");
	var imgtag = document.getElementsByTagName("img");
	
	var test; 
	console.log( atag);
	console.log(atag.length);
	console.log(imgtag);
	console.log(imgtag.length);
	
	document.getElementById("demo").innerHTML = atag.length;
	document.getElementById("demo2").innerHTML = imgtag.length;
	
	
	function button1_click() {
		document.getElementById("demo").innerHTML = getlength();
		
	

	}
</script>

</body>
</html>