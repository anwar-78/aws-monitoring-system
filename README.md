# 🚀 AWS Linux Log Monitoring System

## 📌 Project Overview

This project is a Linux-based monitoring system deployed on AWS EC2 using shell scripting. It continuously monitors system performance and logs important metrics such as CPU usage, memory usage, disk usage, and failed login attempts.

The system is automated using cron jobs and generates alerts when predefined thresholds are exceeded.

---

## ⚙️ Features

* ✅ Real-time CPU, Memory, and Disk monitoring
* ✅ Tracks failed login attempts from system logs
* ✅ Automated execution using cron jobs
* ✅ Threshold-based alert system
* ✅ Structured logging for system monitoring
* ✅ Lightweight and efficient shell scripting solution

---

## 🛠️ Tech Stack

* **Cloud:** AWS EC2
* **OS:** Amazon Linux
* **Scripting:** Bash (Shell Scripting)
* **Automation:** Cron Jobs
* **Version Control:** Git & GitHub

---

## 📂 Project Structure

```
aws-monitoring-system/
│── scripts/
│   ├── cpu.sh
│   ├── memory.sh
│   ├── disk.sh
│   ├── logs.sh
│── logs/
│   ├── system.log
│   ├── alerts.log
│── main.sh
│── config.sh
```

---

## 🚀 How to Run

### 🔹 Step 1: Clone the repository

```
git clone https://github.com/anwar-78/aws-monitoring-system.git
cd aws-monitoring-system
```

### 🔹 Step 2: Give permission

```
chmod +x main.sh scripts/*.sh
```

### 🔹 Step 3: Run the project

```
./main.sh
```

---

## ⏰ Automation using Cron Job

```
crontab -e
```

Add this line:

```
*/5 * * * * /home/ec2-user/aws-monitoring-system/main.sh
```

---

## 📊 Sample Output

```
Tue Apr 14 04:32:35 UTC 2026 | CPU:0% MEM:14% DISK:20% FAILED:0
```

---

## 🚨 Alert System

* Generates alerts when:

  * CPU usage exceeds threshold
  * Memory usage exceeds threshold
  * Disk usage exceeds threshold

Alerts are stored in:

```
logs/alerts.log
```

---

## 🔥 Future Enhancements

* 📩 Email Alert Integration
* 📊 Web-based Dashboard
* ☁️ AWS CloudWatch Integration
* 📈 Advanced Logging & Analytics

---

## 🎯 Use Cases

* System administrators monitoring servers
* DevOps beginners learning automation
* Real-time Linux system monitoring

---

## 👨‍💻 Author

**Syed Anwar Rizvi**
GitHub: https://github.com/anwar-78

