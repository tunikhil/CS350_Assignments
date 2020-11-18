--------Q1----------------
quicksort [] = []
quicksort (x:xs) = quicksort [y | y<-xs, y<=x] ++[x]++ quicksort [y | y<-xs, y>x]

--------Q2----------------
present n [] = False
present n (x:xs)    |x==n = True
                    |otherwise = present n xs

uniq :: (Eq a)=>[a]->[a]
uniq []=[]
uniq (x:xs)     | (present x xs) = uniq(xs)
                | otherwise = [x]++uniq(xs)

-------Q3-----------------
neighbors :: (Ord a1, Ord a2, Num a1, Num a2) => a1 -> a2 -> [(a1, a2)]

neighbors x y   |and [x>=0,x<10,y>=0,y<10] =[(x-1,y-1) | x>0,y>0]++[(x-1,y) | x>0]++[(x-1,y+1)| x>0,y<9]++
                                            [(x,y-1) | y>0] ++ [(x,y+1)| y<9] ++
                                            [(x+1,y-1) | x<9,y>0]++[(x+1,y) | x<9]++[(x+1,y+1)| x<9,y<9]
                |otherwise = error "Invalid Indices"

-------Q4-----------------
word :: String -> Int
word [] = 0
word (xs) = length (words xs)

-------Q5-----------------
composition :: [a->a]->a->a
composition [] n = n
composition (x:xs) n = x (composition xs n)