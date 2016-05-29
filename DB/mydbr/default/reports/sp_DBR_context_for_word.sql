delimiter $$
drop procedure if exists `sp_DBR_context_for_word`
$$
CREATE PROCEDURE `sp_DBR_context_for_word`(in_word_id int)
BEGIN

  #select 'dbr.title', in_word_id;

  select 'dbr.context_displayer', in_word_id;
  call concordancedb.sp_get_context_words_for_word_id(in_word_id);

END
$$