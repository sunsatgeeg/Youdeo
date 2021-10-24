insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('admin','admin','admin','admin@youdeo.com','01000000000');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('sjssj7777','1111','한상길','sjssj7777@naver.com','01041871578');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('asdf','asdf','홍길동','asdf@naver.com','01012345678');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('guest','guest','궤스트','guest@naver.com','01013513412');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('anon','anon','언노운','anon@naver.com','01012231523');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('test','test','테스트','test@naver.com','01011245122');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('geeg','geeg','기이익','geeg@naver.com','01012541234');


insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');
insert into video(v_no, v_title, v_description, v_category, u_id, v_time) values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777','32');


insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'geeg', 'asdf', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'geeg', 'admin', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'geeg', 'anon', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'geeg', 'guest', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'geeg', 'sjssj7777', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'anon', 'sjssj7777', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'anon', 'guest', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'guest', 'admin', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'admin', 'sjssj7777', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'test', 'sjssj7777', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'guest', 'sjssj7777', 0);
insert into subscription(s_no, u_id, s_id, s_alram) values(subscription_s_no_SEQ.nextval, 'asdf', 'sjssj7777', 0);


insert into v_comment(c_no, c_date, c_content, u_id, v_no) values(v_comment_c_no_SEQ.nextval, '2000-01-01', '댓글내용', 'sjssj7777', 1);

commit;