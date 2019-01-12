-- HackerRank Question.
-- Filter Positions in a List.

{- Idea:

	For a given list with integers, return a new list removing the elements at odd positions.
	The input and output portions will be handled automatically.
	You need to write a function with the recommended method signature.

	Input Format

	N integers contained in the list, each on a separate line.

	Output Format

	Output the list with the integers at odd positions removed i.e. the first element, the third element and so on.
	The relative positions of the remaining even-position elements should be the same as they were in the original array.
	Each integer will be on a separate line.
-}

f :: [Int] -> [Int]
-- Fill up this Function
f lst = map fst $ filter (odd.snd) indexed where indexed = zip lst [0..]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata
