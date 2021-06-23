PROTOC_PYTHON := protoc -I=./definitions --python_out=./proto-profiler --mypy_out=./proto-profiler
proto: python
python:
	@echo "Building python protos"
	@find . -regex '.*\.proto' | xargs -n 1 echo building 
	@find . -regex '.*\.proto' | xargs -n 1 -P 8 $(PROTOC_PYTHON)

.PHONY: proto

