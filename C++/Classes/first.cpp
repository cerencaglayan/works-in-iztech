#include <iostream>

using namespace std;

class Kalbim
{

    string sahibi = "Karım"; // private by default
    int numara;

public:
    Kalbim(string sahibi_, int numara_)
    {
        sahibi = sahibi_;
        numara = numara_;
    };
    void iltifatEt();
    void seslen()
    {
        cout << sahibi << endl;
    };
};

void Kalbim::iltifatEt()
{
    cout << "Seni seviyorum guzelim!" << endl;
}

class Zihin
{

public:
    Zihin(string isim, int numara)
    {
        Kalbim kalp(isim, numara);
    };
};

int main(int argc, char const *argv[])
{
    // ? i use  reference in main website of cpp.

    return 0;
}
