#include <cstring>
#include <fstream>
#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>

using namespace std;

const double Pi = 3.14159265358979323;

int main(){
    int counter = 0;
    int storage_size = 100;
    std::string storage[storage_size];
    std::string line;
    std::ifstream in("wkt.wkt");
    if (in.is_open()) {
        while (getline(in, line)) {
            storage[counter] = line;
            counter++;
        }
    } else {
        printf("Open File Error");
    }
}