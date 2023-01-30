insert into city(name)
    values ('Москва'),
           ('Воронеж'),
           ('Саратов');

insert into user_info(name,phone,address_mail,password,role,id_city)
    values ('owner1','8-910-001-01-01','owner1@gmail.com','123','OWNER',1),
           ('Владимир Зотов','1-123-123-01-01','owner2@gmail.com','123','OWNER',1),
           ('owner3','8-910-001-01-03','owner3@gmail.com','123','OWNER',1),
           ('owner4','8-910-001-01-04','owner4@gmail.com','123','OWNER',2),
           ('owner5','8-910-001-01-05','owner5@gmail.com','123','OWNER',2),
           ('owner6','8-910-001-01-06','owner6@gmail.com','123','OWNER',3),
           ('owner7','8-910-001-01-07','owner7@gmail.com','123','OWNER',3),
           ('owner8','8-910-001-01-08','owner8@gmail.com','123','OWNER',3),
           ('user01','8-910-001-02-01','user01@gmail.com','123','USER',1),
           ('user02','8-910-001-02-02','user02@gmail.com','123','USER',2),
           ('Elena Bandura','8-910-001-01-01',null,null,'USER',1),
           ('Elena Bandura','8-910-002-02-02',null,null,'OWNER',1),
           ('user03','8-910-003-02-02','user03@gmail.com','123','USER',1),
           ('user04','8-910-004-02-02','user04@gmail.com','123','USER',1),
           ('user05','8-910-005-02-02','user05@gmail.com','123','USER',1),
           ('user06','8-910-006-02-02','user06@gmail.com','123','USER',1),
           ('user07','8-910-007-02-02','user07@gmail.com','123','USER',1),
           ('user08','8-910-008-02-02','user08@gmail.com','123','USER',1);

insert into cause_interrupt(name)
    values ('Авария'),
           ('Проверка из пожарной'),
           ('Ремонт');


insert into car_wash(id_owner,id_city,address,latitude,longitude,daily_start_time,daily_end_time,price)
    values (2,1,'ул. Брянский Пост, 6, стр. 1Б',55.77348,37.533417,'06','23',200),
           (2,1,'6-я Радиальная ул., 22к1с4',55.390032,37.891846,'00','23',180),
           (1,1,'просп. Мира, вл94с1Б',55.869918,37.585602,'05','22',250),
           (12,1,'Большая Семёновская улица',55.766314,37.608727,'06','23',230),
           (12,1,'ул. Брянский Пост, 5А',55.716314,37.618727,'00','23',210),
           (2,1,'1-я Рыбинская ул., 3А',55.726314,37.628727,'05','23',180),
           (2,1,'Нижегородская ул., 29-33с9',55.736314,37.638727,'06','23',240),
           (2,1,'улица Буженинова, 51с2',55.746314,37.648727,'00','23',280),
           (2,2,'ул. Рязанская, 117',51.730856,39.181366,'00','23',180),
           (4,2,'ул. Урицкого, 48А',51.715543,39.212952,'00','23',190),
           (4,2,'Ленинградская ул., 56/1',51.653815,39.26651,'05','22',200),
           (4,2,'Московский просп., 102В · 8',51.712565,39.16214,'06','23',160),
           (5,2,'улица Карла Маркса, 72А/2',51.640607,39.204025,'00','23',220),
           (6,3,'ул. Чернышевского, 109',51.406059,45.865173,'00','23',160),
           (7,3,'ул. Чапаева, 196 · 8',51.442025,45.936584,'06','22',150),
           (8,3,'ул. Радищева, 65',51.429183,45.967484,'05','23',170);

insert into work_shedule(id_car_wash,monday ,tuesday ,wednesday ,thursday ,friday ,saturday ,sunday )
    values (1,0,0,0,0,0,0,0),
	   (2,0,0,0,1,0,0,0),
	   (3,0,0,0,0,0,0,0),
	   (4,1,0,0,0,0,0,0),
	   (5,0,1,0,0,0,0,0),
	   (6,0,0,1,0,0,0,0),
	   (7,0,0,0,0,0,0,0),
	   (8,0,0,0,0,1,0,0),
	   (9,0,0,0,0,0,1,0),
	   (10,1,0,0,0,0,0,0),
	   (11,0,1,0,0,0,0,0),
	   (12,0,0,1,0,0,0,0),
	   (13,0,0,0,1,0,0,0),
	   (14,0,0,0,0,1,0,0),
	   (15,0,0,0,0,0,1,0),
	   (16,1,0,0,0,0,0,0);

INSERT INTO public.time_table(
	date_table, id_car_wash, status_free, status_work, id_user)
	VALUES
	(TO_TIMESTAMP('2023-01-01 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-02 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-03 8:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-01 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-02 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-03 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-04 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-04 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-11 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-12 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-13 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-14 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-15 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-16 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-17 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-18 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 16),

	(TO_TIMESTAMP('2023-01-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-12 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-13 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-14 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-12 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-13 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-14 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-04 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-15 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-02 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-03 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-04 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-06 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-07 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-08 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 1, 1, 17),

	(TO_TIMESTAMP('2023-01-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-12 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-13 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-14 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-12 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-13 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-14 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-04 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-15 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-02 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-03 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-04 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-06 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-07 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-08 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 17),

	(TO_TIMESTAMP('2023-01-10 06:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-12 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-13 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-04 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-12 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-13 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-14 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-04 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-01 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-02 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 17),
	(TO_TIMESTAMP('2023-01-03 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 18),
	(TO_TIMESTAMP('2023-01-04 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 13),
	(TO_TIMESTAMP('2023-01-05 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 14),
	(TO_TIMESTAMP('2023-01-06 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 15),
	(TO_TIMESTAMP('2023-01-07 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 16),
	(TO_TIMESTAMP('2023-01-08 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 17),

	(TO_TIMESTAMP('2023-01-31 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 6:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 10),
	(TO_TIMESTAMP('2023-01-31 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 7:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 8:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 9:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 9:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1, 9),
	(TO_TIMESTAMP('2023-01-31 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 0, 0, null),

	(TO_TIMESTAMP('2023-01-31 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 6:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 7:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 8:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 9:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1, 1, 10),
	(TO_TIMESTAMP('2023-01-31 9:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),
	(TO_TIMESTAMP('2023-01-31 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 0, 0, null),

    	(TO_TIMESTAMP('2023-01-31 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 6:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 7:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 8:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 9:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 1, 1, 9),
    	(TO_TIMESTAMP('2023-01-31 9:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 0, 0, null),

    	(TO_TIMESTAMP('2023-01-31 6:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 6:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 7:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 7:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 8:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 9:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 9:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 1, 10),
    	(TO_TIMESTAMP('2023-01-31 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null),
    	(TO_TIMESTAMP('2023-01-31 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 0, 0, null);



