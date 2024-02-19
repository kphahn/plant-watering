
# List available commands
_default:
    @just -l

# Build binary
build:
    make

# Build binary and flash target
deploy:
    @just build
    tar -C build -c watering.bin | ssh phili@phili-server \
    "tar -C /tmp -x watering.bin && \
     st-flash write /tmp/watering.bin 0x08000000 && \
     rm /tmp/watering.bin"
     