-- Programa que conta linhas de um arquivo

main = interact wordCount
	where wordCount input = show (length (lines input)) ++ "\n"