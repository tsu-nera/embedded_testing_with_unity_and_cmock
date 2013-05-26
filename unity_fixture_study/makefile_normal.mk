#---- Outputs ----#
TARGET_BASE = hogehoge
TARGET_EXTENSION=.exe 
TARGET = $(TARGET_BASE)$(TARGET_EXTENSION) 

#--- Inputs ----#
PROJECT_HOME_DIR = .
UNITY_HOME = $(HOME)/tools/unity
UNITY_FIXTURE = $(UNITY_HOME)/extras/fixture

C_COMPILER=gcc 

# Unity File
SRC_FILES  =$(UNITY_HOME)/src/unity.c
# Unity Fixture File
SRC_FILES +=$(UNITY_FIXTURE)/src/unity_fixture.c

# Source Files 
SRC_FILES += src/hogehoge.c

# Test Files
SRC_FILES += test/Testhogehoge.c
SRC_FILES += test/AllTests.c

INC_DIRS  =-Isrc
INC_DIRS +=-I$(UNITY_HOME)/src
INC_DIRS +=-I$(UNITY_FIXTURE)/src

#SYMBOLS=-DTEST -DUNITY_SUPPORT_64

CLEANUP = rm -f build/*.o ; rm -f $(TARGET); rm -f $(TARGET2) ; mkdir -p build

all: default

default: 
	$(C_COMPILER) $(INC_DIRS) $(SYMBOLS) $(SRC_FILES) -o $(TARGET) 
	./$(TARGET) 

clean: 
	$(CLEANUP) 

