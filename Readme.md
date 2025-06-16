# GLaDOS Voice for Wyoming Piper

A Docker image that adds the GLaDOS voice from [dnhkng/GLaDOS](https://github.com/dnhkng/GLaDOS) to the Wyoming Piper TTS server, making it easy to use GLaDOS voice in Home Assistant and other Wyoming Protocol compatible applications.

## Quick Start

### Build the Image

```bash
git clone <this-repository>
cd piper-wyoming-glados
docker build -t piper-glados .
```

### Run the Container

```bash
docker run -d -p 10200:10200 -p 5000:5000 --name piper-glados piper-glados
```

## Home Assistant Integration

### Step 1: Add Wyoming Integration

1. Go to **Settings** → **Devices & Services** → **Add Integration**
2. Search for and select **Wyoming Protocol**
3. Enter the connection details:
   - **Host**: the host where the container is running
   - **Port**: `10200`

## Credits

- **GLaDOS Voice Model**: Created by [dnhkng](https://github.com/dnhkng) - [GLaDOS Repository](https://github.com/dnhkng/GLaDOS)
- **Wyoming Piper**: [Rhasspy Wyoming Piper](https://github.com/rhasspy/wyoming-piper)
