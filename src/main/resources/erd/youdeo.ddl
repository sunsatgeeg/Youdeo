DROP TABLE view_history CASCADE CONSTRAINTS;
DROP TABLE subscription CASCADE CONSTRAINTS;
DROP TABLE v_comment CASCADE CONSTRAINTS;
DROP TABLE upload_video CASCADE CONSTRAINTS;
DROP TABLE userinfo CASCADE CONSTRAINTS;

CREATE TABLE userinfo(
		u_id                          		VARCHAR2(100)		 NULL ,
		u_password                    		VARCHAR2(100)		 NULL ,
		u_name                        		VARCHAR2(100)		 NULL ,
		u_email                       		VARCHAR2(100)		 NULL ,
		u_phone                       		VARCHAR2(100)		 NULL 
);


CREATE TABLE upload_video(
		v_no                          		NUMBER(10)		 NULL ,
		v_title                       		VARCHAR2(100)		 NULL ,
		v_description                 		VARCHAR2(100)		 NULL ,
		uv_d                          		DATE		 DEFAULT sysdate		 NULL ,
		v_category                    		VARCHAR2(100)		 NULL ,
		v_views                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		v_good                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		v_bad                         		NUMBER(10)		 DEFAULT 0		 NULL ,
		u_id                          		VARCHAR2(100)		 NULL 
);


CREATE TABLE v_comment(
		c_no                          		NUMBER(10)		 NULL ,
		c_date                        		DATE		 DEFAULT sysdate		 NULL ,
		c_content                     		VARCHAR2(1000)		 NULL ,
		u_id                          		VARCHAR2(100)		 NULL ,
		v_no                          		NUMBER(10)		 NULL 
);


CREATE TABLE subscription(
		u_id                          		VARCHAR2(100)		 NULL ,
		s_id                          		VARCHAR2(100)		 NULL 
);


CREATE TABLE view_history(
		u_id                          		VARCHAR2(100)		 NULL ,
		v_no                          		NUMBER(10)		 NULL ,
		vh_date                       		DATE		 DEFAULT sysdate		 NULL 
);



ALTER TABLE userinfo ADD CONSTRAINT IDX_userinfo_PK PRIMARY KEY (u_id);

ALTER TABLE upload_video ADD CONSTRAINT IDX_upload_video_PK PRIMARY KEY (v_no);
ALTER TABLE upload_video ADD CONSTRAINT IDX_upload_video_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);

ALTER TABLE v_comment ADD CONSTRAINT IDX_v_comment_PK PRIMARY KEY (c_no);
ALTER TABLE v_comment ADD CONSTRAINT IDX_v_comment_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);
ALTER TABLE v_comment ADD CONSTRAINT IDX_v_comment_FK1 FOREIGN KEY (v_no) REFERENCES upload_video (v_no);

ALTER TABLE subscription ADD CONSTRAINT IDX_subscription_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);

ALTER TABLE view_history ADD CONSTRAINT IDX_view_history_FK0 FOREIGN KEY (u_id) REFERENCES userinfo (u_id);
ALTER TABLE view_history ADD CONSTRAINT IDX_view_history_FK1 FOREIGN KEY (v_no) REFERENCES upload_video (v_no);

