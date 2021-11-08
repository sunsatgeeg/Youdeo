select u_id, s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 where u_id='geeg';
select s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 GROUP BY s_id order by s_count desc;

select s2.u_id, s2.s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count, u.u_id from subscription s2, userinfo u where s2.u_id='geeg';
select * from subscription s join userinfo u on s.s_id= u.u_id where s.u_id='geeg';

select * from (select rownum as rnum, vc.* from (select * from v_comment order by c_date desc) vc where vc.v_no=2) c join userinfo u on c.u_id = u.u_id where rnum between 1 and 50 order by rnum;
select * from (select rownum as rnum, v.* from (select * from video order by v_date desc) v) v1 join userinfo u on v1.u_id = u.u_id where rnum between 1 and 16 order by rnum;
select rownum as rnum, vc.* from (select * from v_comment order by c_date desc) vc where vc.v_no=1;

select s.s_no, s.u_id, s.s_id, s.s_alram,(select count(*) from subscription s1 where s1.s_id=s.s_id) s_count, u.u_name, u.u_email, u.u_phone, u.u_profileimg, u.u_bannerimg, u.u_verified from subscription s join userinfo u on s.s_id = u.u_id where s.u_id='geeg';
select * from (select s_id, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s GROUP BY s_id) sg join userinfo u on sg.s_id=u.u_id order by s_count desc;
select s_id, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s where s_id='sjssj7777' GROUP BY s_id;


select * from subscription s1 join (select s_id, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s GROUP BY s_id) s2 on s1.s_id=s2.s_id group by s_id;

select s.s_no, s.u_id, s.s_id, s.s_alram, s_count from (select s_no, u_id, s_id, s_alram, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s GROUP BY s_id);

select * from subscription where s_no= (select s_no from subscription where u_id='test' and s_id='sjssj7777');
delete subscription where s_no = (select s_no from subscription where u_id='test' and s_id='sjssj7777');
select s_no from subscription where u_id='test' and s_id='sjssj7777';

select * from video v
join userinfo u
on v.u_id=u.u_id
where v_no = 1;

select * from video;
select * from subscription;

select * from (select rownum as rnum, v.* from (select * from video order by v_date desc) v) v1 join userinfo u on v1.u_id = u.u_id where rnum between 1 and 16 order by rnum;

select * from (select rownum as rnum, v.* from subscription s join (select * from video order by v_date desc) v on s.s_id=v.u_id where s.u_id='geeg') where rnum between 32 and 28 order by rnum;

select video_v_no_SEQ.currval from dual;

insert into video(v_views) values(select v_views from video where v_no=15)+1;

update video set v_views=(select v_views from video where v_no=15)+1 where v_no=15;