#!/bin/bash

ARGS=("--prometheus-external")

if [[ "$ENABLE_VALIDATOR" = "true" ]]; then
  ARGS+=("--validator")
fi

if [[ "$ENABLE_RPC" = "true" ]]; then
  ARGS+=(
    "--rpc-external"
    "--rpc-port"
    "$RPC_PORT"
    "--rpc-cors=all"
  )
fi

exec /entrypoint.sh "${ARGS[@]}"
