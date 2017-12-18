// Copyright (C) 2016 changeworld.
// See the LICENCE.txt file distributed with this work for additional
// information regarding copyright ownership.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
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
