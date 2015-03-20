-- Programa que conta linhas de um arquivo
-- Primeiro exercicio do livro

main = interact wordCount
	where wordCount input = show (length (lines input)) ++ "\n"
