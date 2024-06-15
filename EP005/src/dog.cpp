#include "dog.h"
#include <iostream>

Dog::Dog(std::string name_param) : dog_name(name_param) 
{
    std::cout << "Contructor for dog " << dog_name << " called." << std::endl;
}

Dog::~Dog() {
    std::cout << "Descrutor for dog" << dog_name << "colled" << std::endl;
}