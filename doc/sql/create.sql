SHOW DATABASES;

/** 创建数据库 */
CREATE DATABASE IF NOT EXISTS strider default charset utf8 COLLATE utf8_general_ci;

USE strider;

-- 建立用户表
CREATE TABLE IF NOT EXISTS app_user
(
	id_ INT primary key AUTO_INCREMENT not null,
	nickname_ varchar(50) not null,
	email_ varchar(100) not null,
	password_ varchar(32) not null,
	status_ tinyint(1) not null,
	activate_ tinyint(1) not null,
	avatar_ varchar(300)
/**
	createtime_ datetime not null,
	createby_ int(32) not null,
	createip_ varchar(100) not null,
	updatetime_ datetime not null,
	updateby_ int(32) not null,
	updateip_ varchar(100) not null*/
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE app_user_info
(
	id_ INT primary key AUTO_INCREMENT not null,
	user_id varchar(32) not null,
	create_time_ datetime not null,
	create_ip_ varchar(100) not null

) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE app_user_login
(
	id_ INT primary key AUTO_INCREMENT not null,
	user_id varchar(32) not null,
	ip_ varchar(32) not null
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE app_linkman_info
(
	id_ INT primary key AUTO_INCREMENT not null,
	user_id varchar(32) not null,
	name_ varchar(50),
	describe_ varchar(500), 
	mobileNo_ varchar(20), /**手机号码*/
	telNo_ varchar(20),  /**电话号码*/
	qq_ int(15),
	fax_ int(15),
	birthday_ date,
	company_ varchar(100),
	position_ varchar(50),
	workAddress_ varchar(200),
	familyAddress_ varchar(200),
	homepage_ varchar(100)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 建立游记
CREATE TABLE IF NOT EXISTS app_article
(
	id_ INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '主键' ,
	user_id INT NOT NULL COMMENT '外键：关联user表' ,
	title_ VARCHAR(200) NOT NULL COMMENT '游记标题' ,
	context_ TEXT NOT NULL COMMENT '游记内容' ,
	tags_ VARCHAR(45) NULL ,
	keywords_ VARCHAR(45) NULL ,
	status_ TINYINT(1) NOT NULL DEFAULT 1 COMMENT '状态' ,
	createtime_ DATETIME NOT NULL DEFAULT NOW(),
	client_ VARCHAR(20) NOT NULL COMMENT '客户端类型' ,
	address_ VARCHAR(200) NULL COMMENT '发表游记时所在的地址' ,
	location_ VARCHAR(100) NULL COMMENT '发表游记时的GPS信息' ,
	createip_ VARCHAR(100) NULL COMMENT '发表游记时的IP地址'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 用户相册表
CREATE TABLE IF NOT EXISTS app_album
(
  id_ INT PRIMARY KEY AUTO_INCREMENT NOT NULL COMMENT '主键' ,
  user_id INT NOT NULL COMMENT '外键：用户ID' ,
  title_ VARCHAR(60) NOT NULL COMMENT '标题' ,
  description_ VARCHAR(400) NULL COMMENT '描述' ,
  cover_id INT NULL COMMENT '外键：封面照片ID' ,
  createtime_ DATETIME NOT NULL DEFAULT NOW() COMMENT '创建时间' 
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 初始化一个默认的相册
INSERT INTO app_album
(user_id, title_, description_, createtime_) 
VALUES (1, '游记配图', '用户游记文章的配图', now());
COMMIT;
INSERT INTO app_album
(user_id, title_, description_, createtime_) 
VALUES (1, '默认相册', '默认图片上传到此相册', now());
COMMIT;

EXPLAIN SELECT * FROM app_linkman_info;




 



