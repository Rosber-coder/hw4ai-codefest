from torchvision.models import resnet18
from torchinfo import summary

model = resnet18()
summary(model, input_size=(1, 3, 224, 224))
