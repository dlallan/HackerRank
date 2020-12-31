#include <iostream>
#include <iomanip>
#include <limits>

using namespace std;

int main() {
    int i = 4;
    double d = 4.0;
    string s = "HackerRank ";
    // Declare second integer, double, and String variables.
    int iIn = 0;
    double dIn = 0;
    string sIn = "";

    // Read and save an integer, double, and String to your variables.
    // Note: If you have trouble reading the entire string, please go back and review the Tutorial closely.
    cin >> iIn >> dIn;
    getline(cin >> ws, sIn);
    //getline(cin, sIn);

    // Print the sum of both integer variables on a new line.
    cout << i + iIn << endl;

    // Print the sum of the double variables on a new line.
    printf("%.1f", d + dIn);
    cout << endl;

    // Concatenate and print the String variables on a new line
    // The 's' variable above should be printed first.
    cout << s << sIn << endl;
