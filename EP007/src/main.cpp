#include <iostream>
#include <vector>
#include "stats.h"

int main() {

    std::vector<int> v = {50, 36, 5, 6};

    int avg = mean(v.data(), v.size());
    std::cout << "mean: " << avg << std::endl;

    return 0;
}