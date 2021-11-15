TARGET=WaiwaiKit

archive: symbol-graph
	$(DOCC) convert Sources/$(TARGET) \
		--output-path $(TARGET).doccarchive

preview: symbol-graph
	$(DOCC) preview Sources/$(TARGET)

symbol-graph:
	swift build --target $(TARGET) \
		-Xswiftc -emit-symbol-graph \
		-Xswiftc -emit-symbol-graph-dir -Xswiftc Sources/WaiwaiKit/WaiwaiKit.docc
