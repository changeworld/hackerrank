def f(x: Float, n: Int = 0, nowX: Float = 1, nowR: Float = 1): Float =
  if(n == 10) 0
  else (nowX / nowR) + f(x, n + 1, nowX * x, nowR * (n + 1))
