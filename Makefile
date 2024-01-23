.PHONY: compile
compile:
	RUSTFLAGS='-C link-arg=-s' cargo build --lib --release --target wasm32-unknown-unknown
	mkdir -p artifacts
	cp ./target/wasm32-unknown-unknown/release/cw3_flex_multisig_archway.wasm ./artifacts/cw3_flex_multisig_archway.wasm
	cat ./artifacts/cw3_flex_multisig_archway.wasm | gzip -9 > ./artifacts/cw3_flex_multisig_archway.wasm.gz