# llama.cpp `553a5c3a`: RPC HELLO major version

Run `python3 -B history-eq/gpu/llama.cpp/553a5c3a/verify_hello.py` from the project root. The [result](result.json) locks both historical changed Git blobs. The header changes only `RPC_PROTO_MAJOR_VERSION` from 1 to 2. Both source versions retain the same `rpc_server::hello` assignments and the same `rpc_serve_client` path that sends the HELLO response to a client. Thus a successful response carries major version 1 before and 2 after.

Alive2 refutes equality of the source-extracted HELLO major-field assignment in both directions ([old→new log](target_major-old_to_new.log)); the unchanged minor-version field verifies in both directions as a control. The same commit removes the empty response to `RPC_CMD_SET_TENSOR` and its client wait, but this check does **not** prove end-to-end tensor equality or mixed-version client/server behavior.

**Verdict: scoped `NOT_EQUIV` for the emitted RPC HELLO version field.** No official historical performance score is inferred from the commit message.
