DROP DATABASE IF EXISTS yearbook;

CREATE DATABASE yearbook;

USE yearbook;

CREATE TABLE quotes (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  source varchar(55),
  quote text
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < schema.sql
 *  to create the database and the tables.*/


INSERT INTO quotes (quote, source) VALUES ("'It became more than just learning code, when you work through the night with you peer beside you, that's when you realize you really are a family'", "Alex(smoky the bear)");
INSERT INTO quotes (quote, source) VALUES ("'...doing what I love, hacking obstacles by coding a happy future... OneLove!'", "Edgar");
INSERT INTO quotes (quote, source) VALUES ("'The present is theirs, the future for which I really work is mine.'", "Luis Nava(Jesse)");
INSERT INTO quotes (quote, source) VALUES ("'I want to help create a Mexico, I wish it would have received me when I came back.'", "Leni");
INSERT INTO quotes (quote, source) VALUES ("'Love to break my head when hacking!!!!'", "Cesar");
INSERT INTO quotes (quote, source) VALUES ("'I like sports, ... and be able to help people in so many different ways.'", "Richie");
INSERT INTO quotes (quote, source) VALUES ("'I cannot stress this enough, you need to console log all the time ...'", "Garima");
INSERT INTO quotes (quote, source) VALUES ("'This is great opportunity for dreamers who have issue with paper work to continue studying'", "Eduardo Barranon");
INSERT INTO quotes (quote, source) VALUES ("'blururudul'", "the unicorn club");
INSERT INTO quotes (quote, source) VALUES ("'Always keep your head held high'", "Jack");
INSERT INTO quotes (quote, source) VALUES ("'I´m really glad I found HolaCode, I can´t imagine doing anything else'", "Bruno");
INSERT INTO quotes (quote, source) VALUES ("'vicepresident rised from the valley of coding unicorns to bring them to the food amusement of our new city now called home.'", "Len");
INSERT INTO quotes (quote, source) VALUES ("'If you are more fortunate than others, build a longer table not a taller fence'", "Aida");
INSERT INTO quotes (quote, source) VALUES ("'Ceviche!!!!!!!!!!!!!'", "Marco");
INSERT INTO quotes (quote, source) VALUES ("'Putting in more hours, it will never not help you'", "Javier");


CREATE TABLE profiles (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name varchar(32) NOT NULL,
  last_name varchar(32) NOT NULL,
  role varchar(32) NOT NULL,
  cohort int NOT NULL,
  github_link varchar(64),
  linkedin_link varchar(64),
  picture_path varchar(64),
  about_me text
);

/*  Execute this file from the command line by typing:
 *    mysql -u <USER> < schema.sql
 *    OR
 *    mysql -u <USER> -p < schema.sql
 *  For example, on a pairing station, it'll be
 *    mysql -u student -p < schema.sql
 *  and then you'll have to enter the password, student
 *  On your personal computer, if you haven't set up
 *  a password, it'll be
 *    mysql -u root < schema.sql
*/

INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Abimael", "Hernandez", "student", 1, "abimaelhernandez", "A6ppJ5z");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Alejandro", "Rodriguez", "student", 1, "AlejandroRodriguezP", "XcvzwAI");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Armando", "Cano", "student", 1, "armandocano91", "puks3Pr");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Beatriz", "Garcia", "student", 1, "Beagbarreto", "25RYcRD");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Bruno", "Torres", "student", 1, "BrunoTorresF", "02nq7tM");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Cesar", "Tapia", "student", 1, "Cesar88Tapia", "5p4K9F9");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Edgar", "Muñoz", "student", 1, "edgarmunoz1", "mSse5Eh");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Eduardo", "Barranon", "student", 1, "Edward060290", "8BKlJgt");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Eduardo", "Urrutia", "student", 1, "Eduardo091", "jVwRTYJ");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Heber", "Gutierrez", "student", 1, "HeberGutierrez", "jxaNFiX");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Jaqueline", "Lopez", "student", 1, "Jacqueline930", "1UTAvaD");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Javier", "Solis", "student", 1, "ElizaldeJE", "swc5HyP");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Jorge", "Cervantes", "student", 1, "JorgeC0218", "pUJlMvr");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Jorge", "Lerma", "student", 1, "jorgelerma", "");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Joseph", "Fernandez", "student", 1, "JosephFernandez2689", "GjA2Drj");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Juan", "Tejada", "student", 1, "Johntejeda", "arqm7oP");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Luis", "Avila", "student", 1, "Lalolalo85", "mYEVQv1");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Luis Gerardo", "Nava", "student", 1, "luisgnava", "rvaeR5F");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Luis", "Ortiz", "student", 1, "Luisortizlopez", "LK9uEa2");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Marco", "Castillo", "student", 1, "marcocastillo2506", "PSyVaYL");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Miriam", "Alvarez", "student", 1, "miriam30", "YMqvYSw");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Ricardo", "Varona", "student", 1, "Varonss", "yUfGNbd");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Scott", "Yoon", "mentor", 1, "scottyoon221", "ivnYqOj");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Cornellius", "Ngondo", "mentor", 1, "cngondo", "AWpvT8m");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Garima", "Batra", "mentor", 1, "gbatra17", "G15GtFa");
INSERT INTO profiles (first_name, last_name, role, cohort, github_link, picture_path)
VALUES ("Jason", "Stieber", "mentor", 1, "theenderweggin", "rV0kWU9");
