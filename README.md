# Ollama Intel GPU Docker Compose package

This repository provides a Docker Compose file for running Ollama, including its UI, within a Docker container with full Intel GPU support.

## Content
The Docker Compose contains with two services:

### `ollama-intel-gpu` service

Runs Ollama with Intel GPU support using the Intel IPEX-LLM base image.  This follows the instructions in the [Intel IPEX-LLM documentation](https://github.com/intel/ipex-llm/blob/main/docs/mddocs/Quickstart/ollama_portable_zip_quickstart.md).  The standard Ollama API is exposed on local port 11434.

### `ollama-webui`
The service uses the [Open WebUI](https://github.com/open-webui/open-webui) for Ollama, configured to connect to the Ollama instance without requiring authentication.
