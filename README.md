# ⏰ Digital Clock – Finite State Machine / Digital Design

A **Digital Clock** implemented using digital logic principles.  
This project simulates a real-time clock that displays **hours, minutes, and seconds**, updating every second using a clock signal.

It is commonly used for **FPGA, Verilog, VHDL, and digital electronics learning**.

---

## 📌 Overview

A digital clock works by counting clock pulses and converting them into **seconds, minutes, and hours**. The counters increment sequentially and reset when their maximum values are reached.

This project demonstrates:

- Digital counters
- Clock division
- Time synchronization
- FSM / sequential logic design
- Hardware timing control

---

## ⚙️ Features

- ⏰ Displays **HH:MM:SS format**
- 🔁 **Automatic time increment**
- ⏱️ **1-second clock timing**
- 🔄 Counter reset after **24 hours**
- 🧪 Easy to simulate and modify

---

## 🧠 Clock Components

| Component | Function |
|-----------|----------|
| Clock Divider | Converts system clock to 1-second pulse |
| Second Counter | Counts from 0–59 |
| Minute Counter | Increments every 60 seconds |
| Hour Counter | Counts from 0–23 |
| Display Module | Shows time on display |

---

## 🔁 Time Counting Logic
Seconds: 0 → 59

Minutes: 0 → 59

Hours: 0 → 23

When **seconds reach 59**, they reset to **0** and **minutes increment**.  
When **minutes reach 59**, they reset to **0** and **hours increment**.  
When **hours reach 23**, the clock resets to **00:00:00**.

---

## ▶️ How It Works

1. The system clock generates pulses.
2. A **clock divider** converts the high-frequency clock into a **1-second signal**.
3. The **seconds counter** increments every second.
4. When seconds reach **59**, minutes increment.
5. When minutes reach **59**, hours increment.
6. When hours reach **23**, the clock resets to **00:00:00**.

---

## 🔧 Example Pseudocode

```pseudo
seconds = 0
minutes = 0
hours = 0

loop every 1 second:

    seconds = seconds + 1

    if seconds == 60:
        seconds = 0
        minutes = minutes + 1

    if minutes == 60:
        minutes = 0
        hours = hours + 1

    if hours == 24:
        hours = 0

📚 Applications

FPGA learning projects

Digital electronics labs

Embedded systems practice

Real-time clock systems

Seven-segment display projects
