from transformers import CLIPProcessor, CLIPModel

model = CLIPModel.from_pretrained("google/siglip-so400m-patch14-384")
processor = CLIPProcessor.from_pretrained("google/siglip-so400m-patch14-384")