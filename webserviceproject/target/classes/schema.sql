create table kullanici(
	username varchar(128) not null,
	password varchar(520) not null,
	enabled boolean
);
create table rol(
	username varchar(128) not null,
	authorities varchar(520) not null
);
create table public.blog(
	id bigint,
	a varchar(128),
	b varchar(128)
);
