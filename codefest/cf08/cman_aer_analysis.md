# CMAN AER Bandwidth Analysis

## 1. Mean Aggregate Spike Rate

Given:

- N = 1024 neurons
- f = 50 Hz

R = N × f

R = 1024 × 50

R = 51,200 spikes/s

Therefore, the mean aggregate spike rate is 51,200 spikes/s.

## 2. Mean AER Bandwidth

Each packet contains:

- 10-bit address
- 6-bit timestamp
- 4-bit overhead

Total packet size = 20 bits

Bandwidth:

B = R × 20

B = 51,200 × 20

B = 1,024,000 bits/s

B = 1.024 Mbit/s

Therefore, the mean AER bandwidth is 1.024 Mbit/s.

## 3. Interface Comparison

| Interface | Capacity | Can sustain 1.024 Mbit/s? |
| ---------- | ---------- | ---------- |
| I²C | 3.4 Mbit/s | Yes |
| SPI | 50 Mbit/s | Yes |
| AXI4-Lite | 100 Mbit/s | Yes |

All three interfaces can handle the average bandwidth. Since I²C has the lowest complexity and still meets the requirement, it would be the preferred choice.

## 4. Burst Analysis

25% of the neurons fire within a 1 ms interval.

Burst spikes:

256 = 0.25 × 1024

Burst data:

256 × 20 = 5120 bits

Peak bandwidth:

5120 / 0.001

= 5.12 Mbit/s

Burst-to-mean ratio:

5.12 / 1.024 = 5

Therefore, the burst bandwidth is 5× higher than the average bandwidth.

Since 5.12 Mbit/s exceeds the I²C limit of 3.4 Mbit/s, buffering is required.

Required buffer:

(5.12 − 3.4) × 10⁶ × 0.001

≈ 1720 bits

≈ 215 bytes

## 5. Comparison with Frame-Based Readout

A frame-based system sends one bit for every neuron every 1 ms.

Bandwidth:

1024 × 1000

= 1,024,000 bits/s

= 1.024 Mbit/s

At 50 Hz:

AER bandwidth = 1.024 Mbit/s

Frame bandwidth = 1.024 Mbit/s

Ratio = 1

To find the crossover point:

1024 × f × 20 = 1024 × 1000

f = 50 Hz

So the crossover firing rate is 50 Hz.

For firing rates below 50 Hz, AER is more efficient because only spike events are transmitted. Above 50 Hz, frame-based transmission becomes more competitive.
