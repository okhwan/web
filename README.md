JSP 프로젝트는 매주 JSP_PROJECT 디렉터리에 파일을 추가해나가고있습니다.

## 아가랑

웹프로그래밍
자바 프로젝트와 마찬가지로 쇼핑몰 앱을 진행 함에 있어서 웹프로그래밍은 하지 않고 있지만 웹프로그래밍을 배우면서
웹으로도 쇼핑몰을 진행해보겠습니다.

구현기능
판매자는 물품을 등록하고 수정할 수있고
구매자는 물품을 구매하고 금액을 충전할 수 있습니다.

데이터베이스 테이블은 3개로
1. product (상품) 테이블   
2. celler (판매자) 판매자 정보 테이블   
3. members (구매자) 구매자 정보 테이블   
로 상품 테이블에는 cell_id를 두어서 celler 테이블에 판매자 id를 외래키로 설정하여서
판매자는 로그인 시 본인 물품을 수정하려하면   
본인 id를 따와서 본인 물품만 나와 수정할 수 있도록 만들었습니다.   
아래는 각 jsp파일에 대한 순서를 나열했습니다.
![KakaoTalk_20220606_221403873](https://user-images.githubusercontent.com/95335311/172167746-7e14f0c8-40db-4dfd-b44d-a70cd6ddce98.jpg)


   

