# Server-Performance-Stats
# 📊 Server Performance Stats Script

This project is a simple Bash script that displays key server performance statistics such as CPU usage, memory usage, disk usage, and top processes.

It is designed for beginners to understand how Linux system monitoring works.

---

## 🚀 Features

The script provides:

* ✅ CPU usage (raw output from `top`)
* ✅ Memory usage (human-readable)
* ✅ Disk usage (all mounted filesystems)
* ✅ Top 5 processes by CPU usage
* ✅ Top 5 processes by memory usage

---

## 📂 Project Structure

```
server-stats.sh   # Main Bash script
README.md         # Documentation
```

---

## ⚙️ Prerequisites

Ensure your system has:

* Linux OS
* Bash shell
* Installed commands:

  * `top`
  * `free`
  * `df`
  * `ps`

---

## 🛠️ Setup Instructions

### Step 1: Create Script File

```bash
nano server-stats.sh
```

---

### Step 2: Add the Script

```bash
#!/bin/bash

echo "server performance stats"
echo "---------------------"

echo "cpu usage:"
top -bn1 | grep -i cpu

echo "memory usage:"
free -h 

echo "disk usage:"
df -h 

echo ""
echo "top 5 cpu usage:"
ps aux --sort=-%cpu | head -6

echo ""
echo "top 5 memory usage:"
ps aux --sort=-%mem | head -6
```

---

### Step 3: Make Script Executable

```bash
chmod +x server-stats.sh
```

---

### Step 4: Run the Script

```bash
./server-stats.sh
```

---

## 📌 Example Output

```
server performance stats
---------------------
cpu usage:
%Cpu(s):  5.3 us,  2.1 sy, 92.6 id

memory usage:
              total        used        free
Mem:           11Gi       1.6Gi       ...

disk usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda3       219G   46G  162G  23% /

top 5 cpu usage:
USER   PID %CPU %MEM ...
...

top 5 memory usage:
USER   PID %CPU %MEM ...
...
```

---

## 🧠 Explanation of Each Command

### 🔹 CPU Usage

```bash
top -bn1 | grep -i cpu
```

* `top -bn1` → Runs system monitor once in batch mode
* `grep -i cpu` → Filters CPU-related line
* Output includes:

  * `us` → user CPU
  * `sy` → system CPU
  * `id` → idle CPU

---

### 🔹 Memory Usage

```bash
free -h
```

* Displays RAM usage
* `-h` → human-readable format (MB/GB)

---

### 🔹 Disk Usage

```bash
df -h
```

* Shows disk usage for all mounted filesystems
* `-h` → human-readable format

---

### 🔹 Top 5 Processes by CPU

```bash
ps aux --sort=-%cpu | head -6
```

* Lists all processes
* Sorts by highest CPU usage
* Displays top 5 processes

---

### 🔹 Top 5 Processes by Memory

```bash
ps aux --sort=-%mem | head -6
```

* Sorts processes by memory usage
* Shows top 5 memory-consuming processes

---

## 🎯 Learning Outcomes

This project helps you understand:

* Basic Bash scripting
* Linux system monitoring tools
* Process management
* Resource usage analysis

---

## 🚀 Future Improvements

You can enhance this script by:

* 🔹 Converting raw output into percentage values
* 🔹 Adding colored output (green/red alerts)
* 🔹 Monitoring uptime and load average
* 🔹 Logging results to a file
* 🔹 Running via cron job for automation

---

## 🙌 Conclusion

This is a beginner-friendly project that builds strong fundamentals in:

* Linux commands
* DevOps basics
* System monitoring

Perfect starting point before building advanced monitoring tools.

---
