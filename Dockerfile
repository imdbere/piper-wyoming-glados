FROM rhasspy/wyoming-piper

# Install wget for downloading files
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# Create data directory if it doesn't exist
RUN mkdir -p /data

# Download GLaDOS voice model files
RUN wget -O /data/glados.onnx https://github.com/dnhkng/GLaDOS/releases/download/0.1/glados.onnx
RUN wget -O /data/glados.onnx.json https://raw.githubusercontent.com/dnhkng/GLaDOS/refs/heads/main/models/TTS/glados.json

EXPOSE 10200
EXPOSE 5000

# Set default command with GLaDOS voice
ENTRYPOINT ["bash", "/run.sh", "--voice", "glados"]