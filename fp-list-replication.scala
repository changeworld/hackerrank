def f(num:Int,arr:List[Int]):List[Int] = if(num == 0 || arr.isEmpty) List() else f(num-1, List(arr.head))++List(arr.head)++f(num,arr.tail)
