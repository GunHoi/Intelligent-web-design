use ChoPadb;
INSERT INTO product VALUES('P1000','��� ����Ʈ',168000,'�Ʊ��� ���¿� �ֺ�ȯ���� �˷��ִ� ��� ����Ʈ ���̺� ����� FULL PACAKAGE. ���÷� ������ ���¸� Ȯ�� ����, �Ʊ���� �����ϰ� �ϴ� �µ�,���� ���� �˸�, �Ʊ��� ���� ������ �Ѵ���!','�Ʊ��ǰ','MONIT',10,'NEW','monit.jpg','admin');
INSERT INTO product VALUES('P1001','ġ�� ��Ʋ����',53700,'������ �������� ���� ��, ���� �µ��� ���ߴ� ���� ����� �̵��� ���� ���� �������̴�. �̸� �غ��� �� �����̳� ������ ��⸦ ��Ʋ���ӿ� �ø��� 37���� ���� ��������,���̾� �˶����� �˷��� ���� ���ϰ� ������ �������� ���� �� �ֵ��� �����ش�.','�Ʊ��ǰ','Chicco',20,'NEW','Chicco.jpg','admin');
INSERT INTO product VALUES('P1002','�̴ϸ�����',169000,'���� �Ʊ��� ���̵鿡�� �� ���� ������!','�Ʊ��ǰ','MiniMeis',10,'NEW','minimeis.jpg','admin');
INSERT INTO product VALUES('P2000','�Ƿη� ������',8000,'���̵��� �����ϴ� �Ƿηο� �������� ��ȭ!','�峭��','i-zone',3,'Refurbished','P1000.jpg','user');
INSERT INTO product VALUES('P2001','��Ʈ Ű�� ������ ī��',15000,'�Ʊ���� ���ϰ� ���� �� �ִ� ��Ʈ�� �ǾƳ� �峭��','�峭��','i-zone',1,'Old','P1001.jpg','user');
INSERT INTO product VALUES('P3000','�ƺ��� ��ȭ ����',10000,'���� �ƺ��� �Ǳ� ���� ��ȭ ��� 60����','����','�����ִϾ�',10,'New','P2000.jpg','user1');
INSERT INTO product VALUES('P3001','�Ϸ� 5�� �ƺ� ��Ҹ�',8000,'�±� ��ȭ�� �д� �ð�, ������ ���� ����','����','����� �Ͽ콺',4,'Old','P2001.jpg','user1');


INSERT INTO user VALUES('admin','admin1234','������','����','admin@kyonggi.ac.kr');
INSERT INTO user VALUES('user','user1234','�����','����','user@kyonggi.ac.kr');
INSERT INTO user VALUES('user1','user1234','�����','����','user@kyonggi.ac.kr');

INSERT INTO bbs VALUES('1','��������','admin','2021-11-11 11:11:11','ù��° �׽�Ʈ�� ������ ���� �Ұ���','1');
INSERT INTO bbs VALUES('2','�ι�° ��','user','2021-12-12 12:12:12','�ι�° �׽�Ʈ��','1');
INSERT INTO bbs VALUES('3','�����λ�','user1','2021-12-24 12:00:00','user1�� �ۼ��� �۷� user�� ���� �Ұ���','1');