
  # Smart Safety Care App

<img width="5760" height="3240" alt="S1" src="https://github.com/user-attachments/assets/0ededadb-08a0-4df4-8c02-b391e4e39a13" />
專案核心：AI 居家安全主動防護網絡
本系統旨在將傳統「被動監控」轉化為「主動防護」，透過 AI 視覺辨識危險物品與動作，為家庭建構智慧化安全屏障。

一、 技術架構與分工
🧠 AI 視覺大腦 (Python, YOLOv8)

核心功能： 實時辨識刀具、剪刀及長者跌倒等危險情境。

智慧分析： 結合距離與位移參數計算「危險分數」，降低誤報率。

影像串流： 透過連接鏡頭輸出帶有偵測標籤的即時畫面。

🎨 響應式前端 (React, Vite, Tailwind CSS)

直觀介面： 提供跨裝置的即時監控畫面與歷史紀錄查詢。

狀態管理： 整合警報觸發邏輯，確保資訊傳遞零延遲。

📱 跨平台封裝 (Capacitor, Electron, PWA)

多端覆蓋： 一套程式碼同步生成 Android/iOS App、桌面軟體及免下載的 PWA。

原生整合： 調用手機通知系統，確保第一時間推送告警訊息。

⚙️ 自動化生產鏈 (GitHub Actions, CI/CD)

品質控管： 透過自動化 Build 流程確保程式碼穩定。

即時部署： 更新代碼即同步更新監控網址，維持系統最新狀態。

二、 系統價值
主動告警： 偵測風險後立即透過 LINE 或電子郵件通知用戶。

全時守護： 24/7 自動化監控，降低人為疏忽導致的意外。

-----------------------------------------------------------

核心技術： Python, YOLO, 遷移學習, 知識蒸餾, OpenCV, LabelImg, Roboflow, Figma, GitHub Pages
專案概述： 獨立開發提升長照環境安全的全端 AI 監控應用，涵蓋資料集建置、模型訓練、輕量化優化，以及前端 UI/UX 設計與部署。
主要貢獻與成果：

遷移學習突破效能瓶頸： 運用 LabelImg 與 Roboflow 標註「人、剪刀、刀具」等危險情境資料。針對初期人物辨識率低落的痛點，主動導入遷移學習，先以開源人體資料集進行預訓練獲取初始權重，再以自建資料集進行微調與超參數優化，成功大幅提升 YOLO 物件偵測準確率。

模型輕量化： 應用知識蒸餾 ，將大型 YOLO 預訓練模型特徵轉移至輕量化模型，在維持高準確率的前提下，有效降低硬體運算資源消耗。

前端開發與部署： 運用 Figma 規劃高易用性的監控介面，優化醫護與家屬操作體驗；結合 Antigravity 進行網頁開發，並透過 Git 版本控制將專案部署至 GitHub Pages 上線。

<img width="3200" height="2400" alt="B" src="https://github.com/user-attachments/assets/32bb61e4-4e46-48ec-a460-ec06eb8f8c85" />
<img width="1886" height="1691" alt="Group 1362788845" src="https://github.com/user-attachments/assets/711018a6-4afe-43e9-b1ee-55bb6047672d" />

-----------------------------------------------------------

## 三、 安裝與使用教學 (Installation & Usage)

### 📌 系統需求
- **Node.js** (建議 v18 以上版本)
- **Python 3** (建議 3.9 ~ 3.11 版本)
- 一個視訊鏡頭 (Webcam)

### 🚀 步驟一：下載專案
您可以直接點擊 GitHub 右上角的 `Code` -> `Download ZIP` 並解壓縮到您的電腦中，或是透過指令：
```bash
git clone https://github.com/as955076as-netizen/Smart-Safety-Care-Web.git
```

### ⚙️ 步驟二：首次化安裝環境
我們提供了一鍵安裝腳本，能自動為您建置前端與 AI 所需的全部環境：
1. 進入專案資料夾，點擊兩下執行 **`⬇️首次安裝_Install.bat`**。
2. 請耐心等待，系統會自動：
   - 下載前端網頁套件 (`npm install`)
   - 建立 Python 獨立虛擬環境 (`venv`) 
   - 安裝 YOLO, OpenCV 等所有 AI 必備模組
3. 看到「安裝完成」提示後，即可關閉該視窗。

### ▶️ 步驟三：啟動系統
1. 點擊兩下執行 **`▶️啟動_SmartCare.bat`**。
2. 系統會自動開啟兩個終端機黑色視窗（請勿關閉它們）：
   - `React Frontend`：負責網頁圖形介面。
   - `AI Camera Server`：負責啟動攝影機並進行即時 AI 危險辨識。
3. 等待幾秒鐘後，瀏覽器將會自動彈出並開啟監控首頁 (`http://localhost:5173`)。

### 🛑 關閉系統
當您不需要監控時，請點擊兩下執行 **`🛑關閉_SmartCare.bat`**。
這會安全且徹底地關閉所有背景伺服器並釋放您的攝影機，確保硬體資源不被佔用與隱私安全。

### 🌐 關於 GitHub Pages 部署版本
本專案的網頁介面已部署至 GitHub Pages 上。但請留意：
- 由於瀏覽器的安全性政策 (Mixed Content)，線上版 HTTPS 網頁無法直接存取您本地端 HTTP 的攝影機畫面。
- 如果您希望在外網或手機上使用線上版網頁查看家中的鏡頭，建議您使用 [ngrok](https://ngrok.com/) 等工具，將本地端的 8080 port 轉發為 HTTPS 網址，然後再貼到系統設定的「後端 API 網址」中即可！
