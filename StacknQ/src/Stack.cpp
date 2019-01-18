#include "Stack.h"
#include <iostream>
#include <bits/stdc++.h>

using namespace std;

ifstream f("data.in");
void Stack::push(char x){


if(idx<MAX){
    ++idx;
    Stack[idx] = x;}
    else{
    cout<<"Stack Overflow";

    }

}
bool Stack::isEmpty(){
if(idx>0){return false;}
else{ return true;}

}

void Stack::pop(){
    if(idx>0){
        Stack[idx] = 0;
        idx--;
    }
    else{
        cout<<"Stack is empty";
    }
}

char Stack::top(){
if(idx>0){
return Stack[idx];}
else return '-1';
}

bool Stack::example(){
int n;
    char a;
    f>>n;
    for(int i = 0; i<n ; i++){
        f>>a;
        if(a == '{' || a == '[' || a =='('){
            push(a);
        }
        else if(a == '}'){
        if(top()=='{'){
            pop();
            }
        else{
        cout<<"Mismatch!";
        return false;
        }
        }
        else if(a == ']'){
        if(top()=='['){
            pop();
            }
        else{
        cout<<"Mismatch!";
        return false;
        }
        }
        else if(a == ')'){
        if(top()=='('){
            pop();
            }
        else{
        cout<<"Mismatch!";
        return -1;
        }
        }
    }

    if(isEmpty()){
        cout<<"True";
        return true;
    }
    else{
        cout<<"Not enough to close";
        return false;
    }

}

