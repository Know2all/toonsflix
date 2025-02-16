BEGIN TRANSACTION;
CREATE TABLE "api_cartoon" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(50) NOT NULL, "image" varchar(200) NULL, "status" bool NOT NULL, "created_at" datetime NOT NULL, "category_id" bigint NOT NULL REFERENCES "api_category" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO "api_cartoon" VALUES(1,'Avathar Season 1','https://drive.google.com/thumbnail?id=1f9iZGsJknQWpIG4UZeaWjU9cNm6zMDJP',1,'2024-04-23 11:47:01.144921',1);
INSERT INTO "api_cartoon" VALUES(4,'Kollywood',' https://drive.google.com/thumbnail?id=1LK9PbXHD-4vfwU_dA7WUDweKWql-t6HB',1,'2024-06-09 08:47:18.675910',12);
CREATE TABLE "api_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "image" varchar(200) NULL, "status" bool NOT NULL, "created_at" datetime NOT NULL);
INSERT INTO "api_category" VALUES(1,'Old is Gold','https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6',1,'2024-04-23 11:46:21.531090');
INSERT INTO "api_category" VALUES(12,'Movies','https://drive.google.com/thumbnail?id=10qIbSmFxZNMki7v2QcjT_CmH8pbS9X5_',1,'2024-06-07 14:28:45.509656');
CREATE TABLE "api_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL);
INSERT INTO "api_tag" VALUES(1,'avathar');
INSERT INTO "api_tag" VALUES(2,'oldcartoon');
INSERT INTO "api_tag" VALUES(3,'arrowman');
INSERT INTO "api_tag" VALUES(4,'toonsflix');
CREATE TABLE "api_video" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(50) NOT NULL, "thumbnail" varchar(200) NULL, "videoUrl" varchar(200) NOT NULL, "status" bool NOT NULL, "created_at" datetime NULL, "cartoon_id" bigint NOT NULL REFERENCES "api_cartoon" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO "api_video" VALUES(2,'Avathar S1 Epsiode 2','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-04 08:14:47.520416',1);
INSERT INTO "api_video" VALUES(4,'Avathar S1 Episode 4','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-04 12:06:39.740493',1);
INSERT INTO "api_video" VALUES(6,'Avathar S1 Episode 6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-04 12:07:36.427495',1);
INSERT INTO "api_video" VALUES(7,'Avathar S1 Episode 8','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-04 12:08:10.237500',1);
INSERT INTO "api_video" VALUES(12,'Avathar Season 1 Episode 7','https://drive.google.com/thumbnail?id=10aepv-sxfzLFKsTA106bmxvcOi_pyIW3','https://drive.google.com/file/d/1XtpbCO0L-oCEVw4s7qky-19HffZM9LYJ/preview',0,'2024-06-09 10:46:15.858849',4);
INSERT INTO "api_video" VALUES(13,'Video 1',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:06.476480',4);
INSERT INTO "api_video" VALUES(14,'Video 2',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:08.756263',4);
INSERT INTO "api_video" VALUES(15,'Video 3',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:11.040361',4);
INSERT INTO "api_video" VALUES(16,'Video 4',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:13.340516',4);
INSERT INTO "api_video" VALUES(17,'Video 5',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:15.574091',4);
INSERT INTO "api_video" VALUES(18,'Video 6',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:17.807581',4);
INSERT INTO "api_video" VALUES(19,'Video 7',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:20.875118',4);
INSERT INTO "api_video" VALUES(20,'Video 8',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:23.125338',4);
INSERT INTO "api_video" VALUES(21,'Video 9',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:25.658133',4);
INSERT INTO "api_video" VALUES(22,'Video 10',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:27.727885',4);
INSERT INTO "api_video" VALUES(23,'Video 11',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:29.905659',4);
INSERT INTO "api_video" VALUES(24,'Video 12',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:32.008605',4);
INSERT INTO "api_video" VALUES(25,'Video 13',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:34.391810',4);
INSERT INTO "api_video" VALUES(26,'Video 14',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:36.510946',4);
INSERT INTO "api_video" VALUES(27,'Video 15',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:38.462088',4);
INSERT INTO "api_video" VALUES(28,'Video 16',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:40.642668',4);
INSERT INTO "api_video" VALUES(29,'Video 17',' https://drive.google.com/thumbnail?id=1ysyDUZ_qVquRhMDVIo_njvkZ8EKDtRc6','https://drive.google.com/thumbnail?id=11dgB0xqN2osvqJBiV3UGlHwR14Mx0MSh',1,'2024-06-12 13:43:43.658909',4);
CREATE TABLE "api_video_tags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "video_id" bigint NOT NULL REFERENCES "api_video" ("id") DEFERRABLE INITIALLY DEFERRED, "tag_id" bigint NOT NULL REFERENCES "api_tag" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO "api_video_tags" VALUES(5,2,2);
INSERT INTO "api_video_tags" VALUES(6,2,3);
INSERT INTO "api_video_tags" VALUES(8,4,2);
INSERT INTO "api_video_tags" VALUES(10,6,3);
INSERT INTO "api_video_tags" VALUES(11,7,3);
INSERT INTO "api_video_tags" VALUES(51,12,2);
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO "auth_permission" VALUES(5,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(6,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(8,2,'view_permission','Can view permission');
INSERT INTO "auth_permission" VALUES(9,3,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(10,3,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(11,3,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(12,3,'view_group','Can view group');
INSERT INTO "auth_permission" VALUES(13,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(14,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(15,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(16,4,'view_user','Can view user');
INSERT INTO "auth_permission" VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO "auth_permission" VALUES(21,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(22,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(23,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(24,6,'view_session','Can view session');
INSERT INTO "auth_permission" VALUES(25,7,'add_category','Can add category');
INSERT INTO "auth_permission" VALUES(26,7,'change_category','Can change category');
INSERT INTO "auth_permission" VALUES(27,7,'delete_category','Can delete category');
INSERT INTO "auth_permission" VALUES(28,7,'view_category','Can view category');
INSERT INTO "auth_permission" VALUES(29,8,'add_cartoon','Can add cartoon');
INSERT INTO "auth_permission" VALUES(30,8,'change_cartoon','Can change cartoon');
INSERT INTO "auth_permission" VALUES(31,8,'delete_cartoon','Can delete cartoon');
INSERT INTO "auth_permission" VALUES(32,8,'view_cartoon','Can view cartoon');
INSERT INTO "auth_permission" VALUES(33,9,'add_video','Can add video');
INSERT INTO "auth_permission" VALUES(34,9,'change_video','Can change video');
INSERT INTO "auth_permission" VALUES(35,9,'delete_video','Can delete video');
INSERT INTO "auth_permission" VALUES(36,9,'view_video','Can view video');
INSERT INTO "auth_permission" VALUES(37,10,'add_tag','Can add tag');
INSERT INTO "auth_permission" VALUES(38,10,'change_tag','Can change tag');
INSERT INTO "auth_permission" VALUES(39,10,'delete_tag','Can delete tag');
INSERT INTO "auth_permission" VALUES(40,10,'view_tag','Can view tag');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$720000$DwHRO2ghDCcGZ60uQNjLE1$je4MweNnlCFPqFYBkqZJ1mRXzzC4Z/GMCYZqsdMoz3U=','2024-06-12 13:46:13.572157',1,'admin','','admin@gmail.com',1,1,'2024-04-23 11:43:36.523906','');
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO "django_admin_log" VALUES(1,'1','Old is Gold',1,'[{"added": {}}]',7,1,'2024-04-23 11:46:21.538594');
INSERT INTO "django_admin_log" VALUES(2,'1','Avathar Season 1',1,'[{"added": {}}]',8,1,'2024-04-23 11:47:01.159871');
INSERT INTO "django_admin_log" VALUES(3,'1','Avathar S1 Episode 1',1,'[{"added": {}}]',9,1,'2024-04-23 11:47:50.661191');
INSERT INTO "django_admin_log" VALUES(4,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["VideoUrl"]}}]',9,1,'2024-04-23 12:02:40.305313');
INSERT INTO "django_admin_log" VALUES(5,'1','avathar',1,'[{"added": {}}]',10,1,'2024-04-23 13:08:51.903637');
INSERT INTO "django_admin_log" VALUES(6,'2','oldcartoon',1,'[{"added": {}}]',10,1,'2024-04-23 13:10:02.017264');
INSERT INTO "django_admin_log" VALUES(7,'3','arrowman',1,'[{"added": {}}]',10,1,'2024-04-23 13:10:16.219332');
INSERT INTO "django_admin_log" VALUES(8,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-04-23 14:17:59.747593');
INSERT INTO "django_admin_log" VALUES(9,'1','Avathar S1 Episode 1',2,'[]',9,1,'2024-04-23 14:18:12.677566');
INSERT INTO "django_admin_log" VALUES(10,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-04-23 14:19:14.752205');
INSERT INTO "django_admin_log" VALUES(11,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-04-23 14:20:06.007408');
INSERT INTO "django_admin_log" VALUES(12,'2','Avathar Season 2',1,'[{"added": {}}]',9,1,'2024-06-04 08:14:47.534958');
INSERT INTO "django_admin_log" VALUES(13,'2','Avathar Season 1 Epsiode 2',2,'[{"changed": {"fields": ["Title"]}}]',9,1,'2024-06-04 08:15:05.840056');
INSERT INTO "django_admin_log" VALUES(14,'2','Avathar S1 Epsiode 2',2,'[{"changed": {"fields": ["Title"]}}]',9,1,'2024-06-04 08:15:13.105952');
INSERT INTO "django_admin_log" VALUES(15,'3','Episode 3',1,'[{"added": {}}]',9,1,'2024-06-04 08:15:52.294961');
INSERT INTO "django_admin_log" VALUES(16,'3','Avathar Season 1 Episode 3',2,'[{"changed": {"fields": ["Title"]}}]',9,1,'2024-06-04 08:16:06.400019');
INSERT INTO "django_admin_log" VALUES(17,'3','Avathar S1 Episode 3',2,'[{"changed": {"fields": ["Title"]}}]',9,1,'2024-06-04 08:16:12.782296');
INSERT INTO "django_admin_log" VALUES(18,'4','Avathar Season 1 Episode 4',1,'[{"added": {}}]',9,1,'2024-06-04 12:06:39.759082');
INSERT INTO "django_admin_log" VALUES(19,'4','Avathar S1 Episode 4',2,'[{"changed": {"fields": ["Title"]}}]',9,1,'2024-06-04 12:06:45.565639');
INSERT INTO "django_admin_log" VALUES(20,'5','Avathar S1 Episode 5',1,'[{"added": {}}]',9,1,'2024-06-04 12:07:14.215604');
INSERT INTO "django_admin_log" VALUES(21,'6','Avathar S1 Episode 6',1,'[{"added": {}}]',9,1,'2024-06-04 12:07:36.445636');
INSERT INTO "django_admin_log" VALUES(22,'7','Avathar S1 Episode 8',1,'[{"added": {}}]',9,1,'2024-06-04 12:08:10.237500');
INSERT INTO "django_admin_log" VALUES(23,'8','Avathar Season 1 Episode 9',1,'[{"added": {}}]',9,1,'2024-06-04 12:08:28.767033');
INSERT INTO "django_admin_log" VALUES(24,'8','Avathar S1 Episode 9',2,'[{"changed": {"fields": ["Title"]}}]',9,1,'2024-06-04 12:08:33.310560');
INSERT INTO "django_admin_log" VALUES(25,'9','Avathar S1 Episode 10',1,'[{"added": {}}]',9,1,'2024-06-04 12:20:01.432297');
INSERT INTO "django_admin_log" VALUES(26,'10','Avathar Season 1 Episode 1',3,'',9,1,'2024-06-07 15:10:33.410993');
INSERT INTO "django_admin_log" VALUES(27,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Status"]}}]',9,1,'2024-06-09 09:04:21.213689');
INSERT INTO "django_admin_log" VALUES(28,'1','Avathar S1 Episode 1',2,'[]',9,1,'2024-06-09 09:09:41.142188');
INSERT INTO "django_admin_log" VALUES(29,'4','toonsflix',1,'[{"added": {}}]',10,1,'2024-06-09 09:09:57.888841');
INSERT INTO "django_admin_log" VALUES(30,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-06-09 09:10:02.668870');
INSERT INTO "django_admin_log" VALUES(31,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-06-09 09:10:10.453368');
INSERT INTO "django_admin_log" VALUES(32,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-06-09 09:13:05.580125');
INSERT INTO "django_admin_log" VALUES(33,'5','ass',1,'[{"added": {}}]',10,1,'2024-06-09 09:17:33.920645');
INSERT INTO "django_admin_log" VALUES(34,'5','ass',3,'',10,1,'2024-06-09 09:18:02.951963');
INSERT INTO "django_admin_log" VALUES(35,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Cartoon"]}}]',9,1,'2024-06-09 09:50:11.270969');
INSERT INTO "django_admin_log" VALUES(36,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Cartoon"]}}]',9,1,'2024-06-09 09:50:17.970328');
INSERT INTO "django_admin_log" VALUES(37,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Status"]}}]',9,1,'2024-06-09 09:50:25.998757');
INSERT INTO "django_admin_log" VALUES(38,'1','Avathar S1 Episode 1',2,'[{"changed": {"fields": ["Tags"]}}]',9,1,'2024-06-09 10:04:30.133669');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','permission');
INSERT INTO "django_content_type" VALUES(3,'auth','group');
INSERT INTO "django_content_type" VALUES(4,'auth','user');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'api','category');
INSERT INTO "django_content_type" VALUES(8,'api','cartoon');
INSERT INTO "django_content_type" VALUES(9,'api','video');
INSERT INTO "django_content_type" VALUES(10,'api','tag');
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2024-04-23 11:43:16.346301');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2024-04-23 11:43:16.395755');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2024-04-23 11:43:16.426790');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2024-04-23 11:43:16.455062');
INSERT INTO "django_migrations" VALUES(5,'admin','0003_logentry_add_action_flag_choices','2024-04-23 11:43:16.467698');
INSERT INTO "django_migrations" VALUES(6,'api','0001_initial','2024-04-23 11:43:16.508302');
INSERT INTO "django_migrations" VALUES(7,'contenttypes','0002_remove_content_type_name','2024-04-23 11:43:16.529611');
INSERT INTO "django_migrations" VALUES(8,'auth','0002_alter_permission_name_max_length','2024-04-23 11:43:16.565417');
INSERT INTO "django_migrations" VALUES(9,'auth','0003_alter_user_email_max_length','2024-04-23 11:43:16.593194');
INSERT INTO "django_migrations" VALUES(10,'auth','0004_alter_user_username_opts','2024-04-23 11:43:16.616185');
INSERT INTO "django_migrations" VALUES(11,'auth','0005_alter_user_last_login_null','2024-04-23 11:43:16.649718');
INSERT INTO "django_migrations" VALUES(12,'auth','0006_require_contenttypes_0002','2024-04-23 11:43:16.662600');
INSERT INTO "django_migrations" VALUES(13,'auth','0007_alter_validators_add_error_messages','2024-04-23 11:43:16.687674');
INSERT INTO "django_migrations" VALUES(14,'auth','0008_alter_user_username_max_length','2024-04-23 11:43:16.716581');
INSERT INTO "django_migrations" VALUES(15,'auth','0009_alter_user_last_name_max_length','2024-04-23 11:43:16.743994');
INSERT INTO "django_migrations" VALUES(16,'auth','0010_alter_group_name_max_length','2024-04-23 11:43:16.766904');
INSERT INTO "django_migrations" VALUES(17,'auth','0011_update_proxy_permissions','2024-04-23 11:43:16.791544');
INSERT INTO "django_migrations" VALUES(18,'auth','0012_alter_user_first_name_max_length','2024-04-23 11:43:16.818531');
INSERT INTO "django_migrations" VALUES(19,'sessions','0001_initial','2024-04-23 11:43:16.841141');
INSERT INTO "django_migrations" VALUES(20,'api','0002_tag_video_tags','2024-04-23 13:04:53.339000');
INSERT INTO "django_migrations" VALUES(21,'api','0003_remove_video_tags','2024-04-23 13:59:16.759351');
INSERT INTO "django_migrations" VALUES(22,'api','0004_remove_tag_video_id_video_tags','2024-04-23 14:10:23.374201');
INSERT INTO "django_migrations" VALUES(23,'api','0005_remove_video_tags','2024-04-23 14:14:25.353475');
INSERT INTO "django_migrations" VALUES(24,'api','0006_video_tags','2024-04-23 14:17:37.015029');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('j1ajf3ac4o9vv96a0yk1w26ois4arm60','.eJxVjMsOwiAQAP-FsyFS3h69-w3N7rJI1UBS2pPx3w1JD3qdmcxbzLBvZd47r_OSxEUocfplCPTkOkR6QL03Sa1u64JyJPKwXd5a4tf1aP8GBXoZW_IUGRI4cNFnzgEQM6qAxoJGl2K0midD1kdtwMN0VmwcB0sGjWLx-QIUTzia:1rzEZv:LkyeEz-80QG5XJk7GEC0ITC4PRS93geTvy25_XA1s4k','2024-05-07 11:44:51.375818');
INSERT INTO "django_session" VALUES('p8okksw7zlv9ntz7zbkls945tcn9ehby','.eJxVjMsOwiAQAP-FsyFS3h69-w3N7rJI1UBS2pPx3w1JD3qdmcxbzLBvZd47r_OSxEUocfplCPTkOkR6QL03Sa1u64JyJPKwXd5a4tf1aP8GBXoZW_IUGRI4cNFnzgEQM6qAxoJGl2K0midD1kdtwMN0VmwcB0sGjWLx-QIUTzia:1rzzJE:duQq6fhDdJojxgd2Fw_mHr4WhQWQSxbkzs_OhcJYh0o','2024-05-09 13:38:44.129262');
INSERT INTO "django_session" VALUES('h7hkk4kzejhg7s45298nlgw13j2z4129','.eJxVjMsOwiAQAP-FsyFS3h69-w3N7rJI1UBS2pPx3w1JD3qdmcxbzLBvZd47r_OSxEUocfplCPTkOkR6QL03Sa1u64JyJPKwXd5a4tf1aP8GBXoZW_IUGRI4cNFnzgEQM6qAxoJGl2K0midD1kdtwMN0VmwcB0sGjWLx-QIUTzia:1sESve:JrYF1BoP0bUS8IFaOFeh0rXqDtwO2vkihij-yqOnJQU','2024-06-18 12:06:14.303066');
INSERT INTO "django_session" VALUES('lvs63xxqq2o5qf1p8eyhn32yla15j8ou','.eJxVjMsOwiAQAP-FsyFS3h69-w3N7rJI1UBS2pPx3w1JD3qdmcxbzLBvZd47r_OSxEUocfplCPTkOkR6QL03Sa1u64JyJPKwXd5a4tf1aP8GBXoZW_IUGRI4cNFnzgEQM6qAxoJGl2K0midD1kdtwMN0VmwcB0sGjWLx-QIUTzia:1sGEBb:kjAs04P1gcfic9pGIzCRWHvCBinDmwDjyF2DhDiqLcg','2024-06-23 08:45:59.133264');
INSERT INTO "django_session" VALUES('4ylhmv6g81p97ho9ws1xcnllg8xh78b3','.eJxVjMsOwiAQAP-FsyFS3h69-w3N7rJI1UBS2pPx3w1JD3qdmcxbzLBvZd47r_OSxEUocfplCPTkOkR6QL03Sa1u64JyJPKwXd5a4tf1aP8GBXoZW_IUGRI4cNFnzgEQM6qAxoJGl2K0midD1kdtwMN0VmwcB0sGjWLx-QIUTzia:1sGeY1:fIjhvKodTiluzWnf8GUGt_-8VKHitj1mSuUL5o39zPg','2024-06-24 12:54:53.915711');
INSERT INTO "django_session" VALUES('qrarw0esjjvq602ylpk1ec6jk8t9kzer','.eJxVjMsOwiAQAP-FsyFS3h69-w3N7rJI1UBS2pPx3w1JD3qdmcxbzLBvZd47r_OSxEUocfplCPTkOkR6QL03Sa1u64JyJPKwXd5a4tf1aP8GBXoZW_IUGRI4cNFnzgEQM6qAxoJGl2K0midD1kdtwMN0VmwcB0sGjWLx-QIUTzia:1sHOEF:fOPnCopW-08xcaIenKHXyUt6aXy_tk0HzDRMaDQzk90','2024-06-26 13:41:31.845260');
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE INDEX "api_cartoon_category_id_81ed17e4" ON "api_cartoon" ("category_id");
CREATE INDEX "api_video_cartoon_id_f1cf86bc" ON "api_video" ("cartoon_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "api_video_tags_video_id_tag_id_b36e08f9_uniq" ON "api_video_tags" ("video_id", "tag_id");
CREATE INDEX "api_video_tags_video_id_b9f48b75" ON "api_video_tags" ("video_id");
CREATE INDEX "api_video_tags_tag_id_09a23225" ON "api_video_tags" ("tag_id");
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('django_migrations',24);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',38);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',10);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',40);
INSERT INTO "sqlite_sequence" VALUES('auth_group',0);
INSERT INTO "sqlite_sequence" VALUES('auth_user',1);
INSERT INTO "sqlite_sequence" VALUES('api_category',17);
INSERT INTO "sqlite_sequence" VALUES('api_cartoon',8);
INSERT INTO "sqlite_sequence" VALUES('api_video',29);
INSERT INTO "sqlite_sequence" VALUES('api_tag',5);
INSERT INTO "sqlite_sequence" VALUES('api_video_tags',51);
COMMIT;
