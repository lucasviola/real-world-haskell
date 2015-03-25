-- let in bindings delimita o escopo de variáveis locais
-- cada linha depois do let e antes do in é uma nova variável
lend amount balance = let reserve    = 100
                          newBalance = balance - amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance

-- Usando where clause
lend' amount balance = if amount < reserve * 0.5
                       then Just newBalance
                       else Nothing
    where reserve    = 100
          newBalance = balance - amount
