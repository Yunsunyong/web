drop table boardList cascade constraints;
drop table sign_up CASCADE CONSTRAINTS;
drop sequence seq_bid;

create table boardList(
    BID number,
    BTITLE VARCHAR2(20) CONSTRAINT NN_BTITLE NOT NULL,
    BWRITER VARCHAR2(12) CONSTRAINT NN_BWRITER NOT NULL,
    BDATE VARCHAR2(20) CONSTRAINT NN_BDATE NOT NULL,
    CONTENT CLOB,
    COUNT NUMBER,
    CONSTRAINT PK_BID PRIMARY KEY (BID)
);

create table sign_up (
    userid varchar2(20),
    pwd char(16) constraint nn_upwd not null,
    uname varchar2(18) constraint nn_uname not null,
    user_date varchar2(12) constraint nn_udate not null,
    gender char(1) default 'M' constraint nn_ugender not null,
    email varchar2(30),
    adress varchar2(80) constraint nn_uadress not null,
    phone char(13) constraint nn_uphone not null,
    constraint pk_user_id primary key (userid)
);

CREATE SEQUENCE SEQ_BID
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

commit;