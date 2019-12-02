INSERT INTO [dbo].[CharacterGenerationMethod] ([Id], [Name], [Description])
VALUES (1, 'Standard Array', 'Use the standard array of 15, 14, 13, 12, 10, 8. Now take these six numbers and assign one to each of your character''s six abilities to determine the base scores for Strength, Dexterity, Constitution, Intelligence, Wisdom, and Charisma.'),
	   (2, 'Rolling', 'Roll four 6-sided dice and record the total of the highest three dice. Do this six times in total. Now take your six numbers and assign one to each of your character''s six abilities to determine the base scores for Strength, Dexterity, Constitution, Intelligence, Wisdom, and Charisma.'),
	   (3, 'Point Buy', 'You have 27 points to spend on your six ability scores. The cost of each score is shown below. For example, a score of 14 costs 7 points. Using this method, 15 is the highest ability score you can end up with, before applying racial increases. You can''t have a score lower than 8.
	   
	   0 Points => Score 8
	   1 Points => Score 9
	   2 Points => Score 10
	   3 Points => Score 11
	   4 Points => Score 12
	   5 Points => Score 13
	   7 Points => Score 14
	   9 Points => Score 15')