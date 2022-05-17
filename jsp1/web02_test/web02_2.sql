desc customer;
create table place(pcode number primary key,
	ptype varchar2(1) not null,
	ptypename varchar2(50) not null,
	prop varchar2(2) not null,
	propname varchar2(50) not null
);
create sequence scott.place_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
-- pid ù ��° ���� ���� : A:�������, B:��ȭ����, C:����, D:����, E:����, F:ü��, G:������
-- pid �� ��° �����ڵ� ���� A - 11:��, 12:�غ�, 13:��, 14:����, 15:�ڹ���/�ڶ�ȸ, 16:�����׽ü�, 17:��ȭ�������, 18:�����Ǵ�������, 19:��Ÿ
insert into place values(place_seq.nextval, 'A', '�������', '11', '��');
insert into place values(place_seq.nextval, 'A', '�������', '12', '�غ�');
insert into place values(place_seq.nextval, 'A', '�������', '13', '��');
insert into place values(place_seq.nextval, 'A', '�������', '14', '����');
insert into place values(place_seq.nextval, 'A', '�������', '15', '�ڹ��� �� �ڶ�ȸ');
insert into place values(place_seq.nextval, 'A', '�������', '16', '���� �� �ü�');
insert into place values(place_seq.nextval, 'A', '�������', '17', '��ȭ�� �� ����');
insert into place values(place_seq.nextval, 'A', '�������', '18', '����� �Ǵ� ������');
insert into place values(place_seq.nextval, 'A', '�������', '19', '��Ÿ');

-- pid �� ��° �����ڵ� ���� B - 11:��ȭ�������, 12:����, 13:ü�����, 14:������, 15:���Ĺ�ȭ��, 16:����������, 17:��Ÿ��ȭ����
insert into place values(place_seq.nextval, 'B', '��ȭ����', '11', '��ȭ�������');
insert into place values(place_seq.nextval, 'B', '��ȭ����', '12', '����');
insert into place values(place_seq.nextval, 'B', '��ȭ����', '13', 'ü�����');
insert into place values(place_seq.nextval, 'B', '��ȭ����', '14', '������');
insert into place values(place_seq.nextval, 'B', '��ȭ����', '15', '���Ĺ�ȭ��');
insert into place values(place_seq.nextval, 'B', '��ȭ����', '16', '����������');
insert into place values(place_seq.nextval, 'B', '��ȭ����', '17', '��Ÿ��ȭ����');

-- pid �� ��° �����ڵ� ���� C - 11:ȣ��, 12:����, 13:�ܵ�, 14:���, 15:�ι�, 16:�Խ�Ʈ�Ͽ콺, 17:ķ�μ���, 18:������, 19:��Ÿ����
insert into place values(place_seq.nextval, 'C', '����', '11', 'ȣ��');
insert into place values(place_seq.nextval, 'C', '����', '12', '����');
insert into place values(place_seq.nextval, 'C', '����', '13', '�ܵ�');
insert into place values(place_seq.nextval, 'C', '����', '14', '���');
insert into place values(place_seq.nextval, 'C', '����', '15', '�ι�');
insert into place values(place_seq.nextval, 'C', '����', '16', '�Խ�Ʈ�Ͽ콺');
insert into place values(place_seq.nextval, 'C', '����', '17', 'ķ�μ���');
insert into place values(place_seq.nextval, 'C', '����', '18', '������');
insert into place values(place_seq.nextval, 'C', '����', '19', '��Ÿ����');

-- pid �� ��° �����ڵ� ���� D - 11:�ѽ�, 12:Ƚ��, 13:�߽�, 14:���, 15:�Ͻ�, 16:�н�, 17:����, 18:�����ƽ�, 19:��Ÿ�Ĵ�
insert into place values(place_seq.nextval, 'D', '����', '11', '�ѽ�');
insert into place values(place_seq.nextval, 'D', '����', '12', 'Ƚ��');
insert into place values(place_seq.nextval, 'D', '����', '13', '�߽�');
insert into place values(place_seq.nextval, 'D', '����', '14', '���');
insert into place values(place_seq.nextval, 'D', '����', '15', '�Ͻ�');
insert into place values(place_seq.nextval, 'D', '����', '16', '�н�');
insert into place values(place_seq.nextval, 'D', '����', '17', '����');
insert into place values(place_seq.nextval, 'D', '����', '18', '�����ƽ�');
insert into place values(place_seq.nextval, 'D', '����', '19', '��Ÿ�Ĵ�');

-- pid �� ��° �����ڵ� ���� E - 11:�������, 12:�������, 13:Ư�깰�Ǹ���, 14:����/����, 15:�ֹ�����, 16:5����, 17:���ŷ���, 18:���̺����, 19:��Ÿ����
insert into place values(place_seq.nextval, 'E', '����', '11', '�������');
insert into place values(place_seq.nextval, 'E', '����', '12', '�������');
insert into place values(place_seq.nextval, 'E', '����', '13', 'Ư�깰����');
insert into place values(place_seq.nextval, 'E', '����', '14', '����/����');
insert into place values(place_seq.nextval, 'E', '����', '15', '�ֹ�����');
insert into place values(place_seq.nextval, 'E', '����', '16', '5����');
insert into place values(place_seq.nextval, 'E', '����', '17', '���ŷ���');
insert into place values(place_seq.nextval, 'E', '����', '18', '���̺����');
insert into place values(place_seq.nextval, 'E', '����', '19', '��Ÿ����');

-- pid �� ��° �����ڵ� ���� F - 11:�����ü�, 12:ü��ü�, 13:�����ü�, 14:ķ�νü�, 15:�����ü��, 16:�̻�ü��, 17:���ý�����, 18:��Ʈ����, 19:VRü��
insert into place values(place_seq.nextval, 'F', 'ü��', '11', '�����ü�');
insert into place values(place_seq.nextval, 'F', 'ü��', '12', 'ü��ü�');
insert into place values(place_seq.nextval, 'F', 'ü��', '13', '�����ü�');
insert into place values(place_seq.nextval, 'F', 'ü��', '14', 'ķ�νü�');
insert into place values(place_seq.nextval, 'F', 'ü��', '15', '�����ü��');
insert into place values(place_seq.nextval, 'F', 'ü��', '16', '�̻�ü��');
insert into place values(place_seq.nextval, 'F', 'ü��', '17', '���ý�����');
insert into place values(place_seq.nextval, 'F', 'ü��', '18', '��Ʈ����');
insert into place values(place_seq.nextval, 'F', 'ü��', '19', 'VRü��');

-- pid �� ��° �����ڵ� ���� G - 11:�������, 12:�ÿܹ���, 13:�ó�����, 14:��������, 15:�ý�, 16:������������, 17:��Ʈī, 18:����ũ, 19:���������
--                          - 21:ö��-ȣ����, 22:ö��-������, 23:ö��-���ؼ�, 24:ö��-KTX
--                          - 31:������, 32:������, 33:��Ʈ, 34:ũ����, 35:���ù�뿩, 36:���ε��湮�װ�༱��
--                          - 41:��������, 42:���ְ���, 43:������, 44:û�ְ���, 45:�ؿܰ���, 46:������Ÿ
insert into place values(place_seq.nextval, 'G', '����', '11', '�������');
insert into place values(place_seq.nextval, 'G', '����', '12', '�ÿܹ���');
insert into place values(place_seq.nextval, 'G', '����', '13', '�ó�����');
insert into place values(place_seq.nextval, 'G', '����', '14', '��������');
insert into place values(place_seq.nextval, 'G', '����', '15', '�ý�');
insert into place values(place_seq.nextval, 'G', '����', '16', '������������');
insert into place values(place_seq.nextval, 'G', '����', '17', '��Ʈī');
insert into place values(place_seq.nextval, 'G', '����', '18', '����ũ');
insert into place values(place_seq.nextval, 'G', '����', '19', '���������');

insert into place values(place_seq.nextval, 'G', '����', '21', 'ȣ�����ö��');
insert into place values(place_seq.nextval, 'G', '����', '22', '������ö��');
insert into place values(place_seq.nextval, 'G', '����', '23', '���ؼ�ö��');
insert into place values(place_seq.nextval, 'G', '����', '24', '�ż�KTX');

insert into place values(place_seq.nextval, 'G', '����', '31', '������');
insert into place values(place_seq.nextval, 'G', '����', '32', '������');
insert into place values(place_seq.nextval, 'G', '����', '33', 'ũ����');
insert into place values(place_seq.nextval, 'G', '����', '34', '���ù�뿩');
insert into place values(place_seq.nextval, 'G', '����', '35', '���ε��湮 �� ��༱��');

insert into place values(place_seq.nextval, 'G', '����', '41', '��������');
insert into place values(place_seq.nextval, 'G', '����', '42', '���ְ���');
insert into place values(place_seq.nextval, 'G', '����', '43', '������');
insert into place values(place_seq.nextval, 'G', '����', '44', 'û�ְ���');
insert into place values(place_seq.nextval, 'G', '����', '45', '�ؿܰ���');
insert into place values(place_seq.nextval, 'G', '����', '46', '��Ÿ��������');

-- pid �� ��° �����ڵ� ���� H - 11:�ڽ�����
commit;