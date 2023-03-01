/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT T.title
    FROM (SELECT film.title, rating, unnest(special_features) AS features from film) AS T
    WHERE features  = 'Trailers' AND rating ='G'
    ORDER BY T.title;
