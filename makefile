# ==========================================
#   Unity Project - A Test Framework for C
#   Copyright (c) 2007 Mike Karlesky, Mark VanderVoord, Greg Williams
#   [Released under MIT License. Please refer to license.txt for details]
# ========================================== 

C_COMPILER=gcc
TARGET_BASE = MenacingLED
TARGET_BASE2 = TestS5
TARGET_EXTENSION=.exe
TARGET = $(TARGET_BASE)$(TARGET_EXTENSION)
TARGET2 = $(TARGET_BASE2)$(TARGET_EXTENSION)

# Unity Files
SRC_FILES   = src/unity.c
SRC_FILES2  = src/unity.c

# CMock Files
SRC_FILES  += src/cmock.c
SRC_FILES2 += src/cmock.c

# Source Files
SRC_FILES += src/MenacingLED.c
SRC_FILES += test/TestMenacingLED.c
SRC_FILES += build/TestMenacingLED_Runner.c

SRC_FILES2 += src/S5.c
SRC_FILES2 += test/TestS5.c
SRC_FILES2 += build/TestS5_Runner.c

SRC_FILES2 += mocks/MockButtons.c
SRC_FILES2 += mocks/MockS5Ctrl.c

INC_DIRS  =-Isrc
INC_DIRS +=-Imocks
SYMBOLS=-DTEST -DUNITY_SUPPORT_64

CLEANUP = rm -f build/*.o ; rm -f $(TARGET); rm -f $(TARGET2) ; mkdir -p build

all: clean default

default:
	ruby auto/generate_test_runner.rb test/TestMenacingLED.c build/TestMenacingLED_Runner.c
	ruby auto/generate_test_runner.rb test/TestS5.c build/TestS5_Runner.c
	$(C_COMPILER) $(INC_DIRS) $(SYMBOLS) $(SRC_FILES) -o $(TARGET)
	$(C_COMPILER) $(INC_DIRS) $(SYMBOLS) $(SRC_FILES2) -o $(TARGET2)
	./$(TARGET)
	./$(TARGET2)

clean:
	$(CLEANUP)
