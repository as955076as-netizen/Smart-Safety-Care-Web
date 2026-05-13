import cv2
print("Testing cameras...")
for i in range(5):
    cap = cv2.VideoCapture(i)
    if cap.isOpened():
        print(f"Camera {i} is available and opened.")
        ret, frame = cap.read()
        if ret:
            print(f"Camera {i} read a frame correctly.")
        else:
            print(f"Camera {i} was opened but could not read a frame.")
        cap.release()
    else:
        print(f"Camera {i} could not be opened.")
