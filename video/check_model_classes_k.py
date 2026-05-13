
from ultralytics import YOLO
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)
MODEL_PATH = os.path.join(ROOT_DIR, 'pt', 'best_end_k.pt')

try:
    if os.path.exists(MODEL_PATH):
        model = YOLO(MODEL_PATH)
        print("Model Classes:", model.names)
    else:
        print(f"Error: {MODEL_PATH} not found.")
except Exception as e:
    print(f"Error: {e}")
