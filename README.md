# Blink for Linux ESP32-S3

Simple blink program written in C for ESP32-S3 Linux ABI, based on [linux xtensa](https://github.com/jcmvbkbc/linux-xtensa) repository.

## Build Instructions

```
make
```

## Requirements

- ESP32-S3 config file (`esp32s3.so`)
- ESP32-S3 Linux GNU Compiler Collection (`xtensa-esp32s3-linux-uclibcfdpic-gcc`)
- Definition of these environment variables:

```
export XTENSA_GNU_CONFIG=<path_to_esp32s3_so>/esp32s3.so
export PATH=$PATH:<path_to_xtensa_linux_fdpic_gcc>xtensa-esp32s3-linux-uclibcfdpic/bin
```
