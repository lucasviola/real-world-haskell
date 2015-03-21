-- causando um curto circuito no if statement para mostrar como funciona
	-- lazy (strict) evaluation

shortCircuitOR :: Bool -> Bool -> Bool
shortCircuitOR a b = if a then a else b


-- Ex: shortCircuitOR True False
-- True
-- Ex²: shortCircuitOR True (length [1..] > 0) 
-- True

-- Explicação:
-- Como True || False == True, a segunda parte da expressão (o then)
-- não vai precisar ser calculada. Porque Haskell é lazy por natureza.