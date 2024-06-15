#include <iostream>
#include "dog.h"
#include "operations.h"
#include "log.h"

int main() {

    auto value = ((10 <=> 20) > 0);
    std::cout << std::boolalpha;
    std::cout << "value: " << value << std::endl;

    double result = add(10,70);
    std::cout << "result : " << result << std::endl;

    Dog dog1("Marra EP003");
    dog1.print_info();

    log_data("Hello there", LogType::FATAL_ERROR);

    return 0;
}