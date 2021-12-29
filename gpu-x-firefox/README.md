# GPU / X / Firefox

Confirmed Firefox GUI running in container under WSL2 / WSLg with graphics acceleration (E.g. Shadertoy).

NVIDIA RTX 3050 ti with WSL CUDA driver https://docs.nvidia.com/cuda/wsl-user-guide/index.html

See runtime arguments in `.devcontainer.json` for X server / GPU config, Dockerfile for setup.

After opening directory in Remote-Containers or attaching to container, run `firefox` from terminal