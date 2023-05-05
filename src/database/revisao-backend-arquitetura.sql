-- Active: 1683249425748@@127.0.0.1@3306

CREATE TABLE
    users (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL,
        role TEXT NOT NULL,
        created_at TEXT DEFAULT (DATETIME('now', '-3 hours')) NOT NULL
    );

INSERT INTO
    users (id, name, email, password, role)
VALUES
    -- tipo NORMAL e senha = fulano123 (
        'u001',
        'Fulano',
        'fulano@email.com',
        '$2a$12$qPQj5Lm1dQK2auALLTC0dOWedtr/Th.aSFf3.pdK5jCmYelFrYadC',
        'NORMAL'
    ),
    -- tipo NORMAL e senha = beltrana00 (
        'u002',
        'Beltrana',
        'beltrana@email.com',
        '$2a$12$403HVkfVSUbDioyciv9IC.oBlgMqudbnQL8ubebJIXScNs8E3jYe2',
        'NORMAL'
    ),
    -- tipo ADMIN e senha = astrodev99 (
        'u003',
        'Astrodev',
        'astrodev@email.com',
        '$2a$12$lHyD.hKs3JDGu2nIbBrxYujrnfIX5RW5oq/B41HCKf7TSaq9RgqJ.',
        'ADMIN'
    );

SELECT * FROM users;

CREATE TABLE
    playlists (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        creator_id TEXT NOT NULL,
        name TEXT NOT NULL,
        likes INTEGER DEFAULT (0) NOT NULL,
        dislikes INTEGER DEFAULT (0) NOT NULL,
        created_at TEXT DEFAULT (DATETIME('now', '-3 hours')) NOT NULL,
        updated_at TEXT DEFAULT (DATETIME('now', '-3 hours')) NOT NULL,
        FOREIGN KEY (creator_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE
    );

INSERT INTO
    playlists (id, creator_id, name)
VALUES 
  ("p001", "u001", "Rock"),
  ("p002", "u003", "Metal"),
  ("p003", "u003", "J-rock");

SELECT * FROM playlists;

DROP TABLE playlists;

CREATE TABLE
    likes_dislikes (
        user_id TEXT NOT NULL,
        playlist_id TEXT NOT NULL,
        like INTEGER NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (playlist_id) REFERENCES playlists (id) ON UPDATE CASCADE ON DELETE CASCADE
    );

INSERT INTO
    likes_dislikes (user_id, playlist_id, like)
VALUES 
  ("u002", "p001", 1), 
  ("u003", "p001", 1), 
  ("u001", "p002", 1), 
  ("u002", "p002", 1),
  ("u001", "p003", 1),
  ("u002", "p003", 0);

SELECT * FROM likes_dislikes;

DROP TABLE likes_dislikes;

UPDATE playlists SET likes = 2 WHERE id = "p001";

UPDATE playlists SET likes = 2 WHERE id = "p002";

UPDATE playlists SET likes = 1 WHERE id = "p003";

UPDATE playlists SET dislikes = 1 WHERE id = "p003";
