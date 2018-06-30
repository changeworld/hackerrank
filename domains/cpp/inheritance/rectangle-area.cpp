#include <iostream>

using namespace std;

class Rectangle {
    protected:
        int width, height;
    public:
        void read_input() {
            scanf("%d%d", &width, &height);
        }
        void display() {
            printf("%d %d\n", width, height);
        }
};

class RectangleArea:public Rectangle {
    public:
        void display() {
            printf("%d\n", width * height);
        }
};

int main() {
    /* Declare a RectangleArea object */
    RectangleArea r_area;
    /* Read the width and height */
    r_area.read_input();
    /* Print the width and height */
    r_area.Rectangle::display();
    /* Print the area */
    r_area.display();
    return 0;
}
