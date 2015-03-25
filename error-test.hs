-- Caso a lista seja um singleton, gera um erro com a mensagem definida

snd' :: [a] -> a
snd' xs = if null (tail xs)
		 then error "a lista é muito pequena"
		 else head (tail xs)