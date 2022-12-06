#include <iostream>
#include <chrono>
#include "CSVRow.hpp"

int main()
{
    CSVRow csv;
    auto start = std::chrono::high_resolution_clock::now();
    csv.csvread("../example/example_1.csv");
    csv.pushline();
    auto end = std::chrono::high_resolution_clock::now();
    auto cost_time = std::chrono::duration_cast<std::chrono::seconds>(end - start).count();
    std::cout << "--- Done | const time: " << cost_time << " s ---" << std::endl;
    auto lines = csv.DataSize();
    std::cout << "lines: " << lines << std::endl;
    return 0;
}