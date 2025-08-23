#!/bin/bash

docker exec -it -w /llm/ollama ollama-intel-gpu /llm/ollama/ollama $*
