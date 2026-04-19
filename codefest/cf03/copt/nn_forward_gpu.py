import torch
import torch.nn as nn

# Step 1: detect device
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print("Using device:", device)

# Step 2: define the neural network
class SimpleNN(nn.Module):
    def __init__(self):
        super().__init__()
        self.layer1 = nn.Linear(4, 5)   # input: 4, hidden: 5
        self.relu = nn.ReLU()
        self.layer2 = nn.Linear(5, 1)   # hidden: 5, output: 1

    def forward(self, x):
        x = self.layer1(x)
        x = self.relu(x)
        x = self.layer2(x)
        return x

# Step 3: create model and move it to GPU/CPU
model = SimpleNN().to(device)

# Step 4: create random input batch of size 16
input_data = torch.randn(16, 4).to(device)

# Step 5: run forward pass
output = model(input_data)

# Step 6: print confirmation
print("Input shape:", input_data.shape)
print("Output shape:", output.shape)
print("Output device:", output.device)
print("Output tensor:")
print(output)
