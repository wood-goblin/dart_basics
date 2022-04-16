import 'dart:math';

class Point {
  final double x, y, z;

  // Point(this.x, this.y, this.z);
  Point(double x, double y, double z)
      : x = x,
        y = y,
        z = z;

  // расстояние от текущей точки до указанной в параметре
  double distanceTo(Point point) {
    var dx = x - point.x;
    var dy = y - point.y;
    var dz = z - point.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  // начало координат (factory-конструктор)
  factory Point.zero() {
    return Point(0, 0, 0);
  }
  // Единичный вектор
  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  // редирект на главный конструктор через двоеточие (:)
  Point.zero2() : this(0, 0, 0);
}

void main() {
  print("ЗАДАЧА 6. Класс Point, который описывает точку в трёхмерном пространстве.");
  Point p1 = Point(1, 1, 1);
  Point p2 = Point(3, 4, 5);
  print("Distance from p1 to p2: ${p1.distanceTo(p2)}");
  print("Distance from p1 to zero-point: ${p1.distanceTo(Point.zero())}");
  print("Distance from p1 to zero2-point:${p1.distanceTo(Point.zero2())}");
}