select * from (select * from memberinfo inner join cardiodiagnosis on memberinfo.member_id = cardiodiagnosis.memberinfo_member_id
 where memberinfo.gender = 1 and memberinfo.age > 50) as t1 join diseasedetail on t1.cardio_id = diseasedetail.cardiodiagnosis_cardio_id where diseasedetail.isrecovered =1;