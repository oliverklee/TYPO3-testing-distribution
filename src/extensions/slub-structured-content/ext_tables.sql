CREATE TABLE tx_slubstructuredcontent_domain_model_room (
    title       varchar(255)     DEFAULT ''  NOT NULL,
		description text             DEFAULT '',
		link        varchar(1024)    DEFAULT '',
		noise       tinyint(1)       DEFAULT 0,
		daylight    tinyint(1)       DEFAULT 0,
);
