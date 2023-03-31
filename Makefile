# Set default target
.DEFAULT_GOAL := linux

# Targets (linux depends on cleanup)
linux: cleanup
	./bin/linux.sh

cleanup:
	./bin/cleanup.sh

# Set file permissions
chmod +x ./bin/linux.sh ./bin/cleanup.sh
