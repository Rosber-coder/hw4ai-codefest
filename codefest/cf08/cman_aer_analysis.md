# CMAN — AER Bandwidth Analysis

1. Mean aggregate spike rate 
R = N × f = 1024 × 50 = 51,200 spikes/s

2. Mean AER bandwidth 
Each packet = 10-bit address + 6-bit timestamp + 4-bit overhead = 20 bits 
B = R × 20 = 51,200 × 20 = 1,024,000 bits/s = 1.024 Mbit/s

3. Interface comparison

Lowest-complexity interface that satisfies the mean rate: **I²C**, because 3.4 Mbit/s is still greater than 1.024 Mbit/s.

4. Burst case 
25% of 1024 neurons = 256 neurons fire in 1 ms. 
Burst data = 256 × 20 = 5120 bits 
Peak burst bandwidth = 5120 / 0.001 = 5.12 Mbit/s

Since **5.12 Mbit/s > 3.4 Mbit/s**, I²C cannot absorb the burst directly. Buffering is required.

Buffer excess ≈ (5.12 − 3.4) Mbit/s × 1 ms 
= 1720 bits ≈ 215 bytes

5. Frame-based comparison 
Frame readout sends 1 bit per neuron every 1 ms: 
1024 bits / 1 ms = 1.024 Mbit/s

At f = 50 Hz: 
AER bandwidth = 1.024 Mbit/s 
Frame bandwidth = 1.024 Mbit/s 
Ratio = 1

Crossover firing rate: 
20 × f = 1000 
f_crossover = 50 Hz

So, AER is better when the firing rate is below 50 Hz, while frame-based readout becomes better when the firing rate is above 50 Hz.
