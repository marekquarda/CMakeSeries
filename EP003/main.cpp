#include <iostream>
#include "dog.h"
#include "operations.h"
#include "log.h"

int main() {
    double result = add(10,70);
    std::cout << "result : " << result << std::endl;

    Dog dog1("Marra EP003");
    dog1.print_info();

    log_data("Hello there", LogType::FATAL_ERROR);

    return 0;
}