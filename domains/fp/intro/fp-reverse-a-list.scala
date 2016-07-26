def f(arr:List[Int]):List[Int] = arr match {
  case x :: xs => f(xs) :+ x
  case Nil => Nil
}
