def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT bookS.title, bookS.year FROM BOOKS JOIN SERIES ON BOOKS.SERIES_ID=SERIES.ID 
  WHERE SERIES.ID=1 ORDER BY YEAR;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM CHARACTERS ORDER BY LENGTH(MOTTO) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(*) FROM CHARACTERS GROUP BY SPECIES ORDER BY COUNT(SPECIES) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT AUTHORS.NAME, SUBGENRES.NAME FROM AUTHORS JOIN SERIES ON AUTHORS.ID=SERIES.AUTHOR_ID JOIN 
  SUBGENRES ON SERIES.subgenre_id=SUBGENRES.ID;"
end

def select_series_title_with_most_human_characters
  "SELECT SERIES.TITLE FROM SERIES JOIN AUTHORS ON SERIES.AUTHOR_ID=AUTHORS.ID JOIN CHARACTERS 
  ON AUTHORS.ID=CHARACTERS.AUTHOR_ID WHERE CHARACTERS.SPECIES ='human' GROUP BY TITLE ORDER BY COUNT (*) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SElECT CHARACTERS.NAME, COUNT (*) FROM CHARACTERS JOIN CHARACTER_books ON 
  CHARACTERS.ID= CHARACTER_BOOKS.CHARACTER_ID GROUP BY CHARACTERS.NAME ORDER BY COUNT(*) DESC, characters.name;"
end
