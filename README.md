# Dev Containers
PoCs fiddling with various base images from VSCode + Remote-Containers Extension

# Prerequisites

- A Linux + container solution setup (WSL2 counts, using Win 11 + docker-ce in Ubuntu subsystem for dev / test)
- VSCode with 'Remote-Containers' Extension
- CUDA / GPU Drivers for WSL2 if you have an NVIDIA card (GPU passthrough)
- Win 11 / WSLg / X-display access (to run GUI apps in container context)

# Instructions
- Open base repo in VSCode (in WSL2 context if on Windows)
- Open a subdirectory above one of the `.devcontainer` directories in a new window
  - (`code {x}` in the terminal works well)
- `Ctrl+Shift+P` -> Remote-Containers: Rebuild and open in Container
- READMEs in subdirectories may have more info

