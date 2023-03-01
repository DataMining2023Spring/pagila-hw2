/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT T.special_features, COUNT(T.special_features)
    FROM (SELECT unnest(special_features) AS special_features from film) as T
    GROUP BY T.special_features
    ORDER BY T.special_features;
