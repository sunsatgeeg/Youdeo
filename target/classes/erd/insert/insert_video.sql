insert into video(v_no, v_title, v_description, v_category, u_id) 
values(video_v_no_SEQ.nextval, '제목', '내용', '홀어', 'sjssj7777');

select * from video
		where v_no = 1;

select * from video where v_title LIKE '%1%';

select * from video
		where v_title LIKE '%1%';