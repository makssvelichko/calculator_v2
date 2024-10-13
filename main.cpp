#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 5.5, b = 2.2;

    std::cout << "Add: " << calc.Add(a, b) << std::endl;
    std::cout << "Sub: " << calc.Sub(a, b) << std::endl;

    return 0;
}
