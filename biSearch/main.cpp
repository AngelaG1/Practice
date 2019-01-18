#include <iostream>
#include<bits/stdc++.h>

using namespace std;
ifstream f("data.in");

int A[100], B[100], X, n, nq, Left, Right,tempB;

int biSearch(int x){
    int left = 0;
    int right = n-1;
    while(left<=right){
        int mid = (left+right)/2;
        if(A[mid]==x){
            cout<<"Found at : ";
            return mid;
        }
        else if(A[mid]<x){
            left = mid+1;
        }
        else{
            right = mid -1;
        }
    }
    return -1;
}

void addWithin(int a, int b, int X_){
for(int i = a; i<=b; i++){
A[i]+=X_;
}
}



int main()
{
    f>>n;
    for(int i = 0; i<n; i++)
        f>>A[i];

    f>>nq;
    //cout<<biSearch(9);
    //addWithin(2,5,3);
    for(int i = 0; i<nq; i++){
        f>>Left;
        f>>Right;
        f>>X;
        B[Left]+=X;
        B[Right+1]-=X;

    }

    for(int i = 0; i<n; i++){
        tempB+=B[i];
        A[i]+=tempB;
        cout<<A[i]<<" ";
    }


    return 0;
}
