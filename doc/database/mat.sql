/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/4/14 18:13:24                           */
/*==============================================================*/


drop table if exists t_mat;

drop table if exists t_mat_category;

drop table if exists t_mat_category_link;

/*==============================================================*/
/* Table: t_mat                                                 */
/*==============================================================*/
create table t_mat
(
   id                   varchar(36) not null,
   create_id            varchar(36) default NULL,
   create_time          datetime default NULL,
   deleted              varchar(1) default NULL,
   update_id            varchar(36) default NULL,
   update_time          datetime default NULL,
   version              int(11) default NULL,
   name                 varchar(255) default NULL,
   _code                datetime default NULL,
   size                 varchar(255) default NULL,
   _desc                varchar(10000) default NULL,
   img_url              varchar(255),
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: t_mat_category                                        */
/*==============================================================*/
create table t_mat_category
(
   id                   varchar(36) not null,
   create_id            varchar(36) default NULL,
   create_time          datetime default NULL,
   deleted              varchar(1) default NULL,
   update_id            varchar(36) default NULL,
   update_time          datetime default NULL,
   version              int(11) default NULL,
   name                 varchar(255) default NULL,
   _code                datetime default NULL,
   _desc                varchar(255) default NULL,
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: t_mat_category_link                                   */
/*==============================================================*/
create table t_mat_category_link
(
   id                   varchar(36) not null,
   create_id            varchar(36) default NULL,
   create_time          datetime default NULL,
   deleted              varchar(1) default NULL,
   update_id            varchar(36) default NULL,
   update_time          datetime default NULL,
   version              int(11) default NULL,
   mat_id               varchar(36) default NULL,
   category_id          varchar(36) default NULL,
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

