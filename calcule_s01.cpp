#include <iostream>

using namespace std;

int main() {
    float number[13]{0};
    
    for ( int i = 0; i < 10; i++ ) {
        cin >> number[i];
        number[10] += number[i];

        switch ( i ) {
            case 0:
                number[11] = number[i];
                number[12] = number[i];
            break;
            
            default:
                if ( number[i] > number[11] ) {
                    number[11] = number[i];
                }
                
                if ( number[i] < number[12] ) {
                    number[12] = number[i];
                }
        }
    }
    
    cout << "Sum: " << number[10] << endl;
    cout << "Average: " << number[10] / 10.0 << endl;
    cout << "Max: " << number[11] << endl;
    cout << "Min: " << number[12] << endl;

    return 0;
}
