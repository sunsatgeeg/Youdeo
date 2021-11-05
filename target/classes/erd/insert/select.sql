select u_id, s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 where u_id='geeg';
select s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 GROUP BY s_id order by s_count desc;

select s2.u_id, s2.s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count, u.u_id from subscription s2, userinfo u where s2.u_id='geeg';
select * from subscription s join userinfo u on s.s_id= u.u_id where s.u_id='geeg';


select s.s_no, s.u_id, s.s_id, s.s_alram,(select count(*) from subscription s1 where s1.s_id=s.s_id) s_count, u.u_name, u.u_email, u.u_phone, u.u_profileimg, u.u_bannerimg, u.u_verified from subscription s join userinfo u on s.s_id = u.u_id where s.u_id='geeg';
select * from (select s_id, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s GROUP BY s_id) sg join userinfo u on sg.s_id=u.u_id order by s_count desc;
select s_id, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s where s_id='sjssj7777' GROUP BY s_id;


select * from subscription s1 join (select s_id, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s GROUP BY s_id) s2 on s1.s_id=s2.s_id group by s_id;

select s.s_no, s.u_id, s.s_id, s.s_alram, s_count from (select s_no, u_id, s_id, s_alram, (select count(*) from subscription s1 where s1.s_id=s.s_id) s_count from subscription s GROUP BY s_id);


select u_id,s_id from subscription;

select * from video;

select * from video v
join userinfo u
on v.u_id=u.u_id
where v_no = 1;

select video_v_no_SEQ.currval from dual;
