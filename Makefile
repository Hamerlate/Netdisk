.PHONY: all
all:
	$(MAKE) -C sgx
	cp sgx/bin/enclave.signed.so test/
	sync
	sudo $(MAKE) -C test

.PHONY: clean
clean:
	$(MAKE) -C sgx clean
	$(MAKE) -C test clean
	rm -f enclave.signed.so tantivy-sgx tantivy-sgx-part
	rm -rf idx
	sync

