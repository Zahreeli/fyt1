# Step 1: Base Image
FROM python:3.9-slim

# Step 2: Working Directory
WORKDIR /app

# Step 3: Copy Project Files
COPY . /app

# Step 4: Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the Port (same as your app's port)
EXPOSE 4000

# Step 6: Run Command
CMD ["python", "main.py"]
