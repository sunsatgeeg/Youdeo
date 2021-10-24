select u_id, s_id, (select count(*) from subscription s1 where s1.s_id=s2.s_id) s_count from subscription s2 where u_id='sjssj7777';

select u_id,s_id from subscription;

select * from video;

commit;