CREATE TABLE `s_chat_messages` (
`id` INT( 11 ) NOT NULL AUTO_INCREMENT ,
`user` VARCHAR( 255 ) NOT NULL ,
`message` VARCHAR( 255 ) NOT NULL ,
`when` INT( 11 ) NOT NULL ,
PRIMARY KEY ( `id` ) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
