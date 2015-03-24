-- Type Constructor
data BookInfo = Book Int String [String]
				deriving (Show)

-- Construindo dados
novoLivro = Book 1 "Haskell for dummies" ["Lucas", "Mel"]
bibliaDoCapiroto = Book 2 "Biblia do Capiroto" ["Lukita Satanista"]

-- Pattern Matching
bookID :: BookInfo -> Int
bookID (Book id title authors) = id

bookTitle :: BookInfo -> String
bookTitle (Book id title authors) = title

bookAuthors ::  BookInfo -> [String]
bookAuthors (Book id title authors) = authors

firstAuthor :: BookInfo -> String
firstAuthor (Book id title authors) = head authors

-- Wild Card Pattern
nicerID (Book id _ _) = id
nicerTitle (Book _ title _) = title
nicerAuthors (Book _ _ authors) = authors


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

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
				 | CashOnDelivery
				 | Invoice CustomerID
				   deriving (Show, Eq)
