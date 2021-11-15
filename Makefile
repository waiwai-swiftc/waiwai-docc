TARGET=WaiwaiKit

archive: symbol-graph
	swift run docc convert Sources/$(TARGET) \
		--output-path $(TARGET).doccarchive

preview: symbol-graph
	swift run docc preview Sources/$(TARGET)

symbol-graph:
	swift build --target $(TARGET) \
		-Xswiftc -emit-symbol-graph \
		-Xswiftc -emit-symbol-graph-dir -Xswiftc Sources/$(TARGET)/$(TARGET).docc
