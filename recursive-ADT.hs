data List a = Cons a (List a) | Nil deriving (Show,Eq)

fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil

data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show,Eq)