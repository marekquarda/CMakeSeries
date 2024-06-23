#include <iostream>
#include <vector>
#include "stats.h"
#include <fmt/format.h>

int main() {

    std::vector<int> v = {50, 36, 5, 6};

    int avg = mean(v.data(), v.size());
    std::cout << fmt::format("means: {}", avg) << std::endl;

    return 0;
}