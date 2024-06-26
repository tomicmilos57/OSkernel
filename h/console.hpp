#include "../h/buffer.hpp"

class MyConsole{
private:
    static MyBuffer *in;
    static MyBuffer *out;
public:
    static void initConsole();

    static void putFromKeyboard(char c);
    static char __getc();

    static void __putc(char c);
    static char getToConsole();
};