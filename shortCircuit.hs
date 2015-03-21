-- causando um curto circuito no if statement para mostrar como funciona
	-- lazy (strict) evaluation

shortCircuitOR :: Bool -> Bool -> Bool
shortCircuitOR a b = if a then a else b


-- Exe: shortCircuitOR True False
-- True

-- Explicação:
-- Como True || False == True, a segunda parte da expressão (o then)
-- não vai precisar ser calculada. Porque Haskell é lazy por natureza.