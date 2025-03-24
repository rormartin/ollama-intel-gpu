# Ollama Intel GPU Docker Compose package

This repository provides a Docker Compose file for running Ollama, including its UI, within a Docker container with full Intel GPU support.

## Content
The Docker Compose contains with two services:

### `ollama-intel-gpu` service

Runs Ollama with Intel GPU support using the Intel IPEX-LLM base image.  This follows the instructions in the [Intel IPEX-LLM documentation](https://github.com/intel/ipex-llm/blob/main/docs/mddocs/Quickstart/ollama_portable_zip_quickstart.md).  The standard Ollama API is exposed on local port `11434`.

### `ollama-webui` service
The service uses the [Open WebUI](https://github.com/open-webui/open-webui) for Ollama, configured to connect to the Ollama instance without requiring authentication.

The UI is avaiable at [http://localhost:8080](http://localhost:8080)

## Configuration
The variable `LOCAL_OLLAMA_FOLDER` specifies the local directory for Ollama files, including models.  Note that the `ollama-intel-gpu` service uses volumes to download and store these models; ensure sufficient disk space is available.

## How to start

```
LOCAL_OLLAMA_FOLDER=/ollama/local/folder docker compose up -d
```

