## What Is A Kernel
- It governs access to the hardware on your computer.
- It sits between your running programs(or processes) and listens for system calls(function invocation), so it can properly relay some tasks to the hardware like the processor or read or write from storage.
- Programs do not directly access or communicate with the computer's hardware. The kernel does it on the programs' behave.
---

## What Is Namespacing(belongs to linux)
- It's a OS feature.
- It's the process of isolating resources per process(or group of processes)
- Allows us to look at all of the hardware resources connected to our computer and segment out portions of those resources.
  - So we can create segments of hard disks to specifically hold certain resources.
- Example of resources we can limit or redirect using namespaces:
  - Processes
  - Users
  - Hostnames
  - Hard drive
  - Network
  - Inter Process Communication
---

## What Are Control Groups(cgroups, belong to linux)
- They limit the amount of resources used per process.
- Ex:
  - Memory
  - CPU Usage
  - HD I/O
  - Network Bandwith
---

## Image
- Is a filesystem snapshot(a copy paste of a set specific directories and files)
- It also contains a specific startup.
---

## Container
- A container is a running process(program) or set of processes that has a grouping of resources assigned to it.
---

## Creating A Container Out Of An Image
1. The kernel is going to isolate a little section of the hard drive (and other resources) and make it available to just this container.
2. The Filesystem snapshot is then placed in the section of the hard drive that the kernel has assigned to the container.
3. The startup command from the image is executed .
4. The program is invoked 
5. We create a new instance of that process and the created process is isolated to a specific portion of the system's resources in the container.
---
