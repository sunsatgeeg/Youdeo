select u_id, s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 where u_id='geeg';
select s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 GROUP BY s_id order by s_count desc;

select u_id,s_id from subscription;

select * from video;

select * from video v
join userinfo u
on v.u_id=u.u_id
where v_no = 1;

commit;