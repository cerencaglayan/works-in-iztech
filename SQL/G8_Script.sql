/*Create statement for record_label*/

CREATE TABLE record_label(
    Record_label_id int, 
    Record_label_name varchar(255) NOT NULL, 
    Country varchar(255), 
    Email varchar(255),

    CONSTRAINT record_label_pk PRIMARY KEY (Record_label_id),
    CONSTRAINT record_label_uq1 UNIQUE (Email)
);

/*Record label insert statements:*/

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (1, 'Republic Label', 'USA', 'jjones@republicrecords.com');
        
INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (2, 'RCA Records', 'USA','jane.doe@rcarecords.com');
       
INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (3, 'Warner', 'UK', 'info@warnerbro.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (4, 'Dead Oceans', 'USA', 'info@deadoceans.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (5, 'Big Machine', 'USA', 'hr@bmlg.net');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (6, 'K-BAHN', 'USA', 'hr@kbahn.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (7, 'Capitol Records Nashvile', 'USA', 'info@crn.net');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (8, 'Fueled by Ramen', 'USA', 'd_jane@fueledbyramen.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (9, 'Vertigo Records', 'UK', 'hr@vertigo.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (10, 'House of Mythology', 'Germany', 'info@spkr.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (11, 'Roadrunner', 'USA', 'roadrunner@landspeedrecords.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (12, 'Century Media Records', 'Germany', 'info@cmr.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (13, 'Kscope', 'UK', 'hr@kscope.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (14, 'XL Records', 'USA', 'info@xlrecord.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (15, 'InsideOutMusic', 'USA', 'info@insideout.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (16, 'Ebony Son Management', 'USA', 'jdixon914@aol.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (17, 'EMI Music Publishing NY', 'USA', 'pmorgan@emimusicpub.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (18, 'Rockwilder Entertainment', 'USA', 'ellisentertain@aol.com');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (19, 'ASCAP', 'USA', 'promoe@gator.net');

INSERT INTO RECORD_LABEL (RECORD_LABEL_ID, RECORD_LABEL_NAME, COUNTRY, EMAIL)
VALUES (20, 'Jee Juh Productions', 'USA', 'beats@jeejuh.com');

/*Create statement for music user*/

CREATE TABLE music_user(
    User_id varchar(255), 
    Username varchar(255) NOT NULL, 
    Password varchar(255) NOT NULL, 
    Email varchar(255) NOT NULL, 
    First_name varchar(255) NOT NULL, 
    Last_name varchar(255) NOT NULL, 
    Date_of_birth date, 
    Profile_image BLOB, 
    Registeration_date date NOT NULL,  

    CONSTRAINT music_user_pk PRIMARY KEY (User_id),
    CONSTRAINT music_user_uq1 UNIQUE (Email),
    CONSTRAINT music_user_uq2 UNIQUE (Username),
    CONSTRAINT music_user_check2 CHECK (LENGTH(Password) > 5)
);

/*Insert statements for music user*/

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('1', 'arianagrande', 'moonlightbae', 'arianagrange@gmail.com', 'Ariana', 'Grande', to_date('1993-06-26', 'yyyy-mm-dd'), to_date('2022-12-10', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('2', 'nej', 'nejparo', 'nej@gmail.com', 'Nej', 'Right', to_date('1994-06-30', 'yyyy-mm-dd'), to_date('2022-06-26', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('3', 'taylorswift', 'taylor89', 'taylorswift@hotmail.com', 'Taylor', 'Swift', to_date('1989-12-04', 'yyyy-mm-dd'), to_date('2022-04-11', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('4', 'carrieunderwood', 'carryund', 'carryunder@hotmail.com', 'Carry', 'Underwood', to_date('1983-03-10', 'yyyy-mm-dd'), to_date('2022-05-04', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('5', 'panicatdisco', 'patddd', 'panicdisco@hotmail.com', 'Brendon', 'Urie', to_date('1987-12-04', 'yyyy-mm-dd'), to_date('2022-12-20', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('6', 'arethafranklin', 'afra42', 'aretha@hotmail.com', 'Aretha', 'Franklin', to_date('1942-03-25', 'yyyy-mm-dd'), to_date('2022-03-10', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('7', 'dualipa', 'dua9595', 'dualipa@gmail.com', 'Dua', 'Lipa', to_date('1995-08-22', 'yyyy-mm-dd'), to_date('2022-03-23', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER (USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, REGISTERATION_DATE)
VALUES ('8', 'francescodandrea', '8franch41', 'franchdandrea@hotmail.com', 'Francesco', 'Dandrea', to_date('1941-03-08', 'yyyy-mm-dd'), to_date('2022-04-23', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('9', 'cher', 'ch55er9999', 'cher@hotmail.com', 'Cher', 'Sarkisian', to_date('2022-05-25', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('10', 'mitski', 'mitskimiyav', 'mitskimiyav@gmail.com', 'Mitski', 'Miyawaki', to_date('2022-04-15', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('11', 'garyleox', 'GaryLe4Vox', 'garylevox@gmail.com', 'Gary', 'LeVox', to_date('2022-01-12', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('12', 'nickcarter', 'carter455', 'nickcarter@hotmail.com', 'Nick', 'Carter', to_date('2022-02-24', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('13', 'tylerjoseph', 'joty4seph4', 'jostyler@gmail.com', 'Tyler', 'Joseph', to_date('2022-02-14', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('14', 'ozzyousbourne', 'ozzybourne', 'ozzyousbourne@hotmail.com', 'Ozzy', 'Ousbourne', to_date('2022-04-19', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('15', 'kristofferrygg', 'kristofferryggss', 'kristofferrygg@gmail.com', 'Kristoffer', 'Rygg', to_date('2021-12-13', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('16', 'marioduplantier', 'marioduplantierss', 'marioduplantier@gmail.com', 'Mario', 'Duplantier', to_date('2021-11-03', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('17', 'mikaelstanne', 'mikaelstanneff', 'mikaelstanne@gmail.com', 'Mikael', 'Stanne', to_date('2022-11-01', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('18', 'danielcavanagh', 'danielcavanagh', 'danielcavanagh@hotmail.com', 'Daniel', 'Cavanagh', to_date('2022-07-04', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('19', 'thomyorke', 'thomyorke4134', 'thomyorke@gmail.com', 'Thom', 'Yorke', to_date('2021-07-24', 'yyyy-mm-dd'));

INSERT INTO MUSIC_USER(USER_ID, USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, REGISTERATION_DATE)
VALUES ('20', 'einarsolberg', 'einarsolberg55321', 'einarsolberg@hotmail.com', 'Einar', 'Solberg', to_date('2021-09-28', 'yyyy-mm-dd'));

/*Create statement for album*/

CREATE TABLE album(
    Album_id int, 
    Album_name varchar(255) NOT NULL,
    Duration number(7,2) NOT NULL, 
    Release_date date, 
    Image BLOB,

    CONSTRAINT album_pk PRIMARY KEY (Album_id),
    CONSTRAINT album_check1 CHECK (Duration < 10000.00 AND Duration > 0.00)
);

/*Album insert statements:*/
INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE)
VALUES(1, 'Aretha Now', 29.27, to_date('1998-06-14', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE)
VALUES(2, 'Future Nostalgia', 43.23, to_date('2020-03-27', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(3, 'Believe', 44.1, to_date('1998-01-01', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(4, 'Be the Cowboy', 32.34, to_date('2018-08-17', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(5, 'Paro', 3.24, to_date('2021-05-21', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(6, 'Christmas & Chill', 13.10, to_date('2015-12-18', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(7, 'Me And My Gang', 56.06, to_date('2006-01-01', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(8, 'The Hits-Chapter One', 52.08, to_date('2001-10-23', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(9, 'Midnights(3am Edition)', 69, to_date('2022-10-22', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(10, 'Some Hearts', 53.59, to_date('2005-11-14', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(11, 'Blurryface', 52.23, to_date('2015-05-15', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(12, 'Vices & Virtues', 37.30, to_date('2011-03-18', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(13, 'Heaven & Hell', 39.48, to_date('1980-04-25', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(14, 'Flowers of Evil', 37.56, to_date('2020-08-28', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(15, 'Fortitude', 51.57, to_date('2021-04-30', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(16, 'Moment', 50.03, to_date('2020-11-20', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(17, 'Eternity', 70, to_date('1996-01-01', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(18, 'A Moon Shaped Pool', 52.37, to_date('2016-05-08', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(19, 'Aphelion', 56.04, to_date('2021-08-27', 'yyyy-mm-dd'));

INSERT INTO ALBUM (ALBUM_ID, ALBUM_NAME, DURATION, RELEASE_DATE) 
VALUES(20, 'With Some Malice', 13.11, to_date('2020-08-05', 'yyyy-mm-dd'));

/*Create statement for artist*/

CREATE TABLE artist(
    Artist_id int, 
    Artist_name varchar(255) NOT NULL, 
    Monthly_streams int NOT NULL, 
    Start_date date, 
    Record_label_id int, 
    User_id varchar(255) NOT NULL,

    CONSTRAINT artist_pk PRIMARY KEY (Artist_id),
    CONSTRAINT artist_fk1 FOREIGN KEY (Record_label_id) 
        REFERENCES record_label(Record_label_id)  
        ON DELETE CASCADE,
    CONSTRAINT artist_fk2 FOREIGN KEY (User_id) 
        REFERENCES music_user(User_id)  
        ON DELETE CASCADE,
    CONSTRAINT artist_checkl CHECK (Monthly_streams >= 0)
);

/*Insert statement for artist*/

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (1, 'Aretha Franklin', 10000000, to_date('2014-10-10', 'yyyy-mm-dd'), 2,'6');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (2, 'Dua Lipa', 5500000,to_date('2014-01-01', 'yyyy-mm-dd'), 3,'7');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (3, 'Cher', 18000874,to_date('1998-01-01', 'yyyy-mm-dd'), 3,'9');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id) 
VALUES (4, 'Mitski', 15678595,to_date('2015-12-22', 'yyyy-mm-dd'), 4,'10');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (5, 'Nej', 4500000,to_date('2020-01-01', 'yyyy-mm-dd'), 16,'2');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (6, 'Ariana Grande', 15000890,to_date('2011-10-10', 'yyyy-mm-dd'), 1,'1');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (7, 'Rascal Flatts', 5600000,to_date('1998-01-01', 'yyyy-mm-dd'), 5,'11');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (8, 'Backstreet Boys', 10850900,to_date('2013-01-01', 'yyyy-mm-dd'), 6,'12');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (9, 'Taylor Swift', 10000000,to_date('2018-01-01', 'yyyy-mm-dd'), 1,'3');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (10, 'Carrie Underwood', 12870658,to_date('2017-03-01', 'yyyy-mm-dd'), 7,'4');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (11, 'Twenty One Pilots', 6500000,to_date('2012-01-01', 'yyyy-mm-dd'), 8,'13');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (12, 'Panic! At The Disco', 8500820,to_date('2004-12-15', 'yyyy-mm-dd'), 8,'5');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (13, 'Black Sabbath', 6800000,to_date('1970-01-01', 'yyyy-mm-dd'), 9,'14');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (14, 'Ulver', 1007900,to_date('2010-01-01', 'yyyy-mm-dd'), 10,'15');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (15, 'Gojira', 18000040,to_date('2011-01-01', 'yyyy-mm-dd'), 11,'16');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (16, 'Dark Tranquillity', 8100600,to_date('1998-01-01', 'yyyy-mm-dd'), 12,'17');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (17, 'Anathema', 2186000,to_date('2011-01-01', 'yyyy-mm-dd'), 13,'18');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (18, 'Radiohead', 9850000,to_date('2007-10-01', 'yyyy-mm-dd'), 14,'19');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (19, 'Leprous', 1950000,to_date('2011-02-28', 'yyyy-mm-dd'), 15,'20');

INSERT INTO artist (Artist_id, Artist_name, Monthly_streams, Start_Date, Record_label_id, User_id)
VALUES (20, 'Francesco Dandrea', 957852,to_date('1998-01-01', 'yyyy-mm-dd'), NULL ,'8');

/*Create statement for playlist*/

CREATE TABLE playlist(
    User_id varchar(255), 
    Playlist_id int, 
    Playlist_name varchar(255) NOT NULL, 
    Duration number(7,2), 
    Image BLOB,

    CONSTRAINT playlist_pk PRIMARY KEY (User_id, Playlist_id),
    CONSTRAINT playlist_check1 CHECK (Duration > 0.00),
    CONSTRAINT playlist_fk1 FOREIGN KEY (User_id) 
        REFERENCES music_user(User_id)
        ON DELETE CASCADE,
    CONSTRAINT playlist_uq UNIQUE (Playlist_id)
);

/*Insert statements for playlist:*/
INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('1', 1, 'Playlist One', 50.50, NULL);

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('1', 2, 'Playlist Two', 15.26, NULL);

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('2', 3, 'My Favs', 60.02, NULL);

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('2' , 4, 'Turkish Rock', 80.15, NULL);

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('2', 5, 'Pop for sadness', 45.34, NULL);

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('3', 6, 'Lets have fun', 123.45, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('3', 7, 'UK Pop', 79.31, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('3', 8, 'March Playlist', 64.37, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('4' , 9, 'Playlist for sad people', 46.45, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('4', 10, 'Music for GYM', 125.46, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('5', 11, 'My First Playlist', 6.45, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('6', 12, 'My Fav 80s Songs', 54.46, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('6', 13, 'Rap for Motivation', 64.23, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('7',  14, 'Listen Before Going Out', 89.45, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('7' , 15, 'Turkish Pop', 130.52, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('7', 16, 'My Anatolian Rock Gems', 78.58, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('7', 17, 'Playlist for Zumba', 60.00, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('7', 18, 'Playlist for Jogging', 98.45, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('7', 19, 'Best of The Weekend', 54.12, NULL );

INSERT INTO playlist (User_id, Playlist_id, Playlist_name, Duration, Image)
VALUES ('8', 20, 'Best Pride Songs', 67.04, NULL);

/*Create statement for song*/

CREATE TABLE song(
    Song_id int, 
    Song_name varchar(255) NOT NULL, 
    Duration number(7,2) NOT NULL, 
    Release_date date, 
    No_of_streams int, 
    Lyrics BLOB, 
    
    CONSTRAINT song_pk PRIMARY KEY (Song_id),
    CONSTRAINT song_check1 CHECK (Duration < 10000.00 AND Duration > 0.00),
    CONSTRAINT song_check2 CHECK (No_of_streams >= 0)
);

/*Insert statements for songs
Note: Lyrics are BLOB type to support more text.
*/


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 1,  'I Say a Little Prayer' ,3.37 , to_date('1968-06-14', 'yyyy-mm-dd') , 4000000);

UPDATE SONG
SET lyrics = (utl_raw.cast_to_raw('Say a little prayer for you The moment I wake up Before I put on my makeup (makeup) I say a little prayer for you While combing my hair now 
Im wondering what to wear now (wear now)
I say a little prayer for you (for you, ooh)
Oh, baby
ever
(Youll stay in my heart and I will love you)
(Forever) forever (and ever) ever
(We never will part, oh, how I love you)
(Together) togethеr (together) togethеr
(Thats how it must be to live without you)
(Would only mean heartbreak for me)
Ooh, ooh, ooh
I run for the bus, dear
While riding, I think of us, dear (us, dear), hey
I say a little prayer for you, oh, oh-oh, oh-oh (oh, shawty)
At work, I just take time
And all through my coffee breaktime (breaktime)
I say a little prayer for you
forever
(Youll stay in my heart and I will love you)
(Forever) forever (and ever) ever
(We never will part, oh, how I love you)
(Together) together (together) together
(Thats how it must be to live without you)
(Would only mean heartbreak for me)
Only mean heartbreak for me
Ooh-ooh
'))
where song_id = 1;

INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 2,  'Love Again'  , 4.18  , to_date('2020-03-27', 'yyyy-mm-dd') , 35765078);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('I never thought that I would find a way out
I never thought Id hear my heartbeat so loud
I cant believe theres something left in my chest anymore
But goddamn, you got me in love again
I used to think that I was made out of stone
I used to spend so many nights on my own
I never knew I had it in me to dance anymore
But goddamn, you got me in love again
Show me that heavens right here, baby
Touch me, so I know Im not crazy
Never have I ever met somebody like you
Used to be afraid of love and what it might do
But goddamn, you got me in love again
You got me in love again
You got me in love again
You got me in love again
Again
So many nights, my tears fell harder than rain
Scared I would take my broken heart to the grave
Id rather die than have to live in a storm like before
But goddamn, you got me in love again
Show me that heavens right here, baby
Touch me, so I know Im not crazy
Never have I ever met somebody like you
Used to be afraid of love, and what it might do
But goddamn, you got me in love again
You got me in love again
You got me in love again
You got me in love again
Again
'))
WHERE SONG_ID =   2;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 3,  'Strong Enough' ,3.44 , to_date('1998-01-01', 'yyyy-mm-dd') , 9500000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('I dont need your sympathy
Theres nothing you can say or do for me
And I dont want a miracle
Youll never change for no one
And I hear your reasons why
Where did you sleep last night?
And was she worth it
Was she worth it?
Cause Im strong enough
To live without you
Strong enough
And I quit crying
Long enough
Now Im strong enough
To know
You gotta go
Theres no more to say
So save your breath and
Walk away
No matter what I hear you say
Im strong enough
To know
You gotta go
So you feel misunderstood
Baby, have I got news for you
On being used, I could write the book
But you dont wanna hear about it
Cause Ive been losing sleep
And youve been goin cheap
And she aint worth half of me its true
Now Im telling you
That Im strong enough
'))
WHERE SONG_ID = 3 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (   4 ,  'A Pearl' ,2.36 , to_date('2018-08-17', 'yyyy-mm-dd') , 10500000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Youre growing tired of me
You love me so hard and I still cant sleep
Youre growing tired of me
And all the things I dont talk about
Sorry, I dont want your touch
Its not that I dont want you
Sorry, I cant take your touch
Its just that I fell in love with a war
Nobody told me it ended
And it left a pearl in my head
And I roll it around every night
Just to watch it glow
Every night, baby, thats where I go
Sorry, I dont want your touch
Its not that I dont want you
Sorry, I cant take your touch
Theres a hole that you fill
You fill, you fill
But its just that I fell in love with a war
And nobody told me it ended
And it left a pearl in my head
And I roll it around every night
Just to watch it glow
Every night, baby, thats where I go
Just to watch it glow'))
WHERE SONG_ID = 4 ;



INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 5 ,  'Paro' ,3.25 , to_date('2021-05-05', 'yyyy-mm-dd') , 2000000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Hola, hola, hello,
Youre harassing me by phone, hello?
You were not really giving me news anymore
When I was in deep trouble
With or without allies, I would have built my life
Far away from evil and words
 
I have taken it to the next level
My beauty was detrimental to me
Should I be suspicious
Of you more than of others?
Your heart wants me but
Youre not telling me about everything
Youre not telling me about everything
 
Hello? Hello? Hello? My heart, my heart
ım becoming paranoid*, paranoid, paranoid,
Hello? Hello? Hello? My heart, my heart
Im becoming paranoid, paranoid, paranoid,
'))
WHERE SONG_ID = 5 ;

INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (6 ,  'True Love' ,2.46 , to_date('2015-12-18', 'yyyy-mm-dd') , 5500000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('On the first day of Christmas when you gave me all them kisses
Boy, you showed me things, come hold me please, and never let me go
On the second day of Christmas, said you felt like somethings missing
So you promised me that promise ring to keep til we get old, boy
On the third day of Christmas
We got all in our feelings, said I love you and meant it, oh
On the fourth we committed
Any time, he could get it, hes the real one, I know it
Look at all the things my true love gave to me
My true love, my true love
You are my true love
Look at all the things my true love gave to me
My true love, my true love
You are my true love
(Ah, ah, ah, ah, ah, oh-oh, ah, ah)
Ah-ah, you are my true love
On the fifth day of Christmas You asked me whats on my wishlist
And I told you all I wanted was forever with my boo
After six days in your arms I got that tattoo on my heart
Cause Im your moonlight, youre my star and nothings shining more than you, boy
You completed the vision
Now I feel like Im living, youre so one-in-a-million, oh
Im so glad we committed
Any time, he could get it, hes the real one, I know it
Look at all the things my true love gave to me
My true love
You are my true love
You are my true love
Look at all the things my true love gave to me (you are my true love)
My true love, my true love
You are my true love
(Ah, ah, ah, ah, ah, oh-oh, ah, ah)
Ah-ah, you are my true love'))
WHERE SONG_ID = 6 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (  7,  'Life is a Highway' ,4.36 , to_date('2006-01-01', 'yyyy-mm-dd') , 4558985);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Whoo!
Mmm, yeah
Life is like a road that you travel on
When there is one day here, and the next day gone
Sometimes you bend, sometimes you stand
Sometimes you turn your back to the wind
There is a world outside every darkened door
Where blues wont haunt you anymore
Where the brave are free and lovers soar
Come ride with me to the distant shore
We wont hesitate
To break down the garden gate
There is not much time left today, yeah
Life is a highway
I wanna ride it all night long
If you are goin my way
Well, I wanna drive it all night long
'))
WHERE SONG_ID = 7 ;

INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 8,  'Drowning' ,4.27 , to_date('2001-09-25', 'yyyy-mm-dd') , 8059670);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Dont pretend youre sorry
I know youre not
You know you got the power
To make me weak inside
And girl you leave me breathless
But its OK
Cause you are my survival
Now hear me say

I cant imagine
Life without your love
And even forever
Dont seem like long enough
'))
WHERE SONG_ID = 8 ;



INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (  9,  'High Infidelity' ,3.51 , to_date('2022-10-22', 'yyyy-mm-dd') , 6500000);

UPDATE SONG 
SET LYRICS = (utl_raw.cast_to_raw('Lock broken, slur spoken
Wound open, game token
I didnt know you were keeping count
Rain soaking, blind hoping
You said I was freeloading
I didnt know you were keeping count
High infidelity
Put on your records and regret me
I bent the truth too far tonight
I was dancing around, dancing around it
High infidelity
Put on your headphones and burn my city
Your picket fence is sharp as knives
I was dancing around, dancing around it
Do you really want to know where I was April 29th?
Do I really have to chart the constellations in his eyes?
Storm coming, good husband
Bad omen'))
WHERE SONG_ID =  9;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 10 ,  'Before He Cheats', 3.20, to_date('2005-11-14', 'yyyy-mm-dd'), 3550000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Right now, hes probably slow dancin
With a bleached-blond tramp and shes probably gettin frisky
Right now, hes probably buyin her some fruity little drink
Cause she cant shoot whiskey
Right now, hes probably up behind her with a pool-stick
Showin her how to shoot a combo
And he dont know

I dug my key into the side of his pretty little souped-up four-wheel drive
Carved my name into his leather seats
I took a Louisville slugger to both headlights
I slashed a hole in all four tires
Maybe next time he ll think before he cheats
'))
WHERE SONG_ID = 10 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 11 ,  'Hometown' ,3.55, to_date('2015-05-15', 'yyyy-mm-dd') , 2500000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('A shadow tilts its head at me
Spirits in the dark are waiting
I will let the wind, go quietly
I will let the wind, go quietly

Be the one, be the one
To take my soul and make it undone
Be the one, be the one
To take me home and show me the sun

I know, I know
You can bring the fire, I can bring the bones
I know, I know
You ll make the fire, my bones will make it grow'))
WHERE SONG_ID = 11 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 12,  'Hurricane' ,4.25 , to_date('2011-03-18', 'yyyy-mm-dd') ,3000000);

UPDATE SONG 
SET LYRICS = (utl_raw.cast_to_raw('Pistol shots ring out in the barroom night
Enter Patty Valentine from the upper hall
She sees the bartender in a pool of blood
Cries out, My God, theyve killed them all!

Here comes the story of the Hurricane
The man the authorities came to blame
For somethin that he never done
Put in a prison cell, but one time he could-a been
The champion of the world'))
WHERE SONG_ID =  12;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (  13,  'Die Young - 2009 Remaster' ,4.42 , to_date('1980-04-25', 'yyyy-mm-dd') ,1305078);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Gather the wind
Though the wind wont help you fly at all
Your backs to the wall
Chain the sun
And it tears away to face you as you run
You run, you run

Behind the smile
Theres danger and a promise to be told
Youll never get old, ha
Lifes fantasy
To be locked away and still to think youre free
Youre free, were free

So live for today
Tomorrow never comes

Die young, die young
Cant you see the writing on the wall?
Die young, going to die young
Someone stopped the fall'))
WHERE SONG_ID = 13 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 14 ,  'A Thousand Cuts' , 4.42 , to_date('2020-08-08', 'yyyy-mm-dd') , 355000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('This is the story of two young lovers on a beach
Who found each other by the end of the war
They set out to explore the bodies on the shore
And what they found - it would hurt them
Smoke mixed with fire
Pity mixed with pain
The waves came crashing
Swept them away
Confessions written in the sand

The pleasures of the flesh
The passion
Sex and death
By a thousand cuts
The pleasures of the flesh
By a thousand cuts'))
WHERE SONG_ID =14  ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 15 ,  'Another World' ,4.25 , to_date('2021-04-30', 'yyyy-mm-dd') , 5560720);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Another world
Another place to be
Other world
A new place for me
[Verse 2]
Dont believe your lies, dont believe your tales
Im longing for the day I will find

[Chorus]
Another world
Another place to be
Other world
A new place for me

[Chorus]
Another world
Another place to be
Other world
A new place for me'))
WHERE SONG_ID = 15  ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (  16 ,  'In Truth Divided' ,4.41 , to_date('2020-11-20', 'yyyy-mm-dd') , 250000);

UPDATE SONG 
SET LYRICS = (utl_raw.cast_to_raw('This matters more with time
Than anything I know
This object permanence
Keeps you with me til the end
Inconsequential I may be I know
Inside the silence

In truth divided
I have lost myself again
When words are not enough
And time is not the healer
What is gone inside
Has left me here without

This hardened heart resists
Im left here barely standing
What lies behind the fear
Belies the grand perspective
When I dont want to see it
And I dont want to hear
The world is silent'))
WHERE SONG_ID = 16 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (  17,  'Angelica' ,5.51 , to_date('1996-01-01', 'yyyy-mm-dd') , 1000000 );

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Where are you tonight?
Wild flower in starlit heaven
Still enchanted in flight
Obsessions lament to freedom

A timeless word, the meanings changed
But Im still burning in your flames,
Incessant, lustral mmasquerade,
Unengaged, dilit love didnt taste the same'))
WHERE SONG_ID = 17 ;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES (  18 ,  'Daydreaming' , 6.24 , to_date('2016-05-06', 'yyyy-mm-dd'), 3778050);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Dreamers
They never learn
They never learn

Beyond the point
Of no return
Of no return

Then its too late
The damage is done
The damage is done

This goes
Beyond me
Beyond you'))
WHERE SONG_ID = 18;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 19,  'Out of Here' ,4.16 , to_date('2021-08-27', 'yyyy-mm-dd') , 1500789);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Never thought I go this far
Being tied up by these old chains
Have you ever seen a star?
Trapped inside its old remains

Cant accept that Im lost
In what seems to be the new reality
Every bridge that I have crossed
Reminds me of the time I was free
Cant relate to this at all
Where can I go to find my inner spirit back'))
WHERE SONG_ID =  19;


INSERT INTO song (Song_id ,  Song_name ,Duration , Release_date , No_of_streams)
VALUES ( 20 ,  'With Some Malice' ,2.00 , to_date('2020-08-05', 'yyyy-mm-dd'), 400000);

UPDATE SONG
SET LYRICS = (utl_raw.cast_to_raw('Never no malice on this side
Never know better how I get mine
Darling worry about yourself
Trying to keep my head down
So

Never no malice on this side
Never know better how I get mine
Darling worry about yourself
Trying to keep my head down
So much
'))
WHERE SONG_ID =  20;


/*Create statement for library*/

CREATE TABLE library(
    Library_id int NOT NULL,
    User_id varchar(255) NOT NULL,

    CONSTRAINT library_pk PRIMARY KEY (Library_id),
    CONSTRAINT library_fk1 FOREIGN KEY (User_id) 
        REFERENCES music_user(User_id) 
        ON DELETE CASCADE
);

/*Insert statement for library:*/
INSERT INTO library (library_id, user_id)
VALUES (1, '1');

INSERT INTO library (library_id, user_id)
VALUES (2, '2');

INSERT INTO library (library_id, user_id)
VALUES (3, '3');

INSERT INTO library (library_id, user_id)
VALUES (4, '4');

INSERT INTO library (library_id, user_id)
VALUES (5, '5');

INSERT INTO library (library_id, user_id)
VALUES (6, '6');

INSERT INTO library (library_id, user_id)
VALUES (7, '7');

INSERT INTO library (library_id, user_id)
VALUES (8, '8');

INSERT INTO library (library_id, user_id)
VALUES (9, '9');

INSERT INTO library (library_id, user_id)
VALUES (10, '10');

INSERT INTO library (library_id, user_id)
VALUES (11, '11');

INSERT INTO library (library_id, user_id)
VALUES (12, '12');

INSERT INTO library (library_id, user_id)
VALUES (13, '13');

INSERT INTO library (library_id, user_id)
VALUES (14, '14');

INSERT INTO library (library_id, user_id)
VALUES (15, '15');

INSERT INTO library (library_id, user_id)
VALUES (16, '16');

INSERT INTO library (library_id, user_id)
VALUES (17, '17');

INSERT INTO library (library_id, user_id)
VALUES (18, '18');

INSERT INTO library (library_id, user_id)
VALUES (19, '19');

INSERT INTO library (library_id, user_id)
VALUES (20, '20');

/*Create statement for record label telephone number*/

CREATE TABLE record_label_telephone_number(
    Record_label_id int NOT NULL, 
    Telephone_no varchar(15),

    CONSTRAINT record_label_telephone_number_pk 
        PRIMARY KEY (Record_label_id, Telephone_no),
    CONSTRAINT record_label_telephone_number_fk1 
        FOREIGN KEY (Record_label_id) 
        REFERENCES record_label(Record_label_id) 
        ON DELETE CASCADE,
    CONSTRAINT record_label_telephone_number_uq1
        UNIQUE(Telephone_no)
);

/*Record_label_telephone_number insert statements*/
INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(1, '+905310001012');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(1, '+905310001013');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(2, '+905310001014');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(3, '+905310001015');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(3, '+905310001016');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(3, '+905310001017');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(4, '+905310001018');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(5, '+905310001020');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(6, '+905310001021');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(7, '+905310001022');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(7, '+905310001023');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(8, '+905310001024');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(8, '+905310001025');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(8, '+905310001026');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(9, '+905310001027');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(10, '+905310001028');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(11, '+905310001029');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(12, '+905310001030');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(13, '+905310001031');

INSERT INTO record_label_telephone_number(Record_label_id, Telephone_no)
VALUES(14, '+905310001032');
/*Create statement for song genre*/

CREATE TABLE song_genre(
    Song_id int NOT NULL, 
    Genre varchar(255) NOT NULL,

    CONSTRAINT song_genre_pk PRIMARY KEY (Song_id, Genre),
    CONSTRAINT song_genre_fk1 FOREIGN KEY (Song_id) 
        REFERENCES song(Song_id)
        ON DELETE CASCADE
);

/*Song genre insert statements*/
INSERT INTO song_genre (Song_id, Genre)
VALUES (1,'Soul');

INSERT INTO song_genre (Song_id, Genre)
VALUES (2,'UK Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (3,'Indie');

INSERT INTO song_genre (Song_id, Genre)
VALUES (4,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (5,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (6,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (7,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (8,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (9,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (10,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (11,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (12,'Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (13,'Indie');

INSERT INTO song_genre (Song_id, Genre)
VALUES (14,'Synth Pop');

INSERT INTO song_genre (Song_id, Genre)
VALUES (15,'Black Metal');

INSERT INTO song_genre (Song_id, Genre)
VALUES (16,'Metal');

INSERT INTO song_genre (Song_id, Genre)
VALUES (17,'Black Metal');

INSERT INTO song_genre (Song_id, Genre)
VALUES (18,'Indie');

INSERT INTO song_genre (Song_id, Genre)
VALUES (19,'Death Metal');

INSERT INTO song_genre (Song_id, Genre)
VALUES (20,'Pop');

/*Create statement for has*/

Create TABLE has(
    Artist_id int NOT NULL, 
    Album_id int NOT NULL,

    CONSTRAINT has_pk PRIMARY KEY (Artist_id, Album_id),
    CONSTRAINT has_fk1 FOREIGN KEY (Artist_id) 
        REFERENCES artist(Artist_id)
        ON DELETE CASCADE,
    CONSTRAINT has_fk2 FOREIGN KEY (Album_id) 
        REFERENCES album(album_id)
        ON DELETE CASCADE
);

/*Has insert statements*/

INSERT INTO has (Artist_id, Album_id)
VALUES (1, 1);

INSERT INTO has (Artist_id, Album_id)
VALUES (2, 2);

INSERT INTO has (Artist_id, Album_id)
VALUES (3, 3);

INSERT INTO has (Artist_id, Album_id)
VALUES (4, 4);

INSERT INTO has (Artist_id, Album_id)
VALUES (5, 5);

INSERT INTO has (Artist_id, Album_id)
VALUES (6, 6);

INSERT INTO has (Artist_id, Album_id)
VALUES (7, 7);

INSERT INTO has (Artist_id, Album_id)
VALUES (8, 8);

INSERT INTO has (Artist_id, Album_id)
VALUES (9, 9);

INSERT INTO has (Artist_id, Album_id)
VALUES (10, 10);

INSERT INTO has (Artist_id, Album_id)
VALUES (11, 11);

INSERT INTO has (Artist_id, Album_id)
VALUES (12, 12);

INSERT INTO has (Artist_id, Album_id)
VALUES (13, 13);

INSERT INTO has (Artist_id, Album_id)
VALUES (14, 14);

INSERT INTO has (Artist_id, Album_id)
VALUES (15, 15);

INSERT INTO has (Artist_id, Album_id)
VALUES (16, 16);

INSERT INTO has (Artist_id, Album_id)
VALUES (17, 17);

INSERT INTO has (Artist_id, Album_id)
VALUES (18, 18);

INSERT INTO has (Artist_id, Album_id)
VALUES (19, 19);

INSERT INTO has (Artist_id, Album_id)
VALUES (20, 20);

/*Create statement for contain*/

CREATE TABLE contain(
    Album_id int NOT NULL,
    Song_id int NOT NULL,

    CONSTRAINT contain_pk PRIMARY KEY (Album_id, Song_id),
    CONSTRAINT contain_fk1 FOREIGN KEY (Album_id) 
        REFERENCES album(album_id)
        ON DELETE CASCADE,
    CONSTRAINT contain_fk2 FOREIGN KEY (Song_id) 
        REFERENCES song(song_id)
        ON DELETE CASCADE
);

/*Insert statements for contain*/

INSERT INTO contain(album_id,Song_id)
VALUES (1,1);

INSERT INTO contain(album_id,Song_id)
VALUES (2,2);

INSERT INTO contain(album_id,Song_id)
VALUES (3,3);

INSERT INTO contain(album_id,Song_id)
VALUES (4,4);

INSERT INTO contain(album_id,Song_id)
VALUES (5,5);

INSERT INTO contain(album_id,Song_id)
VALUES (6,6);

INSERT INTO contain(album_id,Song_id)
VALUES (7,7);

INSERT INTO contain(album_id,Song_id)
VALUES (8,8);

INSERT INTO contain(album_id,Song_id)
VALUES (9,9);

INSERT INTO contain(album_id,Song_id)
VALUES (10,10);

INSERT INTO contain(album_id,Song_id)
VALUES (11,11);

INSERT INTO contain(album_id,Song_id)
VALUES (12,12);

INSERT INTO contain(album_id,Song_id)
VALUES (13,13);

INSERT INTO contain(album_id,Song_id)
VALUES (14,14);

INSERT INTO contain(album_id,Song_id)
VALUES (15,15);

INSERT INTO contain(album_id,Song_id)
VALUES (16,16);

INSERT INTO contain(album_id,Song_id)
VALUES (17,17);

INSERT INTO contain(album_id,Song_id)
VALUES (18,18);

INSERT INTO contain(album_id,Song_id)
VALUES (19,19);

INSERT INTO contain(album_id,Song_id)
VALUES (20,20);


/*Create statement for lib playlist*/

CREATE TABLE lib_playlist(
    Library_id int NOT NULL, 
    Playlist_id int NOT NULL,

    CONSTRAINT lib_playlist_pk PRIMARY KEY (Library_id, Playlist_id),
    CONSTRAINT lib_playlist_fk1 FOREIGN KEY (Library_id) 
        REFERENCES library(Library_id)
        ON DELETE CASCADE,
    CONSTRAINT lib_playlist_fk2 FOREIGN KEY (Playlist_id)
        REFERENCES playlist(Playlist_id)
        ON DELETE CASCADE
);

/*Insert statement for lib_playlist*/

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(1,1);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(2,2);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(3,3);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(4,4);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(5,5);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(6,6);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(7,7);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(8,8);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(9,9);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(10,10);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(11,11);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(12,12);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(13,13);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(14,14);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(15,15);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(16,16);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(17,18);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(17,19);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(19,19);

INSERT INTO lib_playlist(Library_id, Playlist_id)
VALUES(20,20);

/*Create statement for lib album*/

CREATE TABLE lib_album(
    Library_id int NOT NULL, 
    Album_id int NOT NULL,

    CONSTRAINT lib_album_pk PRIMARY KEY (Library_id, Album_id),
    CONSTRAINT lib_album_fk1 FOREIGN KEY (Library_id) 
        REFERENCES library(Library_id)
        ON DELETE CASCADE,
    CONSTRAINT lib_album_fk2 FOREIGN KEY (Album_id) 
        REFERENCES album(Album_id)
        ON DELETE CASCADE
);

/*Insert statement for lib album*/

INSERT INTO lib_album(Library_id, Album_id)
VALUES(1,1);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(2,2);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(3,3);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(4,4);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(5,5);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(6,6);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(7,7);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(8,8);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(9,9);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(10,10);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(11,11);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(12,12);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(13,13);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(14,14);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(15,15);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(16,16);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(17,18);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(17,19);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(19,19);

INSERT INTO lib_album(Library_id, Album_id)
VALUES(20,20);

/*Create statement for follows*/

CREATE TABLE follows(
    User_id varchar(255) NOT NULL,
    Following_id varchar(255) NOT NULL,

    CONSTRAINT follows_pk PRIMARY KEY (User_id, Following_id),
    CONSTRAINT follows_fk1 FOREIGN KEY (User_id) 
        REFERENCES music_user(User_id)
        ON DELETE CASCADE,
    
    CONSTRAINT follows_fk2 FOREIGN KEY (Following_id) 
        REFERENCES music_user(User_id)
        ON DELETE CASCADE
);

/*Insert statements for follows:*/

INSERT INTO follows(User_id,Following_id)
VALUES ('1', '2');

INSERT INTO follows(User_id,Following_id)
VALUES ('2', '1');

INSERT INTO follows(User_id,Following_id)
VALUES ('3', '1');

INSERT INTO follows(User_id,Following_id)
VALUES ('1', '3');

INSERT INTO follows(User_id,Following_id)
VALUES ('4', '2');

INSERT INTO follows(User_id,Following_id)
VALUES ('2', '4');

INSERT INTO follows(User_id,Following_id)
VALUES ('1', '4');

INSERT INTO follows(User_id,Following_id)
VALUES ('4', '1');

INSERT INTO follows(User_id,Following_id)
VALUES ('5', '2');

INSERT INTO follows(User_id,Following_id)
VALUES ('2', '5');

INSERT INTO follows(User_id, Following_id)
VALUES ('20', '1');

INSERT INTO follows(User_id, Following_id)
VALUES ('13', '15');

INSERT INTO follows(User_id, Following_id)
VALUES ('17', '16');

INSERT INTO follows(User_id, Following_id)
VALUES ('15', '16');

INSERT INTO follows(User_id, Following_id)
VALUES ('19', '17');

INSERT INTO follows(User_id, Following_id)
VALUES ('18', '1');

INSERT INTO follows(User_id, Following_id)
VALUES ('12', '4');

INSERT INTO follows(User_id, Following_id)
VALUES ('10', '8');

INSERT INTO follows(User_id, Following_id)
VALUES ('7', '9');

INSERT INTO follows(User_id, Following_id)
VALUES ('9', '11');

/*Create statement for holds*/

CREATE TABLE holds(
    Song_id int NOT NULL,
    Playlist_id int NOT NULL,

    CONSTRAINT holds_pk PRIMARY KEY (Song_id, Playlist_id),
    CONSTRAINT holds_fk1 FOREIGN KEY (Song_id) 
        REFERENCES song(song_id)
        ON DELETE CASCADE,
    CONSTRAINT holds_fk2 FOREIGN KEY (Playlist_id) 
        REFERENCES playlist(Playlist_id)
        ON DELETE CASCADE
);

/*Create statement for adds*/

CREATE TABLE adds(
    Song_id int NOT NULL,
    Playlist_id int NOT NULL,

    CONSTRAINT adds_pk PRIMARY KEY (Song_id, Playlist_id),
    CONSTRAINT adds_fk1 FOREIGN KEY (Song_id) 
        REFERENCES song(song_id)
        ON DELETE CASCADE,
    CONSTRAINT adds_fk2 FOREIGN KEY (Playlist_id) 
        REFERENCES playlist(Playlist_id)
        ON DELETE CASCADE
);

/*Trigger 1*/

CREATE OR REPLACE TRIGGER AddTrigger1
    AFTER INSERT ON adds
    FOR EACH ROW
    BEGIN
               INSERT INTO holds
            values(:new.playlist_id, :new.song_id);
    END;
/
/*Trigger 2*/

CREATE OR REPLACE TRIGGER DeleteTrigger1
    BEFORE DELETE ON adds
    FOR EACH ROW
    BEGIN
               DELETE FROM holds
            where playlist_id = :old.playlist_id;
    END;
/
/*Adds insert statements*/

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (1, 1);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (1, 2);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (1, 3);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (1, 4);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (2, 3);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (2, 4);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (2, 5);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (2, 6);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (3, 5); 

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (3, 7);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (3, 8);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (4, 4);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (4, 8);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (4, 9);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (4, 10);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (5, 1);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (5, 2);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (5, 3);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (5, 4);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (5, 5);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (6, 4);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (7, 5);

INSERT INTO ADDS(SONG_ID, PLAYLIST_ID) 
VALUES (8, 11);