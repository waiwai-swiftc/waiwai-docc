# WaiwaiKit

This is a sample project to demonstrate swift-docc!

## How to use

```console
$ DOCC=/path/to/docc make
```

### Generate symbol-graph

```console
$ make symbol-graph
```

### Build doccarchive

```console
$ make archive
```

### Run preview

```console
export DOCC_HTML_DIR="$(dirname $(xcrun --find docc))/../share/docc/render"
$ make preview
```
