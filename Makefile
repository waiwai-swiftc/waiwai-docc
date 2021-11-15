TARGET=WaiwaiKit

archive:
	$(DOCC) convert Sources/$(TARGET) \
	  --fallback-display-name $(TARGET) \
	  --fallback-bundle-identifier me.giginet.WaiwaiKit \
	  --fallback-bundle-version 1.0.0 \
	  --additional-symbol-graph-dir .build/symbol-graphs \
		--output-path $(TARGET).doccarchive

preview:
	$(DOCC) preview Sources/$(TARGET) \
	  --fallback-display-name $(TARGET) \
	  --fallback-bundle-identifier me.giginet.WaiwaiKit \
	  --fallback-bundle-version 1.0.0 \
	  --additional-symbol-graph-dir .build/symbol-graphs

symbol-graph:
	mkdir -p .build/symbol-graphs
	swift build --target $(TARGET) \
		-Xswiftc -emit-symbol-graph \
		-Xswiftc -emit-symbol-graph-dir -Xswiftc .build/symbol-graphs

