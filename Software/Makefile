CXX = g++
CXXFLAGS = -Wall -Wextra -pedantic -std=c++17 -g -fsanitize=address
LDFLAGS =  -fsanitize=address

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = main

OUTPUT_DIR = output
CPP_FILES := $(wildcard kernel/*.cpp kernel/*/*.cpp)
OBJ_FILES := $(patsubst kernel/%,$(OUTPUT_DIR)/build/%,$(CPP_FILES:.cpp=.o))

.PHONY: all clean

all: $(OBJ_FILES)

$(OUTPUT_DIR)/build/%.o: $(CPP_FILES) | prepare-output clean
ifeq ($(OS),Windows_NT)
	@echo Creating dir $@ ...
	if not exist "$(dir $(subst /,\,$@))" mkdir $(dir $(subst /,\,$@)) 2> $(subst /,\,$(OUTPUT_DIR))\logs\build.log
	@echo Building $@ ...
	$(CXX) $(CXXFLAGS) -c -o $@ $< 2> $(subst /,\,$(OUTPUT_DIR))\logs\build.log
else
	mkdir -p $(dir $@) 2> $(OUTPUT_DIR)/logs/build.log
	$(CXX) $(CXXFLAGS) -c -o $@ $< 2> $(OUTPUT_DIR)/logs/build.log
endif


clean:
ifeq ($(OS),Windows_NT)
	rd /s /q $(OUTPUT_DIR)\build 2> $(OUTPUT_DIR)\logs\io.log
else
	rm -rf $(OBJ_FILES) 2> $(OUTPUT_DIR)/logs/io.log
	# rm $(OUTPUT_DIR)
endif

prepare-output:
	echo Preparing output dir...
ifeq ($(OS),Windows_NT)
	if not exist "$(OUTPUT_DIR)" mkdir $(OUTPUT_DIR)
	if not exist "$(OUTPUT_DIR)\build" mkdir $(OUTPUT_DIR)\build
	if not exist "$(OUTPUT_DIR)\files" mkdir $(OUTPUT_DIR)\files
	if not exist "$(OUTPUT_DIR)\logs" mkdir $(OUTPUT_DIR)\logs
else
	mkdir $(OUTPUT_DIR) $(OUTPUT_DIR)/build $(OUTPUT_DIR)/files $(OUTPUT_DIR)/logs
endif
	

extract: | prepare-output
	echo Extracting files...
ifeq ($(OS),Windows_NT)
	xcopy /s "kernel" "$(OUTPUT_DIR)\files\kernel\"
	xcopy /s "modules" "$(OUTPUT_DIR)\files\kernel\modules\"
else
	cp kernel modules $(OUTPUT_DIR)/files/
endif

extract-arduino: | prepare-output extract
ifeq ($(OS),Windows_NT)
	copy "devices\Arduino\OpenBionicArm.ino" "$(OUTPUT_DIR)\files\"
else
	cp devices/Arduino/OpenBionicArm.ino $(OUTPUT_DIR)/files/
endif