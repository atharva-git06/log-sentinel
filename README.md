
# Log Sentinel

A real-time Linux log monitoring tool built using Bash scripting.

## 🔍 Overview

Log Sentinel is a lightweight Bash script that continuously monitors a specified log file for important events such as `ERROR`, `WARNING`, and `CRITICAL`. It mimics real-world log analysis tools used in DevOps, cybersecurity, and system monitoring workflows.

---

## 🚀 Features

- Real-time log monitoring using `tail -F`
- Alerts printed instantly on detecting keywords
- Timestamped outputs for context
- Simple, portable, and beginner-friendly
- Can be tested with simulated log entries

---

## 🧰 Technologies Used

- Bash (Shell Scripting)
- Linux (or WSL on Windows)
- Tools: `tail`, `grep`, `awk`, `date`, `echo`

---

## 💻 How to Set Up and Run (For Windows Users)

### 1. Install WSL (Windows Subsystem for Linux)

Open **Command Prompt (as Admin)** and run:

```bash
wsl --install
```

Restart your computer when prompted.

---

### 2. Open Ubuntu (or any WSL terminal)

You can find "Ubuntu" in the Start Menu. Open it.

---

### 3. Clone or Create Project Folder

```bash
mkdir log-sentinel
cd log-sentinel
```

Create the script file:

```bash
nano log-sentinel.sh
```

Paste the script content (your log sentinel code) and save.

Make it executable:
```bash
chmod +x log-sentinel.sh
```

---

### 4. Create a Log File to Monitor

```bash
touch ~/testlog.txt
```

---

### 5. Open Two Terminals

- **Terminal 1** (runs the script):

```bash
./log-sentinel.sh
```

- **Terminal 2** (simulate log entries):

```bash
echo "ERROR: Simulated failure" >> ~/testlog.txt
echo "WARNING: Low disk space" >> ~/testlog.txt
```

You should see alerts printed in **Terminal 1**.

---

## 📦 Output Example

```
[2025-04-14 18:32:15] [ERROR] ERROR: Simulated failure
[2025-04-14 18:32:20] [WARNING] WARNING: Low disk space
```

---

## ✅ Use Cases

- Practice for DevOps and system monitoring
- Shell scripting exercises
- Resume-friendly Linux project
- Foundation for more advanced log parsers

---

