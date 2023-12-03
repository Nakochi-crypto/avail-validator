#!/bin/bash

ARGS=(
  "-d"
  "/da/state"
  "--chain"
  "$DA_CHAIN"
  "--name"
  "$DA_NAME"
  "--prometheus-external"
)

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

exec /usr/local/bin/data-avail "${ARGS[@]}"
