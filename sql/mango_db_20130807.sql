CREATE TABLE note_admin_tbl
(
    name VARCHAR(20) NOT NULL,
    value VARCHAR(128) NOT NULL
);
CREATE TABLE note_category_tbl
(
    id VARCHAR(128) PRIMARY KEY NOT NULL,
    name VARCHAR(128) NOT NULL
);
CREATE TABLE note_post_tag_relation_tbl
(
    post_id VARCHAR(128) NOT NULL,
    tag_id VARCHAR(128) NOT NULL
);
CREATE TABLE note_post_tbl
(
    id VARCHAR(128) PRIMARY KEY NOT NULL,
    category_id VARCHAR(128) NOT NULL,
    write_date DATETIME NOT NULL,
    update_date DATETIME NOT NULL,
    is_hide BIT DEFAULT 0 NOT NULL,
    title TEXT NOT NULL,
    contents_filename VARCHAR(128) NOT NULL,
    recommend_count BIGINT NOT NULL,
    share_count BIGINT NOT NULL
);
CREATE TABLE note_reply_tbl
(
    id VARCHAR(128) PRIMARY KEY NOT NULL,
    post_id VARCHAR(128) NOT NULL,
    write_date DATETIME NOT NULL,
    update_date DATETIME NOT NULL,
    author VARCHAR(64) NOT NULL,
    edit_pw VARCHAR(128) NOT NULL,
    message TEXT NOT NULL
);
CREATE TABLE note_tag_response_date_relation_tbl
(
    tag_id VARCHAR(128) NOT NULL,
    res_title TEXT NOT NULL,
    res_url TEXT NOT NULL,
    res_recommend_count BIGINT NOT NULL,
    res_share_count BIGINT NOT NULL,
    res_update_date DATETIME NOT NULL
);
CREATE TABLE note_tag_tbl
(
    id VARCHAR(128) PRIMARY KEY NOT NULL,
    name VARCHAR(128) NOT NULL
);
CREATE TABLE storm_candidate_peer_get_tbl
(
    indate DATETIME NOT NULL,
    url TEXT NOT NULL
);
CREATE TABLE storm_candidate_peer_response_tbl
(
    indate DATETIME NOT NULL,
    url TEXT NOT NULL
);
CREATE TABLE storm_recv_packet_tbl
(
    indate DATETIME NOT NULL,
    packet_id VARCHAR(128) NOT NULL
);
CREATE TABLE storm_relay_peer_tbl
(
    indate DATETIME NOT NULL,
    url TEXT NOT NULL
);
CREATE TABLE storm_search_peer_tbl
(
    indate DATETIME NOT NULL,
    url TEXT NOT NULL
);
CREATE TABLE storm_settings_tbl
(
    name VARCHAR(20) NOT NULL,
    value VARCHAR(128) NOT NULL
);
CREATE UNIQUE INDEX unique_id ON note_category_tbl ( id );
CREATE UNIQUE INDEX unique_id ON note_post_tbl ( id );
CREATE UNIQUE INDEX unique_id ON note_reply_tbl ( id );
CREATE UNIQUE INDEX unique_id ON note_tag_tbl ( id );
