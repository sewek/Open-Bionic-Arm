#pragma once

#include <stdint.h>

namespace Kernel
{
    
    class Threads
    {
    private:
        typedef void (*func)(void);

    public:
        typedef enum {
            IDLE = 0,
            BELOW_LOW,
            LOW,
            NORMAL,
            HIGH,
            EXTREME
        } thread_priority;

        typedef enum {
            READY = 0,
            RUNNING,
            WAITING
        } thread_activity;

        typedef enum {
            RUN = 0,
            SLEEP,
            FINISHED
        } thread_status;

        typedef enum {
            OK = 0,
            NULL_POINTER,
            STACK_OVERFLOW,
            STACK_TOO_SMALL,
            NO_SPACE_LEFT,

            UNKNOWN
        } thread_feedback;

        typedef struct
        {
            uint16_t            id;
            int                 stack_size;
            thread_priority     priority;
            thread_status       status;
            thread_activity     activity;
            func                function;
        } thread_stack;
        
        thread_feedback initThreads(unsigned int _stackSize = 1024);
        thread_feedback setHeapSize(unsigned int _stackSize);
        size_t getHeapSize();
        thread_feedback createThread(func _function, unsigned int _stackSize, thread_priority _priority = NORMAL);
        thread_feedback removeThread(int id);

    private:
        int              heap_size;
        thread_stack*    threads_array;
        int              threads_num;
    };
} // namespace Kernel
