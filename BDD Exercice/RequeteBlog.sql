SELECT *
FROM article LEFT JOIN comment ON comment.article_id = article.article_id
WHERE use_id = ?
ORDER BY article.date_publi ASC, comment.date_publi DESC;

SELECT *
FROM Acategory FULL OUTER JOIN category ON category_id = category_id
    FULL OUTER JOIN article ON article_id = article_id
ORDER BY article.date_publi;

SELECT *
FROM article LEFT JOIN Comment ON article_id = article_id
ORDER BY date_publi DESC;

INSERT INTO article (title, text_article, resume_article, date_publi) VALUES ?
;

INSERT INTO user (pseudo, email, MD5(
pass),
role_blog
) VALUES ?;

UPDATE article SET ? WHERE id = ?;

DELETE article WHERE id = ?;

SELECT COUNT(*)
FROM article;

SELECT COUNT(*)
FROM category;

SELECT COUNT(*)
FROM category
where name_catego = ?;

SELECT COUNT(*)
FROM article;