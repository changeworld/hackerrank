object Solution {
  def main(args: Array[String]) {
    val nrows = readLine.toInt
    val lazyTriangle = pascalStream(List(1))
    printTriangle(lazyTriangle, nrows)
  }
  def shiftRight(row: List[Int]): List[Int] = 0::row
  def shiftLeft(row: List[Int]): List[Int] = row:::List(0)  
  def addList(l1: List[Int], l2: List[Int]): List[Int] = {
    (l1 zip l2) map { case (x, y) => x + y }
  }
  def pascalStream(row: List[Int]): Stream[List[Int]] =
    Stream.cons(row, pascalStream(addList(shiftLeft(row), shiftRight(row))))
  def printTriangle(triangle: Stream[List[Int]], nrows: Int) {
    val rows = triangle.take(nrows).map(_.mkString(" "))
    rows foreach { println _ }
  }
}
