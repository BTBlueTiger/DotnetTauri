#!/bin/bash

dotnet run --project ./src/ > dotnet.log 2>&1 &
DOTNET_PID=$!

sleep 5

cargo run --manifest-path ./src-tauri/Cargo.toml

kill $DOTNET_PID