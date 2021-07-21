select * from (select * from addressinfo inner join memberinfo on addressinfo.memberinfo_member_id = memberinfo.member_id ) as t1 inner join
 (select * from xray inner join cardiodiagnosis on xray.cardiodiagnosis_cardio_id = cardiodiagnosis.cardio_id) as t2
 on t1.member_id = t2.memberinfo_member_id where t1.state = 'Manila' and t2.date between '2019-01-25'and '2019-01-31';