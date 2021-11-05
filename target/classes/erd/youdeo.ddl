DROP TABLE view_history CASCADE CONSTRAINTS;
DROP TABLE subscription CASCADE CONSTRAINTS;
DROP TABLE v_comment CASCADE CONSTRAINTS;
DROP TABLE video CASCADE CONSTRAINTS;
DROP TABLE userinfo CASCADE CONSTRAINTS;

CREATE TABLE userinfo(
		u_id                          		VARCHAR2(100)		 NULL ,
		u_password                    		VARCHAR2(100)		 NULL ,
		u_name                        		VARCHAR2(100)		 NULL ,
		u_email                       		VARCHAR2(100)		 NULL ,
		u_phone                       		VARCHAR2(100)		 NULL ,
		u_profileimg                  		VARCHAR2(100)		 DEFAULT 'none.png'		 NULL ,
		u_bannerimg                   		VARCHAR2(100)		 DEFAULT 'none_b.jpg'		 NULL ,
		u_verified                    		NUMBER(10)		 DEFAULT 0		 NULL 
);


CREATE TABLE video(
		v_no                          		NUMBER(10)		 NULL ,
		v_title                       		VARCHAR2(100)		 NULL ,
		v_description                 		VARCHAR2(100)		 NULL ,
		v_date                        		DATE		 DEFAULT sysdate		 NULL ,
		v_time                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		v_category                    		VARCHAR2(100)		 NULL ,
		v_tag                         		VARCHAR2(100)		 NULL ,
		v_views                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		v_good                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		v_bad                         		NUMBER(10)		 DEFAULT 0		 NULL ,
		u_id                          		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE video_v_no_SEQ;

CREATE SEQUENCE video_v_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE v_comment(
		c_no                          		NUMBER(10)		 NULL ,
		c_date                        		DATE		 DEFAULT sysdate		 NULL ,
		c_content                     		VARCHAR2(1000)		 NULL ,
		u_id                          		VARCHAR2(100)		 NULL ,
		v_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE v_comment_c_no_SEQ;

CREATE SEQUENCE v_comment_c_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE subscription(
		s_no                          		NUMBER(10)		 NULL ,
		u_id                          		VARCHAR2(100)		 NULL ,
		s_id                          		VARCHAR2(100)		 NULL ,
		s_alram                       		NUMBER(10)		 DEFAULT 1		 NULL 
);

DROP SEQUENCE subscription_s_no_SEQ;

CREATE SEQUENCE subscription_s_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE view_history(
		vh_no                         		NUMBER(10)		 NULL ,
		u_id                          		VARCHAR2(100)		 NULL ,
		v_no                          		NUMBER(10)		 NULL ,
		vh_date                       		DATE		 DEFAULT sysdate		 NULL 
);

DROP SEQUENCE view_history_vh_no_SEQ;

CREATE SEQUENCE view_history_vh_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



ALTER TABLE userinfo ADD CONSTRAINT IDX_userinfo_PK PRIMARY KEY (u_id);

ALTER TABLE video ADD CONSTRAINT IDX_video_PK PRIMARY KEY (v_no);
ALTER TABLE video ADD CONSTRAINT IDX_video_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);

ALTER TABLE v_comment ADD CONSTRAINT IDX_v_comment_PK PRIMARY KEY (c_no);
ALTER TABLE v_comment ADD CONSTRAINT IDX_v_comment_FK0 FOREIGN KEY (v_no) REFERENCES video (v_no);
ALTER TABLE v_comment ADD CONSTRAINT IDX_v_comment_FK1 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);

ALTER TABLE subscription ADD CONSTRAINT IDX_subscription_PK PRIMARY KEY (s_no);
ALTER TABLE subscription ADD CONSTRAINT IDX_subscription_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);

ALTER TABLE view_history ADD CONSTRAINT IDX_view_history_PK PRIMARY KEY (vh_no);
ALTER TABLE view_history ADD CONSTRAINT IDX_view_history_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);
ALTER TABLE view_history ADD CONSTRAINT IDX_view_history_FK1 FOREIGN KEY (v_no) REFERENCES video (v_no);

