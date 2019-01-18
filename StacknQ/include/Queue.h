#ifndef QUEUE_H
#define QUEUE_H

#define Max 100
class Queue
{
    public:
        int Arr[Max];
        Queue();
        bool isEmpty();
        void push(int x);
        void pop();
        int Front();
        virtual ~Queue();

    protected:

    private:
        int head;
        int tail;
};

#endif // QUEUE_H
