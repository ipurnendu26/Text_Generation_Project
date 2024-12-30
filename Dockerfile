# Use the official Python image as the base image
FROM python:3.9

# Set the working directory
WORKDIR /CODE

# Copy the requirements.txt file into the container
COPY ./requirements.txt /code/requirements.txt

# Debug: Check if the file exists in the expected directory
RUN ls /code

# Upgrade pip and install dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Add a user for security purposes
RUN useradd user
USER user

# Set environment variables
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

# Set the final working directory
WORKDIR $HOME/app

# Copy the application code into the container
COPY --chown=user . $HOME/app

# Command to run the app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]
