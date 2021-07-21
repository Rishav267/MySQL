select ecgreport.ecg_id,ecgreport.date,ecgreport.restecg from ecgreport left join (select cardiodiagnosis.cardio_id, memberinfo.age,memberinfo.gender 
from memberinfo join cardiodiagnosis on memberinfo.member_id = cardiodiagnosis.memberinfo_member_id  where gender=1 and age>50) as newT
 on ecgreport.cardiodiagnosis_cardio_id = newT.cardio_id order by ecgreport.date desc;