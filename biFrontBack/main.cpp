#include <iostream>
#include <bits/stdc++.h>

using namespace std;

ifstream f("data.in");

int Arr[20],n;
int biFront(int x){
int left, mid = 0;
int right = n;
int output = -1;

while(left<=right){
mid = (left+right)/2;
    if(Arr[mid] == x){
    output = mid;
    right = mid - 1;
    }
    else if(Arr[mid]<x){
    left = mid + 1;
    }
    else if(Arr[mid]>x){
    right = mid - 1;
    }
}
return output;
}

int biEnd(int x){
int left = 0;
int mid = 0;
int right = n;
int output = -1;

while(left<=right){
mid = (left+right)/2;
    if(Arr[mid] == x){
    output = mid;
    left = mid + 1;
    }
    else if(Arr[mid]<x){
    left = mid + 1;
    }
    else if(Arr[mid]>x){
    right = mid - 1;
    }
}
return output;
}
int main()
{
    f>>n;
    for(int i = 0; i<n; i++){
        f>>Arr[i];
    }

    cout << biFront(20) << endl;
    cout << biEnd(20) << endl;
    return 0;
}
