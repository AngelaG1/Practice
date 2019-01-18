//#ifndef STACK_H
#define STACK_H

#define MAX 100
class Stack{
int idx=0;
public:
char Stack[MAX];
void push(char x);
bool isEmpty();
void pop();
char top();
bool example();

};
