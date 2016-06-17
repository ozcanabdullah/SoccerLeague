create table season(
	season serial primary key,
	startdate date not null,
	enddate date not null
);


create table language(
	id_language SERIAL PRIMARY KEY,
	lang varchar(100)
);
create table country(
	id_country serial primary key,
	country varchar(100) not null,
	abbreviation varchar(2) not null
);
create table injuries(
	id_injury serial primary key,
	description varchar(100) not null,
	min_games int not null,
	max_games int not null
);


create table account(
	id_account SERIAL PRIMARY KEY,
	email varchar(100) not null,
	password varchar(256) not null,
	father int,
		CONSTRAINT account_father_fkey FOREIGN KEY (father) REFERENCES account(id_account),
	language int not null,
		CONSTRAINT account_language_fkey FOREIGN KEY (language) REFERENCES language(id_language),
	slvip int,
	timezone int,
	status varchar(1)
);
create table session(
	id_session serial primary key,
	id_account int not null,
		CONSTRAINT session_idaccount_fkey FOREIGN KEY (id_account) REFERENCES account(id_account),
	session varchar(256) not null,
	valid boolean,
	startdate timestamp default now()
);



create table club(
	id_club serial primary key,
	id_country int not null,
		CONSTRAINT club_country_fkey FOREIGN KEY (id_country) REFERENCES country(id_country),
	id_account int not null,
		CONSTRAINT club_account_fkey FOREIGN KEY (id_account) REFERENCES account(id_account),
	clubname varchar(25) not null,
	createdate date default now(),
	status varchar(25)
);
create table club_info(
	id_club_info serial primary key,
	id_club int not null,
		CONSTRAINT clubinfo_idclub_fkey FOREIGN KEY (id_club) REFERENCES club(id_club),
	nickname varchar(25) default 'null',
	manager varchar(25)  default 'null',
	stadium varchar(25)  default 'null',
	city varchar(25)  default 'null'
);
create table club_fans(
	id_club_fans serial primary key,
	id_club int not null,
		CONSTRAINT clubfans_club_fkey FOREIGN KEY (id_club) REFERENCES club(id_club),
	fans int not null default 6000
);
create table club_friends(
	id_friendship serial primary key, 
	friend_one int not null,
		CONSTRAINT clubfriends_friendone FOREIGN KEY (friend_one) REFERENCES club(id_club),
	friend_two int not null,
		CONSTRAINT clubfriends_friendone FOREIGN KEY (friend_two) REFERENCES club(id_club),
	when date
);
create table club_visits(
	id_club_visits serial primary key,
	id_club int not null,
		CONSTRAINT clubvisits_idclub_fkey FOREIGN KEY (id_club) REFERENCES club(id_club),
	id_club_visited int not null,
		CONSTRAINT clubvisits_idclubvisited_fkey FOREIGN KEY (id_club) REFERENCES club(id_club),
	when date
);

create table club_finances();
create table club_stadium();
create table club_facilities();


create table players_position();
create table players(
	id_player serial primary key,
	id_player_club int not null,
		CONSTRAINT player_club_fkey FOREIGN KEY(id_player_club) REFERENCES club(id_club),
	-- id_player_position int not null,
	-- 	CONSTRAINT player_position_fkey FOREIGN KEY(id_player_position) REFERENCES players_position(id_position)
	name varchar(150) not null,
	nickname varchar(25) not null,
	age numeric(4,2) not null,
	height numeric(4,2) not null,
	weight numeric(4,2) not null
);
create table players_attr(
	id_player_attr serial primary key,
	id_player int not null,
		CONSTRAINT playerattr_idplayer_fkey FOREIGN KEY (id_player) REFERENCES players(id_player),
	stamina numeric (5,3),
	speed numeric (5,3),
	resistance numeric (5,3),
	injury_propensity numeric (5,3),
	jump numeric (5,3),
	professionalism numeric (5,3),
	agressive numeric (5,3),
	adptability numeric (5,3),
	learning numeric (5,3),
	workate numeric (5,3),
	concentration numeric (5,3),
	decision numeric (5,3),
	positioning numeric (5,3),
	vision numeric (5,3),
	unpredictability numeric (5,3),
	communication numeric (5,3)
);	
create table players_attr_gk(){
	id_player_gk_attr serial primary key,
	id_player int not null,
		CONSTRAINT playerattrgk_idplayer_fkey FOREIGN KEY (id_player) REFERENCES players(id_player),
	handling numeric (5,3),
	aerial numeric (5,3),
	foothability numeric (5,3),
	oneanone numeric (5,3),
	reflexes numeric (5,3),
	rushingout numeric (5,3),
	kicking numeric (5,3),
	throwing numeric (5,3)
}
create table players_attr_line(
	id_player_line_attr serial primary key,
	id_player int not null,
		CONSTRAINT playerattrline_idplayer_fkey FOREIGN KEY(id_player) REFERENCES players(id_player),
	cross numeric (5,3),
	pass numeric (5,3),
	technical numeric (5,3),
	ballcontrol numeric (5,3),
	dribble numeric (5,3),
	longshot numeric (5,3),
	finish numeric (5,3),
	heading numeric (5,3),
	freekick numeric (5,3),
	marking numeric (5,3),
	tackling numeric (5,3)
);
create table players_history(
	id_player_history serial primary key, 
	id_player int not null,
		CONSTRAINT playerhistory_player_fkey FOREIGN KEY (id_player) REFERENCES players(id_player),
	season int not null,
		CONSTRAINT playerhistory_season_fkey FOREIGN KEY (season) REFERENCES season(season),
	id_club int not null,
		CONSTRAINT playerhistory_club_fkey FOREIGN KEY (id_club) REFERENCES club(id_club),
	games int DEFAULT 0,
	goals int DEFAULT 0,
	assists int DEFAULT 0,
	yellowcards int DEFAULT 0,
	redcards int DEFAULT 0,
	mvp int default 0,
	score numeric(4,2) default 0
);
create table players_injury(
	id_player_injury serial primary key,
	id_player int not null,
		CONSTRAINT playerinjury_player_fkey FOREIGN KEY (id_player) REFERENCES players(id_player),
	id_injury int not null, 
		CONSTRAINT playerinjury_injury_fkey FOREIGN KEY (id_injury) REFERENCES injuries(id_injury),
	games int not null,
	status boolean not null
);
create table players_cards(
	id_player_cards serial primary key,
	id_player int not null,
		CONSTRAINT playercards_cards_fkey FOREIGN KEY (id_player) REFERENCES players(id_player),
	cards int not null
);
/*
	yellow card gives 1 point
	red card gives 3 points
	every 3 points, player will be not available for 1 game.
	if 5 points, player will be not available for 2 games.
	CAN'T BE AVAILABLE FOR MORE GAMES? HOW? 
	
	after every game with a red card, player will pass at a judge that will punish or not.
*/

create table training();
create table player_attr_training();
create table player_attr_gk_training();
create table player_attr_line_training();

create table transferlist(
	id_transferlist serial primary key,
	id_player int not null,
		CONSTRAINT transferlist_player_fkey FOREIGN KEY (id_player) REFERENCES players(id_player),
	startDate timestamp without time zone not null,
	endDate timestamp without time zone not null
);


/**
 * COMPETITIONS
 */
create table competition_types(
	id_competition_type serial primary key, 
	type varchar(1) not null,
);
create table competition(
	id_competition serial primary key,
	id_competition_type integer not null,
		CONSTRAINT competition_idcompetitiontype_fkey FOREIGN KEY(id_player) REFERENCES competition_types(id_competition_type),
	season integer not null,
		CONSTRAINT competition_season_fkey FOREIGN KEY(season) REFERENCES season(season),
	name varchar(50) not null,
	id_country integer null,
		CONSTRAINT competition_country_fkey FOREIGN KEY(id_country) REFERENCES country(id_country),
	totalclubs integer not null
);

/**
 * LEAGUE
 */
create table league(
	id_league serial PRIMARY KEY,
	id_competition integer not null,
		CONSTRAINT league_idcompetition_fkey FOREIGN KEY(id_competition) REFERENCES competition(id_competition),
	division integer,
	group integer,
	totalgames integer not null,
	turn integer not null
);
create table league_table(
	id_league_table serial primary key,
	id_league integer not null,
		CONSTRAINT leaguetable_idleague_fkey FOREIGN KEY(id_league) REFERENCES league(id_league),
	pts integer not null DEFAULT 0,
	win integer not null DEFAULT 0,
	win_home integer not null default 0,
	win_away integer not null default 0,
	loss integer not null DEFAULT 0,
	loss_home integer not null default 0,
	loss_away integer not null default 0,
	draw integer not null DEFAULT 0,
	goalsP integer not null DEFAULT 0,
	goalsP_home integer not null default 0,
	goalsP_away integer not null default 0,
	goalsC integer not null DEFAULT 0
	goalsC_home integer not null default 0,
	goalsC_away integer not null default 0, 
	yellowcards integer not null default 0,
	redcards integer not null default 0
);


create table matches(
	id_match serial primary key,
	id_competition integer,
	id_turn integer,
	home integer not null,
	away integer not null
);