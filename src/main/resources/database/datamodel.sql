CREATE DATABASE case_study;
USE case_study;

CREATE TABLE users(
                      user_id INT PRIMARY KEY AUTO_INCREMENT,
                      display_name VARCHAR(45),
                      email VARCHAR(45),
                      dob DATE,
                      username VARCHAR(45) UNIQUE NOT NULL,
                      login_password VARCHAR(45) NOT NULL,
                      role_name VARCHAR(120) NOT NULL,
                      delete_user INT DEFAULT 0,
                      CHECK (role_name IN ('ADMIN', 'SIMPLE_USER'))
);

CREATE TABLE difficulty (
                            diff_id INT PRIMARY KEY AUTO_INCREMENT,
                            diff_name VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE questions (
                           question_id INT PRIMARY KEY AUTO_INCREMENT,
                           diff_id INT NOT NULL,
                           question_content VARCHAR(255) NOT NULL,
                           answer_a VARCHAR(100) NOT NULL,
                           answer_b VARCHAR(100) NOT NULL,
                           answer_c VARCHAR(100) NOT NULL,
                           answer_d VARCHAR(100) NOT NULL,
                           correct_answer VARCHAR(100) NOT NULL,
                           FOREIGN KEY(diff_id) REFERENCES difficulty(diff_id)
);

CREATE TABLE test_history(
                             history_id INT PRIMARY KEY AUTO_INCREMENT,
                             user_id INT NOT NULL,
                             test_date VARCHAR(50) ,
                             FOREIGN KEY(user_id) REFERENCES users(user_id)
);
CREATE TABLE results (
                         question_id INT NOT NULL,
                         history_id INT NOT NULL,
                         chosen_answer VARCHAR(100) NOT NULL,
                         score INT NOT NULL,
                         FOREIGN KEY(question_id) REFERENCES questions(question_id),
                         FOREIGN KEY(history_id) REFERENCES test_history(history_id)
);

INSERT INTO difficulty (diff_name)
VALUES ('DỄ'),('TRUNG BÌNH'),('KHÓ');

INSERT INTO questions ( diff_id ,question_content ,answer_a ,answer_b ,answer_c,answer_d ,correct_answer)
VALUES (1,'Who are all ________ people?','this','those','them','that','those'),
       (1,'Claude is ________.','Frenchman','a French','a Frenchman',' French man','a French'),
       (1,'I ____ a car next year.','buy','am buying','going to buy','bought','am buying'),
       (1,'They are all ________ ready for the party.','getting','going','doing','putting','getting'),
       (1,'When do you go ________ bed?','to','to the','in','in the','to'),
       (1, 'London is famous for _____ red buses.',"it's",'its','it','it is','its'),
       (1, 'Is there _____ milk in the fridge?',"lot",'many','much','some','some'),
       (1, 'There is a flower shop in front _____ my house.','of','to','off','in','of'),
       (1, 'Where are _____ children? – They go to school.','the','you','a','an','the'),
       (1, 'Those students are working very _____ for their next exams.','hardly','hard','harder','hardest','hard'),
       (1, 'Jane _____ as a fashion designer for ten years before becoming a famous singer.','worked','is working','works','will work','worked'),
       (1, 'Dan can _____ the drum very well.','play','do','make','think','play'),
       (1, 'My friend is ______ so she has a lot of free time.','singer','married','single','free','single'),
       (1, 'Did you ask your father ________ some money?','0','after','on','for','for'),
       (1, 'I know somebody ________ can play the guitar.','he','who','what','that he','who'),
       (1, 'You look ________ in red!','most nicely','too nice','nicely','very nice','very nice'),
       (1, 'We know their address, but they don’t know ________.','ours',"their's","our's",'our','ours'),
       (1, 'Can you use ________ computer?','a',"one","two",'an','a'),
       (1, 'The doctor showed the new nurse ________ to do','what',"that","how",'as','what'),
       (1, 'Frede came to the meeting but Charles ________.',"isn't","hasn't","didn't","wasn't","didn't"),
       (2, 'The __________ of the crime scene was crucial in solving the case.','investigation','suspect','evidence','witness','evidence'),
       (2, 'She has a __________ personality and is always cheerful.','pessimistic','optimistic','realistic','enthusiastic','optimistic'),
       (2, 'The teacher asked the students to __________ their homework by tomorrow.','submit','complete','revise','postpone','submit'),
       (2, 'I need to buy some __________ for dinner tonight.','groceries','appliances','furniture','ingredients','ingredients'),
       (2, 'He is known for his __________ in solving complex mathematical problems.','expertise','ignorance','incompetence','mediocrity','expertise'),
       (2, "The company's profits have been steadily __________ over the past few years.",'increasing','decreasing','stagnating','fluctuating','increasing'),
       (2, 'She was awarded the Nobel Prize for her outstanding __________ to science.','contribution','sacrifice','suspicion','suggestion','contribution'),
       (2, 'The doctor advised him to take some time off work to __________ from stress.','cure','prepare','recover','treat','recover'),
       (2, "I'm sorry, but I can't __________ your request at the moment.",'fulfill','ignore','reject','accomplish','fulfill'),
       (2, 'The new restaurant in town has received __________ reviews from food critics.','glowing','negative','neutral','mixed','negative'),
       (2, 'She is fluent in several languages and has a good __________ of different cultures.','cognition','comprehension','vocabulary','sense','comprehension'),
       (2, "The company's decision to close the factory resulted in the __________ of many workers.",'dissolution','dismissal','promotion','suspension','dismissal'),
       (2, "He was __________ for his rude behavior towards his colleagues.",'punished','favored','criticized','pardoned','criticized'),
       (2, "The government has implemented new policies to promote __________ development in rural areas.",'economic','social','cultural','environmental','economic'),
       (2, "She is an excellent pianist and her performances are always very __________ .",'moving','boring','tiring','fascinating','fascinating'),
       (2, "The police officer asked him to provide some form of __________ to prove his identity.",'evidence','testimony','test','doubt','evidence'),
       (2, "He made an important __________ during the meeting that changed everyone's perspective on the issue.",'suggestion','argument','demonstration','announcement','suggestion'),
       (2, "The company offers various training programs to enhance its employees' professional _________ .",'skills','qualifications','experience','knowledge','skills'),
       (2, "She has a __________ for playing the guitar and has been performing in bands since she was a teenager.",'passion','dislike','fear','indifference','passion'),
       (2, "The government needs to take __________ measures to protect the environment.",'immediate','delayed','gradual','slow','immediate'),
       (2, "He is known for his __________ sense of humor and always makes people laugh.",'witty','dull','serious','blunt','witty'),
       (2, "The company's new advertising campaign has been very __________ in attracting customers.",'successful','unsuccessful','meaningful','insignificant','successful'),
       (2, "She is an excellent leader and has great _________ skills.",'problem-solving','communication','organizational','negotiation','organizational'),
       (2, "The team's performance was __________ during the championship game.",'outstanding','poor','average','satisfactory','outstanding'),
       (2, "He is always willing to help others and has a very _________ nature.",'kind-hearted','selfish','cruel','arrogant','kind-hearted'),
       (2, "The company's decision to expand into international markets was driven by its desire for _________ growth.",'sustainable','rapid','steady','declining','rapid'),
       (2, "She is an excellent writer with great _________ skills, which make her stories captivating.",'descriptive','logical','creative','analytical','creative'),
       (2, "The government should provide more support for small businesses to encourage _________ development in local communities.",'economic','social','political','environmental','economic'),
       (2, "The company's new product has received _________ feedback from customers.",'positive','comparative','neutral','mixed','positive'),
       (2, "He is known for his expertise in the field of medicine and has made significant __________ to medical research.",'contributions','inexperience','confusion','indifference','contributions'),
       (3, "If she_____ rich, she would travel around the world",'would be','is','has been','were','were'),
       (3, "If you had taken my advice, you____in such difficulties","won't be","hadn't been","wouldn't be","wouldn't have been","wouldn't have been"),
       (3, "My cat would not have bitten the toy fish____it was made of rubber","id she has known","if she should know","had she known","if she knew","if she knew"),
       (3, "Mary was the last applicant____","to be interviewed","to be interviewing","to interview","to have interviewed","to be interviewed"),
       (3, "The eqiupment in our office needs____",'moderner','modernizing','modernized','Mordenization','Mordenization'),
       (3, "What beautiful eyes____!",'does she have','she has','has she',"she doesn't have",'she has'),
       (3, "____the storm, the ship couldn't reach its destination on time",'In case of','In spite of','Because of',"But for",'Because of'),
       (3, "He completely____with what I said",'accepted','complained','agreed',"argued",'agreed'),
       (3, "I finished my homework a few days ahead____the deadline",'by','of','at',"to",'of'),
       (3, "It was really kind____you to help those poor people",'by','of','at',"to",'of'),
       (3, "They will stay there for some days if the weather____fine",'would be','was','is',"will",'is'),
       (3, "If she____sick, shw would have gone out with me to the party","hadn't been","weren't","hasn't been","wasn't","hadn't been"),
       (3, "Jane____law for four years now at Harvard","is studying","has been studying","studies","studied","has been studying"),
       (3, "Nowadays children would prefer history____in more practical ways","be taught","to teach","to be taught","teach","to be taught"),
       (3, "The room needs____for the wedding","decorating","to decorate","decorate","be decorated","decorating"),
       (3, "He hurried____he wouldn't be late for class","since","as if","unless","so that","so that"),
       (3, "Do you know____","what wrong was it with","what's wrong with it","what wrong was with it","what wrong was with it","what's wrong with it"),
       (3, "She nearly lost her own life____attempting to save the child from drowning","at","for","in","with","for"),
       (3, "Anne persisted____her search for the truth about what had happenend","on","about","at","in","in"),
       (3, "My computer is not____of running this software.","able","compatible","capable","suitable","capable"),
       (3, "Our industrial output____from $2 million id 2002 to $4 million this year","rises","has risen","was rising","rose","has risen"),
       (3, "If everyone____, how would we control the traffic?","could fly","can fly","flies","had flown","could fly"),
       (3, "It is blowing so hard. We____such terrible storm","have never known","have never been knowing","never known","had never known","had never known"),
       (3, "I am considering____my job. Can you recommen a good company?","to move","moving","to change","changing","chainging"),
       (3, "I'd rather you____home now","going","go","gone","went","go"),
       (3, "____, the results coouldn't be better","No matter what he tried hard","No matter how hard he tried","Although very hard he tried","Despite how hard he tried","No matter how hard he tried"),
       (3, "I hadn't realized she was English____she spoke","only after","in case","until","when","until"),
       (3, "This library card will give you free access____the Internet eight hours a day","on","to","from","in","to"),
       (3, "She had to hand in her notice____advance when she decided to leave the job","with","from","in","to","in"),
       (3, "Young people have become increasingly commited____social activities","of","to","in","at","to");
INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "The sun rises in the _________.", "east", "west", "north", "south", "east");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "She was feeling very tired, ________ she went to bed early.", "so", "but", "and", "because", "so");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The __________ of this novel is its intricate plot.", "author", "cover", "theme", "protagonist", "theme");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "I enjoy ________ books in my free time.", "read", "reading", "reads", "to read", "reading");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "The Eiffel Tower is located in _________.", "Paris", "Rome", "London", "Berlin", "Paris");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The scientist made a groundbreaking discovery, ________ will change the course of medicine.", "it", "which", "who", "that", "which");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "She didn't have much time, ________ she worked quickly.", "but", "so", "because", "yet", "but");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The ___________ of the company was evident in its strong financial performance.", "CEO", "leadership", "vision", "employees", "leadership");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "I need to buy some ___________ for my school project.", "books", "paper", "computers", "teachers", "paper");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "I have two _____ brothers.", "older", "eldest", "more older", "most old", "older");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "He is the _____ I know.", "funnier", "funniest", "funny", "fun", "funniest");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The artist painted the mural with great ________.", "care", "art", "paint", "canvas", "care");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "Can you please pass me the _____?", "salt", "salts", "salty", "salted", "salt");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "The car is parked ________ the garage.", "in", "on", "at", "with", "in");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The company's success is attributed to its innovative ________.", "product", "products", "product's", "products'", "products");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "I want to go to the park _____ play soccer.", "or", "and", "but", "so", "and");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "I don't have _____ money to buy a new phone.", "any", "some", "many", "much", "any");


INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The jury delivered a ________ verdict.", "guilt", "guilty", "guiltier", "guiltiest", "guilty");


INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "My cat loves to chase ________.", "mouses", "mices", "mice", "mouses'", "mice");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "We went to the store _____ buy groceries.", "for", "at", "on", "with", "for");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The athlete set a new ________ record in the long jump.", "world", "worlds", "worldly", "world's", "world");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "My grandmother bakes delicious ________.", "cookie", "cookies", "cookie's", "cookies'", "cookies");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "The movie was so _____ that I fell asleep.", "boring", "bored", "bore", "bores", "boring");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The novel's plot was filled with unexpected ________.", "twist", "twists", "twisted", "twisting", "twists");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "My sister has a _____ dog named Max.", "black", "blacks", "black's", "blacks'", "black");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "He always eats his lunch _____.", "alone", "lonely", "lonesome", "lonely's", "alone");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The CEO's decision had a profound ________ on the company.", "affect", "effect", "affected", "effecting", "effect");


INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The artist used vibrant ________ in the painting.", "colors", "hues", "shades", "tints", "colors");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "I need to buy some ________ for my garden.", "flowers", "trees", "vegetables", "rocks", "flowers");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "My mom is a great ________.", "chef", "painter", "musician", "athlete", "chef");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "The concert was so ________ that it sold out in minutes.", "popular", "crowded", "entertaining", "loud", "popular");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The ________ of the orchestra conducted the performance.", "director", "conductor", "composer", "soloist", "conductor");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "My dog likes to play fetch with a ________.", "ball", "stick", "rope", "frisbee", "ball");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "She was so ________ that she couldn't stop laughing.", "amused", "amusing", "amuses", "amusement", "amused");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (3, "The ________ of the novel left readers in suspense.", "climax", "plot", "theme", "character", "climax");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (1, "I need to buy a dozen ________ for the party.", "cupcakes", "cookies", "cakes", "muffins", "cupcakes");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES (2, "The sun ________ in the east.", "rises", "sets", "shines", "hides", "rises");


INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES
    (1, "My dog likes to play fetch with a ________.", "ball", "stick", "rope", "frisbee", "ball"),
    (1, "I saw a beautiful ________ in the garden.", "flower", "tree", "rock", "car", "flower"),
    (1, "The ________ in the sky is shining brightly.", "sun", "moon", "star", "cloud", "sun"),
    (1, "Can you pass me the salt and ________?", "pepper", "sugar", "coffee", "tea", "pepper"),
    (1, "The baby is sleeping in the ________.", "crib", "bathtub", "refrigerator", "oven", "crib"),
    (1, "I like to eat pizza with ________.", "cheese", "ice cream", "ketchup", "strawberries", "cheese"),
    (1, "My favorite color is ________.", "blue", "chair", "book", "table", "blue");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES
    (2, "He ________ his keys on the kitchen counter.", "left", "leaves", "leaving", "lefted", "left"),
    (2, "She plays the piano ________ than her brother.", "beautifully", "more beautifully", "beautiful", "beautify", "more beautifully"),
    (2, "He is very ________ about his work.", "passionate", "boring", "sleepy", "confused", "passionate"),
    (2, "The ________ of the movie made me cry.", "ending", "beginning", "middle", "credits", "ending"),
    (2, "She always tells funny ________.", "jokes", "songs", "stories", "dances", "jokes"),
    (2, "He likes to travel to ________ countries.", "exotic", "simple", "boring", "quiet", "exotic"),
    (2, "I can't find my keys anywhere. They must be ________.", "lost", "found", "hidden", "discovered", "lost"),
    (2, "The movie was so ________ that I watched it twice.", "exciting", "boring", "long", "short", "exciting"),
    (2, "She ________ her dog every morning.", "walks", "walked", "walking", "walker", "walks");

INSERT INTO questions (diff_id, question_content, answer_a, answer_b, answer_c, answer_d, correct_answer)
VALUES
    (3, "The ________ of the company is to provide excellent customer service.", "objective", "purpose", "mission", "vision", "objective"),
    (3, "The ________ in the sky was mesmerizing.", "constellation", "moon", "comet", "asteroid", "constellation"),
    (3, "The ________ sculpture in the museum was a masterpiece.", "contemporary", "ancient", "modern", "historic", "contemporary"),
    (3, "The ________ of the play was thought-provoking.", "dialogue", "monologue", "script", "screenplay", "dialogue"),
    (3, "The ________ of the company are known for their innovation.", "founders", "employees", "customers", "competitors", "founders"),
    (3, "The detective solved the ________ case.", "mysterious", "simple", "complicated", "easy", "mysterious"),
    (3, "The chef prepared a ________ dish for the special occasion.", "gourmet", "fast-food", "homemade", "spicy", "gourmet"),
    (3, "The ________ of the museum guided us through the art collection.", "curator", "visitor", "artist", "critic", "curator");


DELIMITER $$
CREATE PROCEDURE create_practice_list_by_id(diff_id int)
BEGIN
SELECT *
FROM questions AS qs
         JOIN difficulty AS dt ON dt.diff_id = qs.diff_id
         LEFT JOIN results AS rs ON qs.question_id = rs.question_id
WHERE dt.diff_id = diff_id
  AND rs.question_id IS NULL
ORDER BY RAND() LIMIT 10;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE find_question_by_id(question_id INT)
BEGIN
SELECT qs.*
FROM questions AS qs
JOIN difficulty AS dt ON qs.diff_id = dt.diff_id
WHERE qs.question_id = question_id;
END $$
DELIMITER ;