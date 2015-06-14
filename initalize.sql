CREATE TABLE tests (
    id integer primary key,
    status integer,
    description text,
    created text,
    updated text,
    putdir text,
    target text,
    result text
);

/*  テストデータ

drop table tests ;

CREATE TABLE tests (
    id integer primary key,
    status integer,
    description text,
    created text,
    updated text,
    putdir text,
    target text,
    result text
);


INSERT INTO tests(status, description, created, updated, putdir, target, result)
VALUES (1,'IE8で◯◯が動くか確認',  '2015/6/15 10:00:00', '2015/6/15 10:00:00', '', '', '');

INSERT INTO tests(status, description, created, updated, putdir, target, result)
VALUES (1,'Chromeにて基本テスト',  '2015/6/15 10:00:00', '2015/6/15 10:00:00', '', '', '');

INSERT INTO tests(status, description, created, updated, putdir, target, result)
VALUES (2,'テスト',              '2015/6/15 10:00:00', '2015/6/15 10:00:00', '', '', '');

INSERT INTO tests(status, description, created, updated, putdir, target, result)
VALUES (1,'テスト',              '2015/6/15 10:00:00', '2015/6/15 10:00:00', '', '', '');

INSERT INTO tests(status, description, created, updated, putdir, target, result)
VALUES (0,'滞在時間に関する新しいテストを追加', '2015/6/15 10:00:00', '2015/6/15 10:00:00', '', '', '');

*/
