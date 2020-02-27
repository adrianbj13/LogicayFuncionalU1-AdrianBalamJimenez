qsort [] = []
qsort (x:xs) = qsort menores ++ [x] ++ qsort mayores
  where menores = filter (<x) xs
        mayores = filter (>=x) xs