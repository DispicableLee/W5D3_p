PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id integer NOT NULL
    fname character
    lname character
)

CREATE TABLE questions(
    id integer NOT NULL
    title character
    body character
    author character NOT NULL
    FOREIGN KEY(author) REFERENCES users(fname)
)


CREATE TABLE question_follows(
    id integer NOT NULL
    follower_id integer NOT NULL
    questions_id integer NOT NULL 
    FOREIGN KEY(follower_id) REFERENCES users(id)
    FOREIGN KEY(questions_id) REFERENCES questions(id)
)

CREATE TABLE replies(
    id integer NOT NULL
    body character
    author_id character NOT NULL
    parent_question_id integer NOT NULL 
    parent_reply character
    FOREIGN KEY(parent_question_id) REFERENCES questions(id)
    FOREIGN KEY(author_id) REFERENCES users(id)
    FOREIGN KEY(parent_reply) REFERENCES replies(id)
)

CREATE TABLE question_likes(
    id integer NOT NULL
    user_id integer NOT NULL
    question_id integer NOT NULL
    FOREIGN KEY(question_id) REFERENCES questions(id)
    FOREIGN KEY (user_id) REFERENCES users(id)

)