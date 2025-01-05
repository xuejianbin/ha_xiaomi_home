# Use the official Home Assistant base image
FROM homeassistant/home-assistant:2024.4.4

# Set working directory
WORKDIR /config

# Copy the Xiaomi Home integration files
COPY custom_components/xiaomi_home /config/custom_components/xiaomi_home

# Install any additional Python dependencies if needed
# (Check if requirements.txt exists and add RUN pip install -r requirements.txt if needed)

# Expose Home Assistant port
EXPOSE 8123

# Start Home Assistant
CMD ["python", "-m", "homeassistant", "--config", "/config"]
