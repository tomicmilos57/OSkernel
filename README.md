# Multithreaded Operating System Kernel
## Overview

This project involves the implementation of a small but fully functional kernel of an operating system that supports multithreading with time sharing. The kernel includes memory allocation, thread management, semaphore support, asynchronous context switching, and preemption on timer and keyboard interrupts.
## Project Description

The kernel is designed to be a library such that the user application and the kernel share the same address space, forming a single statically linked program loaded into the computer's operational memory. This configuration is typical for embedded systems, where the program and operating system are preloaded into the target hardware.
## Key Features

- Thread Management: Create, manage, and terminate threads.
- Semaphore Support: Use semaphores for synchronization between threads.
- Memory Allocation: Dynamic memory allocation and deallocation.
- Preemption and Time Sharing: Support for time-sharing and context switching.
- Asynchronous Context Switching: Triggered by timer and keyboard interrupts.
- RISC-V Architecture: Implemented for RISC-V processor architecture and simulated in a virtual environment.
