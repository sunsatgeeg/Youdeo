insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('admin','admin','admin','admin@youdeo.com','01000000000');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('sjssj7777','1111','한상길','sjssj7777@naver.com','01041871578');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('asdf','asdf','홍길동','asdf@naver.com','01012345678');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('guest','guest','궤스트','guest@naver.com','01013513412');
insert into userinfo(u_id,u_password,u_name,u_email,u_phone) values('anon','anon','언노운','anon@naver.com','01012231523');



insert into video(v_no, v_title, v_description, v_category, u_id) 
values(video_v_no_SEQ.nextval, '제목', '내용', '호러', 'sjssj7777');



insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'sjssj7777', 'asdf', 0);

insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'sjssj7777', 'admin', 0);

insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'sjssj7777', 'anon', 0);

insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'sjssj7777', 'guest', 0);

insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'anon', 'guest', 0);

insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'anon', 'sjssj7777', 0);

insert into subscription(s_no, u_id, s_id, s_alram) 
values(subscription_s_no_SEQ.nextval, 'guest', 'admin', 0);




insert into v_comment(c_no, c_date, c_content, u_id, v_no) 
values(v_comment_c_no_SEQ.nextval, '2000-01-01', '댓글내용', 'sjssj7777', 1);