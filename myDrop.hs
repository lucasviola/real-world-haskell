myDrop n xs = if n <= 0 || null xs
			  then xs
			  else myDrop (n - 1) (tail xs)

-- Reescrevendo a função em uma linha
myDrop' n xs = if n <= 0 || null xs then xs else myDrop' (n - 1) (tail xs)