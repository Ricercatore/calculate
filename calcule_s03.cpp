#include <iostream>
#include <vector>
#include <numeric>

using namespace std;

class Calculate {
    public:
        void append( const float &number ) {
            this->number.push_back( number );
        }

        const float getSum() const {
            return accumulate( number.begin(), number.end(), 0.0 );
        };
        
        const float getAverage() const {
            return getSum() / number.size();
        };
        
        const float getMin() const {
            return *minmax_element( number.begin(), number.end() ).first;
        };
        
        const float getMax() const {
            return *minmax_element( number.begin(), number.end() ).second;
        };
        
    private:
        vector<float> number{0};
};

int main() {
    Calculate obj;
    float num;
    for ( int i = 1; i <= 10; ++i ) {
        cin >> num;
        obj.append( num );
    }
    
    cout << "Sum: " << obj.getSum() << endl;
    cout << "Average: " << obj.getAverage() << endl;
    cout << "Max: " << obj.getMax() << endl;
    cout << "Min: " << obj.getMin() << endl;

    return 0;
}
