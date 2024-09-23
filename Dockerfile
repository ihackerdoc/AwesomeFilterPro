# Base image: Use the official Python image with the required version
FROM python:3.8.7

# Set the working directory inside the container
WORKDIR /TamilanBotsZ

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the dependencies specified in the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port your bot is running on, if necessary (optional)
EXPOSE 8080

# Command to run the bot
CMD ["python3", "bot.py"]
