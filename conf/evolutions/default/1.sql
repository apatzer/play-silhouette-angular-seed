# --- !Ups

create table user (userID VARCHAR(36) NOT NULL PRIMARY KEY,firstName VARCHAR(64),lastName VARCHAR(64),fullName VARCHAR(128),email VARCHAR(64),avatarURL VARCHAR(128));
create table logininfo (id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,providerID VARCHAR(32) NOT NULL,providerKey VARCHAR(64) NOT NULL);
create table userlogininfo (userID VARCHAR(36) NOT NULL,loginInfoId BIGINT NOT NULL);
create table passwordinfo (hasher VARCHAR(128) NOT NULL,password VARCHAR(128) NOT NULL,salt VARCHAR(128),loginInfoId BIGINT NOT NULL);
create table oauth1info (id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,token VARCHAR(128) NOT NULL,secret VARCHAR(128) NOT NULL,loginInfoId BIGINT NOT NULL);
create table oauth2info (id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,accesstoken VARCHAR(128) NOT NULL,tokentype VARCHAR(128),expiresin INTEGER,refreshtoken VARCHAR(128),logininfoid BIGINT NOT NULL);
create table openidinfo (id VARCHAR(128) NOT NULL PRIMARY KEY,logininfoid BIGINT NOT NULL);
create table openidattributes (id VARCHAR(128) NOT NULL,k VARCHAR(128) NOT NULL,v VARCHAR(128) NOT NULL);


# --- !Downs

drop table openidattributes;
drop table openidinfo;
drop table oauth2info;
drop table oauth1info;
drop table passwordinfo;
drop table userlogininfo;
drop table logininfo;
drop table user;
