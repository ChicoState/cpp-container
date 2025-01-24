#include <iostream>
#include <fstream>

using std::cout;
using std::fstream;

int main()
{
    const char* LOGFILE = "logs/data.txt";
    fstream output;
    output.open(LOGFILE, std::ios::out);

    if( output.is_open() )
    {
        cout << LOGFILE << " opened.\n";
        output << "Program has been run! in the container!\n";
        output.close();
    }
    cout << "C++ program complete.\n";

    return 0;
}