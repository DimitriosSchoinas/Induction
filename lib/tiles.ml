let rec tiles n =
  if n = 0 then 1
  else if n = 1 then 1 
  else if n = 2 then 1
  else if n = 3 then 2
  else
    let rec helper i result =
      if n - i >= 4 then
        helper (i + 1) (result + tiles (n - i - 4))
      else
        result
    in
    helper 0 (tiles(n - 1) + 1)
  