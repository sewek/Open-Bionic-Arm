#include "threads.hpp"

#include <stdio.h>
#include <stdlib.h>

namespace Kernel
{

Threads::thread_feedback Threads::initThreads(unsigned int _stackSize)
{
    heap_size = _stackSize;
    threads_array = (thread_stack *)malloc(heap_size);

    if (threads_array == NULL)
    {
        return NULL_POINTER;
    }

    threads_num = 0;

    return OK;
}

Threads::thread_feedback Threads::setHeapSize(unsigned int _stackSize)
{
    threads_array = (thread_stack*) realloc(threads_array, _stackSize);

    if (threads_array == NULL)
    {
        return NULL_POINTER;
    }

    heap_size = _stackSize;

    return OK;
}

size_t Threads::getHeapSize()
{
    return (size_t)heap_size;
}

Threads::thread_feedback Threads::createThread(func _function, unsigned int _stackSize, thread_priority _priority)
{
    threads_array[threads_num] = (thread_stack)malloc(sizeof(thread_stack) + _stackSize);
    threads_array[threads_num]->id = threads_num + 1;
    threads_array[threads_num]->function = _function;
    threads_array[threads_num]->priority = _priority;
    threads_array[threads_num]->stack_size = _stackSize;
    threads_array[threads_num]->status = RUN;
    threads_array[threads_num]->activity = WAITING;

    if (threads_array[threads_num] == NULL)
    {
        return NO_SPACE_LEFT;
    }

    threads_num++;

    return OK;
}

Threads::thread_feedback Threads::removeThread(int _id)
{
    if (threads_array == NULL)
    {
        return NULL_POINTER;
    }

    for (int i = 0; i < threads_num; i++)
    {
        if (threads_array[i]->id == _id)
        {
            free(threads_array[i]);
        }
    }
    

    return OK;
}

} // namespace Kernel
