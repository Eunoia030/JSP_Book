
function bookCheck(){
   if(document.frm.category.value.length == 0){
   alert("카테고리를 입력하세요.");
   return false;
   }
   if(document.frm.title.value.length == 0){
   alert("제목을 입력하세요.");
   return false;
   }
   if(document.frm.price.value.length == 0){
   alert("가격을 입력하세요.");
   return false;
   }
   if(document.frm.summary.value.length == 0){
   alert("줄거리를 입력하세요.");
   return false;
   }
   if(document.frm.author.value.length ==0 ){
   alert("작가를 입력하세요.");
   return false;
   }
   if(document.frm.pub.value.length ==0 ){
   alert("출판사를 입력하세요.");
   return false;
   }
   if(document.frm.grade.value.length ==0 ){
   alert("평점을 입력하세요.");
   return false;
   }
   return true;
}

function bookCheck(){
   if(document.frm.category.value.length == 0){
   alert("카테고리를 입력하세요.");
   return false;
   }
   
   if(document.frm.title.value.length == 0){
   alert("제목을 입력하세요.");
   return false;
   }
   
   if(document.frm.price.value.length == 0){
   alert("가격을 입력하세요.");
   return false;
   }
   
   if(document.frm.summary.value.length == 0){
   alert("줄거리를 입력하세요.");
   return false;
   }
   
   if(document.frm.author.value.length ==0 ){
   alert("작가를 입력하세요.");
   return false;
   }
   
   if(document.frm.pub.value.length ==0 ){
   alert("출판사를 입력하세요.");
   return false;
   }
   
   if(document.frm.grade.value.length ==0 ){
   alert("평점을 입력하세요.");
   return false;
   }
   
   return true;
}

function buttonClick() {
	let id = "${member.id}";
	if (id == ""){
    			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
    			location.href="MemberServlet?command=member_login";
    		} else {
    			location.href="MemberServlet?command=book_main";
    		}
}