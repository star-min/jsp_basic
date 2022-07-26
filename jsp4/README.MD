# 쇼핑몰 Discoveryvery

인터넷 쇼핑몰 구현 프로젝트 입니다.
캠핑용품 을 주제로 한 쇼핑몰 입니다.

# Description

- 개발 기간: 약 2주

- 참여 인원: 1명

- 개발 도구
 
  - eclipse, visual studio code, spring studio, bootstrap

- 개발 환경

  - Spring 4.0 + Apache Tomcat 9.0 + Oracle11g_XE + Mybatis

- 사용 기술

  - Java,  Ajax,  Jquery,  Git,  Spring MVC

- 빌드 도구

  - maven

- 테스트 도구

  - jUnit4

- 사용 라이브러리

  - Inject.jar, Servlet.jar, junit.jar, spring-test.jar,
  - maven-war.jar, lombok.jar, log4jdbc.jar,
  - HikariCP.jar, spring-jdbc.jar


# Views

- **메인**

  <p align="center"><img src="./main.png"/></p>






- **게시판 카테고리** 

  <p align="center"><img src="./notice.png"/></p>





- **QNA 카테고리**

  <p align="center"><img src="./qnaList.png"/></p>





- **자료제출 카테고리**

  <p align="center"><img src="./database.png"/></p>




# Implementation

- #### 메인화면

  <p align="center"><img src="./notice2.png"/></p>
  <p align="center"><img src="./notice3.png"/></p>

  - **메뉴설정**

    1. 메인메뉴에선 4개의 게시판의 최신글을 5개까지 출력하는 기능을 넣었습니다.

    2. HomeController 에서 Service.List 들을 불러와 뿌려준다면 전역적으로 값을 뿌릴수 있지않을까 생각했습니다.





------



- #### 회원 기능

  <p align="center"><img src="./pwd.png"/></p>

  - **로그인, 회원가입, 회원목록, 마이페이지** 

    1. 통계청을 모티브로 한 사이트에 왜 회원기능이 있나? 라고 생각하실수도 있습니다.

    2. 그렇다고 이곳에 회원기능을 넣지 않으면 이 프로젝트만 확인하신 분께선 " 이녀석 회원기능은 기본인데 안넣었네" 라고 생각하실까봐 넣었습니다.

    3. security 라이브러리의 BCryptPasswordEncoder 를 import시켜 암호화를 사용중입니다.

 

------

- #### 게시판 기능

  <p align="center"><img src="./list.png"/></p>
  <p align="center"><img src="./ck.png"/></p>
  <p align="center"><img src="./notice1.png"/></p>

  - **(ckEditor)글쓰기, 글보기, (PageMaker)글목록, 글수정, 글삭제**

    1. list 에서  PageMaker를 사용해 글목록에 10개 묶음씩 페이지를 나눴습니다 해당 게시판의
    Controller에서 값을 변경시켜 묶음이나 페이지의 개수등을 설정할수있습니다.

    2. insert form은 ckEditor를 이용해 좀더 그럴듯하게 만들어 봤습니다.

    3. 이번 프로젝트에서 가장 힘을 써야겠다고 생각한 부분인 게시판이지만 pageMaker와 ckEditor 를 이용해 편리하게 작성했습니다 하지만 100% 전부 사용 할 수 있지는 않습니다 이번 프로젝트에선 이해하는데 그쳣지만 좀더 공부해 제것으로 만들 필요가 있습니다.

------   

- #### QNA 기능

  <p align="center"><img src="./qnaList2.png"/></p>
  <p align="center"><img src="./qnaRe.png"/></p>
  <p align="center"><img src="./qnaRead.png"/></p>
  
  - **목록 구현 기능**

    1. a태그에 의한 Get방식으로 호출된 경우.

    2. 검색 창(Form)에서 검색방법과 검색어를 입력받아 처리하는 POST방식의 경우.

  - **질문, 답변 기능**

    1. 하나의 테이블을 사용해 질문과 답변기능을 구현.

    2. 테이블의 column만을 사용해 질문과 답변을 나누고 묶어 정렬. 



------

- #### 상품 기능

  <p align="center"><img src="./goods0.jpg"/></p>
  <p align="center"><img src="./goods1.png"/></p>

  - **텐트 서브메뉴만 구성 되어 있음**

    1. 서브메뉴의 텐트상품의 종류는 리스트에서 카테고리별로 페이지를 열수있도록 했습니다.

    2. 상품을 클릭해 상세보기로 보시면 장바구니에 담기 와 바로 결제하기 가 있습니다.


------

- #### 장바구니 기능

  <p align="center"><img src="./basket.jpg"/></p>
  <p align="center"><img src="./basket2.jpg"/></p>

  - **장바구니 내 상품 상세보기, 상품 구매하기 기능을 수행**

    1. 장바구니 내의 상품 이름을 클릭하시면 해당상품의 정보가 뜨게되는데 SQL 문의 INNER JOIN 을 사용해 goods의 상품과 basket의 등록번호를 묶어 가져올수 있도록 했습니다.




------

- #### 결제 기능

  <p align="center"><img src="./pay.jpg"/></p>
  <p align="center"><img src="./pay2.png"/></p>
  <p align="center"><img src="./pay3.png"/></p>
  <p align="center"><img src="./pay4.png"/></p>

  - **결제와 관리자의 송장등록**

    1. 결제페이지입니다 수량 옆에 확정 버튼이 있는 이유는 제가 jQuery를 잘 모를때 작성을 한것이라 Java Script의 onclick 기능을 사용해서
    만들었습니다 지금이라면 jQuery를 이용해 만들것같습니다.

    2. 결제목록에서 결제정보를 클릭하면 배송지를 수정할수 있습니다.
    
    3. 관리자는 주문목록에서 해당 결제정보를 클릭하여 송장과 배송 상황을 입력할수 있습니다.



<!-- - # Log 설정 -->




       

# Trouble Shooting 

  <p align="center"><img src="./err.jpg"/></p>
  <p align="center"><img src="./err1.jpg"/></p>
  <p align="center"><img src="./err2.jpg"/></p>
  <p align="center"><img src="./err3.jpg"/></p>

    1. 장바구니를 만들었을때 일어난 404에러입니다 콘솔로그 에 메시지가 뜨지않아 찾기 난감했지만 작성한것을 돌아보니 어노테이션을 작성하지 않아 일어난 문제였습니다.

    2. 똑 같은 에러가 발생시 수정 속도를 높이고자 결함 관리대장을 임시로 만들었습니다.




# 스케쥴 및 유즈케이스

<p align="center"><img src="./UI.png"/><img src="./seulke2.png"/><img src="./seulke3.png"/></p>

  - **UI프로세스**
    - 설계당시 만든 UI프로세스입니다.


