-- Caso a lista seja um singleton, gera um erro e aborta a execução
-- Essa função não é safe

snd' :: [a] -> a
snd' xs = if null (tail xs)
		 then error "a lista é muito pequena"
		 else head (tail xs)

-- Usando Maybe Monad
-- Essa é safe
sndSafe :: [a] -> Maybe a
sndSafe [] = Nothing
sndSafe xs = if null (tail xs)
				then Nothing
				else Just (head (tail xs))