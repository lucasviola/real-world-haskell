-- Type Constructor
data BookInfo = Book Int String [String]
				deriving (Show)

data MagazineInfo = Magazine Int String [String]
					deriving (Show, Eq)

novoLivro = Book 1 "Haskell for dummies" ["Lucas", "Mel"]