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
    FOREIGN KEY(author) REFERENCES author(name)
)


CREATE TABLE question_follows(
    id integer NOT NULL
    

)