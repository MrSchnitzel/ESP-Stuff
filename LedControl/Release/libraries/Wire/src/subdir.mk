################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/Users/riggi/Arduino/hardware/espressif/esp32/libraries/Wire/src/Wire.cpp 

LINK_OBJ += \
./libraries/Wire/src/Wire.cpp.o 

CPP_DEPS += \
./libraries/Wire/src/Wire.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/Wire/src/Wire.cpp.o: /Users/riggi/Arduino/hardware/espressif/esp32/libraries/Wire/src/Wire.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Users/riggi/Arduino/hardware/espressif/esp32/tools/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++" -DESP_PLATFORM -DMBEDTLS_CONFIG_FILE="mbedtls/esp_config.h" -DHAVE_CONFIG_H "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/config" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/app_trace" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/app_update" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/asio" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/bootloader_support" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/bt" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/coap" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/console" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/driver" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp-tls" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp32" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_adc_cal" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_event" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_http_client" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_http_server" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_https_ota" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_https_server" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp_ringbuf" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/ethernet" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/expat" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/fatfs" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/freemodbus" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/freertos" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/heap" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/idf_test" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/jsmn" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/json" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/libsodium" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/log" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/lwip" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/mbedtls" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/mdns" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/micro-ecc" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/mqtt" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/newlib" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/nghttp" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/nvs_flash" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/openssl" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/protobuf-c" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/protocomm" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/pthread" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/sdmmc" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/smartconfig_ack" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/soc" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/spi_flash" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/spiffs" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/tcp_transport" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/tcpip_adapter" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/ulp" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/unity" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/vfs" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/wear_levelling" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/wifi_provisioning" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/wpa_supplicant" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/xtensa-debug-module" "-I/Users/riggi/Arduino/hardware/espressif/esp32/tools/sdk/include/esp32-camera" -std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wextra -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -MMD -c -DF_CPU=240000000L -DARDUINO=10802 -DARDUINO_ESP32_DEV -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD="ESP32_DEV" -DARDUINO_VARIANT="doitESP32devkitV1"  -DESP32 -DCORE_DEBUG_LEVEL=4    -I"/Users/riggi/Arduino/hardware/espressif/esp32/cores/esp32" -I"/Users/riggi/Arduino/hardware/espressif/esp32/variants/doitESP32devkitV1" -I"/Users/riggi/Arduino/libraries/Adafruit_NeoPixel" -I"/Users/riggi/Arduino/hardware/espressif/esp32/libraries/ESP32/src" -I"/Users/riggi/Arduino/hardware/espressif/esp32/libraries/Wire/src" -I"/Users/riggi/Arduino/libraries/Adafruit_HMC5883_Unified" -I"/Users/riggi/Arduino/libraries/Adafruit_Unified_Sensor" -I"/Users/riggi/Arduino/libraries/LED" -I"/Users/riggi/Arduino/libraries/RGB" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


