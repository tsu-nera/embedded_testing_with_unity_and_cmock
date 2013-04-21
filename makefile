# ==========================================
#   Unity Project - A Test Framework for C
#   Copyright (c) 2007 Mike Karlesky, Mark VanderVoord, Greg Williams
#   [Released under MIT License. Please refer to license.txt for details]
# ========================================== 

C_COMPILER=gcc
TARGET_BASE = target
TARGET_EXTENSION=.exe
TARGET = $(TARGET_BASE)$(TARGET_EXTENSION)

OUT_FILE=-o $(TARGET)

# Unity Files
SRC_FILES  = src/unity.c
#SRC_FILES += test/testunity.c 
#SRC_FILES += build/testunity_Runner.c

# Source Files
SRC_FILES += src/MenacingLED.c
SRC_FILES += test/TestMenacingLED.c
SRC_FILES += test/TestMenacingLED_Runner.c

INC_DIRS=-Isrc
SYMBOLS=-DTEST -DUNITY_SUPPORT_64

CLEANUP = rm -f build/*.o ; rm -f $(TARGET) ; mkdir -p build

all: clean default

default:
#	ruby auto/generate_test_runner.rb test/testunity.c build/testunity_Runner.c
	$(C_COMPILER) $(INC_DIRS) $(SYMBOLS) $(SRC_FILES) $(OUT_FILE)
	./$(TARGET)

clean:
	$(CLEANUP)
