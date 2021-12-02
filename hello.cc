#include <iostream>

using namespace std;

int main(int argc, char** argv){
  cout << "Hello!" << endl;
  return cout.good() ? EXIT_SUCCESS : EXIT_FAILURE;
}
