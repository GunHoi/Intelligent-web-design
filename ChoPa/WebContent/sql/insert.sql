use ChoPadb;
INSERT INTO product VALUES('P1000','모닛 스마트',168000,'아기의 상태와 주변환경을 알려주는 모닛 스마트 베이비 모니터 FULL PACAKAGE. 어플로 기저귀 상태를 확인 가능, 아기방을 쾌적하게 하는 온도,습도 맞춤 알림, 아기의 수면 패턴을 한눈에!','아기용품','MONIT',10,'NEW','monit.jpg','admin');
INSERT INTO product VALUES('P1001','치코 보틀워머',53700,'모유와 이유식을 먹일 때, 적정 온도를 맞추는 것이 어려운 이들을 위한 육아 아이템이다. 미리 준비해 둔 젖병이나 이유식 용기를 보틀워머에 올리고 37도에 맞춰 데워지면,다이얼 알람으로 알려줘 쉽고 편하게 모유와 이유식을 데울 수 있도록 도와준다.','아기용품','Chicco',20,'NEW','Chicco.jpg','admin');
INSERT INTO product VALUES('P1002','미니메이즈',169000,'목마형 아기띠로 아이들에게 더 높은 세상을!','아기용품','MiniMeis',10,'NEW','minimeis.jpg','admin');
INSERT INTO product VALUES('P2000','뽀로로 오뚝이',8000,'아이들이 좋아하는 뽀로로와 오뚝이의 조화!','장난감','i-zone',3,'Refurbished','P1000.jpg','user');
INSERT INTO product VALUES('P2001','매트 키즈 뮤지컬 카펫',15000,'아기들이 편하게 앉을 수 있는 매트와 피아노 장난감','장난감','i-zone',1,'Old','P1001.jpg','user');
INSERT INTO product VALUES('P3000','아빠의 대화 혁명',10000,'좋은 아빠가 되기 위한 대화 기술 60가지','도서','웅진주니어',10,'New','P2000.jpg','user1');
INSERT INTO product VALUES('P3001','하루 5분 아빠 목소리',8000,'태교 동화를 읽는 시간, 지혜를 배우는 아이','도서','위즈덤 하우스',4,'Old','P2001.jpg','user1');


INSERT INTO user VALUES('admin','admin1234','관리자','남자','admin@kyonggi.ac.kr');
INSERT INTO user VALUES('user','user1234','사용자','남자','user@kyonggi.ac.kr');
INSERT INTO user VALUES('user1','user1234','사용자','여자','user@kyonggi.ac.kr');

INSERT INTO bbs VALUES('1','공지사항','admin','2021-11-11 11:11:11','첫번째 테스트글 유저는 삭제 불가능','1');
INSERT INTO bbs VALUES('2','두번째 글','user','2021-12-12 12:12:12','두번째 테스트글','1');
INSERT INTO bbs VALUES('3','가입인사','user1','2021-12-24 12:00:00','user1이 작성한 글로 user는 삭제 불가능','1');