#include "Queue.h"
#include <iostream>

using namespace std;

Queue::Queue()
{
    //ctor
    Arr[Max] = {};
    tail = 0;
    head = -1;

}

void Queue::push(int x){
    if(tail<Max){
        Arr[tail] = x;
        ++tail;
    }
    else{
    cout<<"Size exceeded";
    }
}
bool Queue::isEmpty(){
if(head > tail){
    return true;
}else{
    return false;
}
}
void Queue::pop(){
if(isEmpty()){
    cout<<"Empty. Can't pop!";
}
else{
    Arr[head] = 0;
    ++head;
}
}
int Queue::Front(){
if(isEmpty()) return -1;
else return Arr[head];
}




Queue::~Queue()
{

    //dtor
}


