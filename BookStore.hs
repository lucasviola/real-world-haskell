-- Type Constructor
data BookInfo = Book Int String [String]
				deriving (Show)

data MagazineInfo = Magazine Int String [String]
					deriving (Show, Eq)

-- Aqui o Type Constructor e o Value Constructor tem o mesmo nome.
-- Isso não tem problema porque eles são independentes, o TC é o tipo,
-- vai ser usado na assinatura da função, e o VC é a função e vai ser usado
-- no código.
data BookReview = BookReview BookInfo CustomerID String
				  deriving (Show)

-- Type Synonyms: Usados para descrever melhor um determinado Tipo.
-- Deixa o código mais legível
type CustomerID = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)

data BetterReview = BetterReview BookInfo CustomerID ReviewBody
					deriving (Show)

-- Construindo dados
novoLivro = Book 1 "Haskell for dummies" ["Lucas", "Mel"]