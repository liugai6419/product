-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-09-11 16:52:38
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mall`
--

-- --------------------------------------------------------

--
-- 表的结构 `accessory`
--

CREATE TABLE `accessory` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '附件ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `pic_max_limit` int(8) UNSIGNED NOT NULL COMMENT '图片最大限制',
  `file_max_limit` int(8) UNSIGNED NOT NULL COMMENT '文件最大限制',
  `video_max_limit` int(8) UNSIGNED NOT NULL COMMENT '视频最大限制',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `accessory`
--

INSERT INTO `accessory` (`id`, `user_id`, `pic_max_limit`, `file_max_limit`, `video_max_limit`, `update_time`, `create_time`) VALUES
(1, 1, 444511, 555611, 777811, 1597457571, 1597457414),
(2, 2, 121212, 131313, 141414, 0, 1597457492);

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '管理员id',
  `username` char(30) NOT NULL COMMENT '用户名称',
  `password` char(32) NOT NULL COMMENT '登录密码',
  `telephone` char(11) NOT NULL COMMENT '手机号码',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '管理员性别(1男，2女)',
  `login_total` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录次数',
  `login_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上一次登录时间',
  `role_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属角色组',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员列表';

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `telephone`, `gender`, `login_total`, `login_time`, `role_id`, `add_time`, `update_time`) VALUES
(1, 'liugai', 'e10adc3949ba59abbe56e057f20f883e', '15237367115', 1, 0, 0, 0, 0, 0),
(2, 'liufang', 'e10adc3949ba59abbe56e057f20f883e', '15237367115', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `agreement_mange`
--

CREATE TABLE `agreement_mange` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '协议管理',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `agreement_mange` text CHARACTER SET utf8 COMMENT '用户注册协议',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `agreement_mange`
--

INSERT INTO `agreement_mange` (`id`, `user_id`, `agreement_mange`, `update_time`, `create_time`) VALUES
(1, 1, '<p>111112222<br/></p>', 1599448637, 1599448624);

-- --------------------------------------------------------

--
-- 表的结构 `authority_allocation`
--

CREATE TABLE `authority_allocation` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '权限id',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `parent_id` int(11) UNSIGNED NOT NULL COMMENT '父级id',
  `authority_name` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '权限名称',
  `controller_name` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '控制器名称',
  `method_name` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '方法名称',
  `icon_name` char(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标名称',
  `marshalling_sequence` tinyint(3) UNSIGNED NOT NULL COMMENT '排序顺序',
  `is_show` tinyint(1) UNSIGNED NOT NULL COMMENT '是否显示',
  `update_time` int(11) UNSIGNED DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `authority_allocation`
--

INSERT INTO `authority_allocation` (`id`, `user_id`, `parent_id`, `authority_name`, `controller_name`, `method_name`, `icon_name`, `marshalling_sequence`, `is_show`, `update_time`, `create_time`) VALUES
(1, 1, 0, '系统设置', 'system_setting', 'index', '1', 1, 1, 0, 1599469277),
(2, 1, 0, '站点配置', 'site_config', 'index', '1', 2, 2, 0, 1599468873),
(17, 1, 6, '管理员列表', 'manager_list', 'index', '', 30, 2, 0, 1599540752),
(18, 1, 1, '后台配置', 'backstage_config', 'index', '', 10, 1, 0, 1599540833),
(6, 1, 0, '权限控制', 'authority_control', 'index', '11', 10, 2, 1599546307, 1599469013),
(20, 1, 6, '角色管理', 'role_controller', 'index', '', 20, 1, 0, 1599705492),
(14, 1, 2, '短信设置', 'sms_setting', 'index', '', 2, 1, 1599546341, 1599539920),
(21, 1, 6, '权限分配', 'authority_allocation', 'index', '', 30, 1, 1599705553, 1599705526);

-- --------------------------------------------------------

--
-- 表的结构 `backstage_config`
--

CREATE TABLE `backstage_config` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '后台配置ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `excel_encoded` tinyint(1) UNSIGNED NOT NULL COMMENT 'excel编码(1为utf8，2为gbk)',
  `paging_num` tinyint(2) UNSIGNED NOT NULL COMMENT '分页数量',
  `is_reduce_repertory` tinyint(1) UNSIGNED NOT NULL COMMENT '是否扣减库存(1为否，2为是)',
  `reduce_repertory_regulation` tinyint(1) UNSIGNED NOT NULL COMMENT '扣减库存规则(1为订单确认成功，2为订单支付成功，3为订单发货)',
  `ordering_bespeak_model` tinyint(1) UNSIGNED NOT NULL COMMENT '订单预约模式(1为否，2为是)',
  `max_num` tinyint(2) UNSIGNED NOT NULL COMMENT '商品可添加规格最大数量',
  `api_pwd` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '百度地图api密钥',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `backstage_config`
--

INSERT INTO `backstage_config` (`id`, `user_id`, `excel_encoded`, `paging_num`, `is_reduce_repertory`, `reduce_repertory_regulation`, `ordering_bespeak_model`, `max_num`, `api_pwd`, `update_time`, `create_time`) VALUES
(1, 1, 2, 10, 2, 2, 1, 2, '', 1597411028, 0),
(2, 2, 1, 5, 1, 1, 1, 2, '123', 1597411099, 1597411058);

-- --------------------------------------------------------

--
-- 表的结构 `base_configure`
--

CREATE TABLE `base_configure` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '基础配置ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `site_name` char(255) CHARACTER SET utf8 NOT NULL COMMENT '站点名称',
  `computer_logo` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '电脑端logo',
  `phone_logo` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机端logo',
  `dest_icon` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '桌面图标',
  `default_time_zone` tinyint(2) UNSIGNED NOT NULL COMMENT '默认时区',
  `site_status` tinyint(1) UNSIGNED NOT NULL COMMENT '站点状态',
  `closed_reason` text CHARACTER SET utf8 COMMENT '关闭原因',
  `page_max_width` smallint(4) UNSIGNED NOT NULL COMMENT '页面最大宽度',
  `version_mark` char(11) CHARACTER SET utf8 DEFAULT NULL COMMENT 'css/js版本标记',
  `icp_certificate` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ICP证书号',
  `bottom_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '底部代码',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `base_configure`
--

INSERT INTO `base_configure` (`id`, `user_id`, `site_name`, `computer_logo`, `phone_logo`, `dest_icon`, `default_time_zone`, `site_status`, `closed_reason`, `page_max_width`, `version_mark`, `icp_certificate`, `bottom_code`, `update_time`, `create_time`) VALUES
(1, 1, '水浒传', '/static/admin/uploads/20200806\\30655fe5dfe298580b53731f897c1acb.png', '/static/admin/uploads/20200806\\8bba0a78bd43a08529ba6ff17c14557c.jpg', '/static/admin/uploads/20200806\\55bad677f02201d7ce2d302db467bfd9.png', 20, 2, '公司倒闭', 1200, '202020802', '郑州公安局备案20202080272325', '床前明月光，疑是地上霜。举头望明月，低头思故乡。', 1597464669, 0),
(2, 2, '武则天秘史', '/static/admin/uploads/20200814\\34a1aff6c0bc3aa1f4c1232b22070ab2.png', '/static/admin/uploads/20200814\\264810bfeae162ffbef3dafa8c7b0057.png', '/static/admin/uploads/20200814\\bb11f459e9a95c1c7745a0f60cffd9d9.png', 10, 1, '关闭原因', 1200, '111111111', 'ICP证书号', '底部代码底部代码底部代码底部代码', 1597410056, 1597409902);

-- --------------------------------------------------------

--
-- 表的结构 `eamil_setting`
--

CREATE TABLE `eamil_setting` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '邮箱设置id',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `smtp_server` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT 'SMTP服务器',
  `smtp_port` int(5) UNSIGNED DEFAULT NULL COMMENT 'SMTP端口',
  `sender_email_address` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '发信人邮件地址',
  `smtp_proving_username` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT 'SMTP身份验证用户名',
  `smtp_proving_password` char(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'SMTP身份验证密码',
  `ssl_encrypt_way` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'SSL方式加密',
  `sender_show_name` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '发件人显示名称',
  `receive_email_address` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '测试接收的邮件地址',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `eamil_setting`
--

INSERT INTO `eamil_setting` (`id`, `user_id`, `smtp_server`, `smtp_port`, `sender_email_address`, `smtp_proving_username`, `smtp_proving_password`, `ssl_encrypt_way`, `sender_show_name`, `receive_email_address`, `update_time`, `create_time`) VALUES
(1, 1, 'smtp.qq.com', 465, '768190260@qq.com', '768190260@qq.com', 'klrrfgzknypabedh', 2, '刘盖', '1583293461@qq.com', 1599205835, 1599116245);

-- --------------------------------------------------------

--
-- 表的结构 `email_message_template`
--

CREATE TABLE `email_message_template` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '邮箱消息设置ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `general_template` text CHARACTER SET utf8 COMMENT '通用-邮件模板',
  `user_register_template` text CHARACTER SET utf8 COMMENT '用户注册-邮件模板',
  `find_password_template` text CHARACTER SET utf8 COMMENT '密码找回-邮件模板',
  `email_bind_template` text CHARACTER SET utf8 COMMENT '邮箱绑定-邮件模板',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `email_message_template`
--

INSERT INTO `email_message_template` (`id`, `user_id`, `general_template`, `user_register_template`, `find_password_template`, `email_bind_template`, `update_time`, `create_time`) VALUES
(1, 1, '<p>1111</p>', '<p>2222</p>', '<p>3333</p>', '<p>4444</p>', 1599393975, 1599381028),
(2, 2, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 12px; text-align: center; background-color: rgb(251, 251, 251);\">通用-邮件模板</span></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 12px; text-align: center; background-color: rgb(251, 251, 251);\">用户注册-邮件模板</span></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 12px; text-align: center; background-color: rgb(251, 251, 251);\">密码找回-邮件模板</span></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, Tahoma, Arial, sans-serif; font-size: 12px; text-align: center; background-color: rgb(251, 251, 251);\">邮箱绑定-邮件模板</span></p>', 0, 1599394913);

-- --------------------------------------------------------

--
-- 表的结构 `manager_list`
--

CREATE TABLE `manager_list` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '管理员id',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `username` char(30) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 NOT NULL COMMENT '登录密码',
  `telephone` char(11) CHARACTER SET utf8 NOT NULL COMMENT '手机号码',
  `sex` tinyint(1) UNSIGNED NOT NULL COMMENT '性别',
  `authority_group` int(11) UNSIGNED NOT NULL COMMENT '权限组',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `manager_list`
--

INSERT INTO `manager_list` (`id`, `user_id`, `username`, `password`, `telephone`, `sex`, `authority_group`, `update_time`, `create_time`) VALUES
(1, 1, '刘盖', 'e10adc3949ba59abbe56e057f20f883e', '15237367115', 1, 10, 0, 1599811023),
(2, 1, '刘开放', 'e10adc3949ba59abbe56e057f20f883e', '15237367115', 1, 10, 0, 1599812737),
(3, 1, '刘芳', 'c33367701511b4f6020ec61ded352059', '15237367115', 1, 0, 0, 1599812821),
(4, 2, '刘宗洋', 'e10adc3949ba59abbe56e057f20f883e', '15237367115', 1, 0, 0, 1599813408);

-- --------------------------------------------------------

--
-- 表的结构 `message_template`
--

CREATE TABLE `message_template` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '信息模板ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `currency_sms_id` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '通用-短信模板ID',
  `user_register_sms_id` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户注册-短信模板ID',
  `password_find_sms_id` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码找回-短信模板ID',
  `telephone_bind_sms_id` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码绑定-短信模板ID',
  `update_time` int(11) UNSIGNED DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `message_template`
--

INSERT INTO `message_template` (`id`, `user_id`, `currency_sms_id`, `user_register_sms_id`, `password_find_sms_id`, `telephone_bind_sms_id`, `update_time`, `create_time`) VALUES
(1, 1, '111555通用-短信模板ID', '222666用户注册-短信模板ID', '333777密码找回-短信模板ID', '444888手机号码绑定-短信模板ID', 1597548423, 1597548285);

-- --------------------------------------------------------

--
-- 表的结构 `ordering_service`
--

CREATE TABLE `ordering_service` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '订单售后ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `only_refundment_reason` text CHARACTER SET utf8 COMMENT '仅退款原因',
  `refundment_returngoods_reason` text CHARACTER SET utf8 COMMENT '退货退款原因',
  `returngoods_address` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '退货地址',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ordering_service`
--

INSERT INTO `ordering_service` (`id`, `user_id`, `only_refundment_reason`, `refundment_returngoods_reason`, `returngoods_address`, `update_time`, `create_time`) VALUES
(1, 1, '111333', '222333', '33344411', 1597465173, 1597464875);

-- --------------------------------------------------------

--
-- 表的结构 `password_find`
--

CREATE TABLE `password_find` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '密码找回ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `login_pic1` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片1',
  `login_url1` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url地址1',
  `login_color1` char(7) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景色1',
  `login_pic2` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片2',
  `login_url2` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url地址2',
  `login_color2` char(7) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景色2',
  `login_pic3` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片3',
  `login_url3` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url地址3',
  `login_color3` char(7) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景色3',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `password_find`
--

INSERT INTO `password_find` (`id`, `user_id`, `login_pic1`, `login_url1`, `login_color1`, `login_pic2`, `login_url2`, `login_color2`, `login_pic3`, `login_url3`, `login_color3`, `update_time`, `create_time`) VALUES
(1, 1, '/static/admin/uploads/20200814\\6d4cb20664d1b1b075a5a3355bc32104.jpg', '111', '#ff0000', '/static/admin/uploads/20200814\\187b333620777b040bd7600fcf2afbfa.jpg', '222', '#00ff00', '/static/admin/uploads/20200814\\f2ae9c698fe62cff99cc00a4573b3732.jpg', '333', '#0000ff', 1597456093, 1597417949);

-- --------------------------------------------------------

--
-- 表的结构 `pic_identifying_code`
--

CREATE TABLE `pic_identifying_code` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '图片验证码ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `code_valid_time` int(3) UNSIGNED NOT NULL COMMENT '验证码有效时间',
  `achieve_time_spacing` int(3) UNSIGNED NOT NULL COMMENT '获取验证码时间间隔',
  `is_open_pic_identify` tinyint(1) UNSIGNED NOT NULL COMMENT '获取验证码-开启图片验证码',
  `pic_code_regulation` char(8) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片验证码规则',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pic_identifying_code`
--

INSERT INTO `pic_identifying_code` (`id`, `user_id`, `code_valid_time`, `achieve_time_spacing`, `is_open_pic_identify`, `pic_code_regulation`, `update_time`, `create_time`) VALUES
(1, 1, 112212, 223312, 1, '2,3', 1597463100, 1597461696);

-- --------------------------------------------------------

--
-- 表的结构 `role_manage`
--

CREATE TABLE `role_manage` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '角色管理id',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `role_delimiter` char(18) CHARACTER SET utf8 NOT NULL COMMENT '角色名称',
  `is_start` tinyint(1) UNSIGNED NOT NULL COMMENT '是否启用',
  `authority` text CHARACTER SET utf8 COMMENT '拥有权限',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `role_manage`
--

INSERT INTO `role_manage` (`id`, `user_id`, `role_delimiter`, `is_start`, `authority`, `update_time`, `create_time`) VALUES
(10, 1, '管理员', 1, '6,17,21,20', 0, 1599798103),
(11, 1, '编辑者', 1, '1,18', 0, 1599798124);

-- --------------------------------------------------------

--
-- 表的结构 `search`
--

CREATE TABLE `search` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '搜索ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `site_status` tinyint(1) UNSIGNED NOT NULL COMMENT '站点状态',
  `search_key` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '搜索关键字',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `search`
--

INSERT INTO `search` (`id`, `user_id`, `site_status`, `search_key`, `update_time`, `create_time`) VALUES
(1, 1, 1, '政治', 1598939477, 1597505001);

-- --------------------------------------------------------

--
-- 表的结构 `seo_setting`
--

CREATE TABLE `seo_setting` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'SEO设置ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `link_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '链接模式',
  `route_delimiter` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '-' COMMENT '路由分隔符',
  `static_suffix` char(6) CHARACTER SET utf8 NOT NULL DEFAULT 'html' COMMENT '伪静态后缀',
  `site_title` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '站点标题',
  `site_key` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '站点关键字',
  `site_description` text CHARACTER SET utf8 COMMENT '站点描述',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `seo_setting`
--

INSERT INTO `seo_setting` (`id`, `user_id`, `link_mode`, `route_delimiter`, `static_suffix`, `site_title`, `site_key`, `site_description`, `update_time`, `create_time`) VALUES
(1, 1, 3, '-', 'html', 'ShopXO企业级B2C电商系统提供商 - 演示站点', '商城系统,开源电商系统,免费电商系统,PHP电商系统,商城系统,B2C电商系统,B2B2C电商系统', 'ShopXO是国内领先的商城系统提供商，为企业提供php商城系统、微信商城、小程序。', 1599403805, 1599403378);

-- --------------------------------------------------------

--
-- 表的结构 `shop_message`
--

CREATE TABLE `shop_message` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '商品信息ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `shop_telephone` char(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '商店电话',
  `shop_email` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '商店邮箱',
  `shop_address` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商店地址',
  `qrcode_img` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商店二维码',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `shop_message`
--

INSERT INTO `shop_message` (`id`, `user_id`, `shop_telephone`, `shop_email`, `shop_address`, `qrcode_img`, `update_time`, `create_time`) VALUES
(1, 1, '15237367115', '768190260@qq.com', '西游记', '/static/admin/uploads/20200713\\efed6af8d211f7c8fa443662ac896486.jpg', 1597411566, 0),
(2, 2, '13088070799', '1105956197@qq.com', '武则天秘史', '/static/admin/uploads/20200814\\cb8472c1942c29230f3a9f11082b362e.png', 1597411641, 1597411631);

-- --------------------------------------------------------

--
-- 表的结构 `sms_setting`
--

CREATE TABLE `sms_setting` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '短信设置ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `sms_key_id` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信KeyID',
  `sms_key_secret` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信KeySecret',
  `sms_sign` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信签名',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `sms_setting`
--

INSERT INTO `sms_setting` (`id`, `user_id`, `sms_key_id`, `sms_key_secret`, `sms_sign`, `update_time`, `create_time`) VALUES
(1, 1, '111444777短信KeyID', '222555888短信KeySecret', '333666999短信签名', 1597630594, 1597546834);

-- --------------------------------------------------------

--
-- 表的结构 `user_login`
--

CREATE TABLE `user_login` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '用户登录ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `login_pic1` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片1',
  `login_url1` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url地址1',
  `login_color1` char(7) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景色1',
  `login_pic2` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片2',
  `login_url2` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url地址2',
  `login_color2` char(7) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景色2',
  `login_pic3` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片3',
  `login_url3` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url地址3',
  `login_color3` char(7) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景色3',
  `is_open_login` tinyint(1) UNSIGNED NOT NULL COMMENT '是否开启登录',
  `login_pic_code` tinyint(1) UNSIGNED NOT NULL COMMENT '登录图片验证码',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `login_pic1`, `login_url1`, `login_color1`, `login_pic2`, `login_url2`, `login_color2`, `login_pic3`, `login_url3`, `login_color3`, `is_open_login`, `login_pic_code`, `update_time`, `create_time`) VALUES
(2, 1, '/static/admin/uploads/20200809\\712f89b393d2773f0389013dbdd1f09d.png', '', '#ffffff', '/static/admin/uploads/20200809\\8c0887f863d302d155f7a5e8f5d61594.jpg', '', '#555555', '/static/admin/uploads/20200809\\62067d662a1bbec2ef827edf5c018410.png', '', '#333333', 2, 1, 1597420872, 1596981445);

-- --------------------------------------------------------

--
-- 表的结构 `user_register`
--

CREATE TABLE `user_register` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '用户注册ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `register_bg` char(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户注册背景图片',
  `is_open_register` char(6) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否开启注册',
  `img_proving` tinyint(1) UNSIGNED NOT NULL COMMENT '用户注册图片验证码',
  `open_auditing` tinyint(1) UNSIGNED NOT NULL COMMENT '用户注册开启审核',
  `register_agreement` tinyint(1) UNSIGNED NOT NULL COMMENT '用户注册协议',
  `update_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user_register`
--

INSERT INTO `user_register` (`id`, `user_id`, `register_bg`, `is_open_register`, `img_proving`, `open_auditing`, `register_agreement`, `update_time`, `create_time`) VALUES
(1, 1, '/static/admin/uploads/20200809\\8df5afbb9b2ac72304485f53f147d30c.png', '1,2', 2, 2, 2, 1597411755, 1596726057),
(3, 2, '/static/admin/uploads/20200809\\f9d9f3c150c02e43783c5bab9778c60e.png', '1,3', 1, 1, 1, 0, 1596985822);

--
-- 转储表的索引
--

--
-- 表的索引 `accessory`
--
ALTER TABLE `accessory`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `agreement_mange`
--
ALTER TABLE `agreement_mange`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `authority_allocation`
--
ALTER TABLE `authority_allocation`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `backstage_config`
--
ALTER TABLE `backstage_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `base_configure`
--
ALTER TABLE `base_configure`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `eamil_setting`
--
ALTER TABLE `eamil_setting`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `email_message_template`
--
ALTER TABLE `email_message_template`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `manager_list`
--
ALTER TABLE `manager_list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `message_template`
--
ALTER TABLE `message_template`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `ordering_service`
--
ALTER TABLE `ordering_service`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `password_find`
--
ALTER TABLE `password_find`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pic_identifying_code`
--
ALTER TABLE `pic_identifying_code`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `role_manage`
--
ALTER TABLE `role_manage`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `shop_message`
--
ALTER TABLE `shop_message`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sms_setting`
--
ALTER TABLE `sms_setting`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `accessory`
--
ALTER TABLE `accessory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '附件ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `agreement_mange`
--
ALTER TABLE `agreement_mange`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '协议管理', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `authority_allocation`
--
ALTER TABLE `authority_allocation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '权限id', AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `backstage_config`
--
ALTER TABLE `backstage_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '后台配置ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `base_configure`
--
ALTER TABLE `base_configure`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '基础配置ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `eamil_setting`
--
ALTER TABLE `eamil_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '邮箱设置id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `manager_list`
--
ALTER TABLE `manager_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员id', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `message_template`
--
ALTER TABLE `message_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息模板ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `ordering_service`
--
ALTER TABLE `ordering_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单售后ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `password_find`
--
ALTER TABLE `password_find`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '密码找回ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pic_identifying_code`
--
ALTER TABLE `pic_identifying_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图片验证码ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `role_manage`
--
ALTER TABLE `role_manage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色管理id', AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `search`
--
ALTER TABLE `search`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '搜索ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `shop_message`
--
ALTER TABLE `shop_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品信息ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sms_setting`
--
ALTER TABLE `sms_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '短信设置ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户登录ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户注册ID', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
