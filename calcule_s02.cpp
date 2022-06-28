#include <iostream>
#include <array>
#include <numeric>

using namespace std;

int main() {
    array<float, 10> number;
    
    for ( auto& num: number ) {
        cin >> num;
    }
    
    auto sum = accumulate( number.begin(), number.end(), 0.0 );
    cout << "Sum: " << sum << endl;
    cout << "Average: " << sum / number.size() << endl;
    auto minmax = minmax_element( number.begin(), number.end() );
    cout << "Max: " << *minmax.second << endl;
    cout << "Min: " << *minmax.first << endl;

    return 0;
}
