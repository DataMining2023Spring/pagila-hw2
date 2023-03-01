/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */

SELECT first_name||$$ $$||last_name AS "Actor Name" FROM actor
    JOIN film_actor USING(actor_id)
    JOIN (SELECT film.film_id, unnest(special_features) AS special_feature FROM film) T USING (film_id) WHERE special_feature = 'Behind the Scenes' GROUP BY "Actor Name" ORDER BY "Actor Name"
    ;
