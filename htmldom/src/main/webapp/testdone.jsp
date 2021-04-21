<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오또케 가지고 오지</title>
<script type="text/javascript">
	var test = '<a href="https://www.naver.com/">naver로 </a> <br/> <img src="https://ssl.pstatic.net/tveta/libs/1327/1327542/b0024043079f3ad40720_20201130103937804_4.jpg" /> </br> <a href="https://zdnet.co.kr/view/?no=20210323082745">뉴스 1</a> <br/> <img src="https://s.pstatic.net/static/newsstand/2021/0323/article_img/new_main/9027/122200_001.jpg" /> <br/> <img src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F2021%2F0317%2Fupload_1615968896092VxjcN.jpg%22&type=nf340_228" /> <br/> <a href="https://post.naver.com/viewer/postView.nhn?volumeNo=30961060&memberNo=36236175&navigationType=push">테스트1</a><br/><a href="https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=%3C%2F%EB%82%98%EB%B9%84%3E&oquery=%3C%EB%82%98%EB%B9%84%3E&tqi=haERylprvTossKZJvdGssssst%2BG-270464"><나비> 검색 </a><br/><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMjJfNTAg%2FMDAxNjExMjQ0ODI2NTc0.z8MeRfJNEhtbdki4D9W9EQTbKOKNg5K2FmBnrLxj5aog.25XMhYZbOOjrqEXEfAetrm20adJSzEP502AGizIP-o4g.JPEG.ab01294%2F%25EA%25BE%25B8%25EB%253F%25B8%25EA%25B8%25B020210114_120510.jpg&type=b280"></img>'

	function button1_click() {

		var ps = document.getElementById("test").innerHTML = document
				.write(test)

	}

	var results = test.match(/href/g);
	var results2 = test.match(/img/g);

	document.write("외부로 나가는 링크 개수: ", results.length, '<br/>');
	document.write("이미지의 개수 : ", results.length, '<br/>');

	var alink = test.split('"');

	// for (var i = 0; i < alink.length; i++) {
	//
	// if (alink[i].includes('//')) {
	// console.log(alink[i]);
	// document.write("링크 :");
	// document.write(alink[i]);
	// document.write('<br/>');
	// }

	// }

	for (var t = 0; t < alink.length; t++) {
		var isitstring = String(alink[t]);
		//console.log(isitstring);

		if (!isitstring.includes('href') && !isitstring.includes('img')
				&& !isitstring.includes('</')) {

			console.log(isitstring);

			document.write("<a href=", isitstring,">");
			document.write(isitstring);
			document.write("<a/>");
			document.write('<br/>');

		}

	}
</script>
</head>
<body>
	<button id="button1" onclick="button1_click();">실험버튼</button>
	<div id="test"></div>

</body>
</html>