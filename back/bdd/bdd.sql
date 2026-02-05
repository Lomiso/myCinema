CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    duration INT NOT NULL,
    release_year INT NOT NULL,
    genre VARCHAR(100),
    director VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME
);


CREATE TABLE rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    type VARCHAR(50),
    active BOOLEAN NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);


CREATE TABLE screenings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    created_at DATETIME,

    CONSTRAINT fk_screenings_movie
        FOREIGN KEY (movie_id)
        REFERENCES movies(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_screenings_room
        FOREIGN KEY (room_id)
        REFERENCES rooms(id)
        ON DELETE CASCADE
);
