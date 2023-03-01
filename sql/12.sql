/* List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT T1.title FROM (SELECT T.title from (SELECT film.title, unnest(special_features) AS special_feature FROM film) T  WHERE special_feature = 'Behind the Scenes'
    GROUP BY T.title) T1 JOIN (SELECT T2.title FROM (SELECT film.title, unnest(special_features) AS special_feature FROM film) T2  WHERE special_feature = 'Trailers'
    GROUP BY T2.title) T3  USING (title)
    GROUP BY T1.title
    ORDER BY T1.title ;
