Select word_id, count(*) as 'Total num of appreance', count(distinct(words_in_recipes.recipe_id)) as 'Num of recipes'
from words_in_recipes
group by word_id
