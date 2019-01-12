-- HackerRank Question: Functional Programming.
-- Array of N Elements.

fn n = [0..n-1]

main = do
n <- readLn :: IO Int
print (fn(n))
