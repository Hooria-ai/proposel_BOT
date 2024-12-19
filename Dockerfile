
# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirement.txt

# Expose the port the app runs on (for Streamlit)
EXPOSE 8501

# Define the command to run your app
CMD ["streamlit", "run", "project.py"]
