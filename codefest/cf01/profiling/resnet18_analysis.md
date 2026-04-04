## Top 5 Layers by MAC Count

| Layer Name | MACs | Parameters |
|---|---:|---:|
| Conv2d: 1-1 | 118,013,952 | 9,408 |
| Conv2d: 3-1 | 115,605,504 | 36,864 |
| Conv2d: 3-4 | 115,605,504 | 36,864 |
| Conv2d: 3-7 | 115,605,504 | 36,864 |
| Conv2d: 3-10 | 115,605,504 | 36,864 |

## Arithmetic Intensity of the Most MAC-Intensive Layer

Assumption: all weights and activations are loaded from DRAM with no reuse.

- Layer: Conv2d: 1-1
- MACs: 118,013,952
- FLOPs = 2 × MACs = 236,027,904

- Weight bytes = 9,408 × 4 = 37,632 bytes

- Input activations = 1 × 3 × 224 × 224 = 150,528
- Output activations = 1 × 64 × 112 × 112 = 802,816
- Total activation bytes = (150,528 + 802,816) × 4 = 3,813,376 bytes

- Arithmetic Intensity = 236,027,904 / (37,632 + 3,813,376)
- Arithmetic Intensity ≈ 61.29 FLOP/byte


