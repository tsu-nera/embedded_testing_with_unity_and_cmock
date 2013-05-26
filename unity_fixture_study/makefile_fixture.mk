#---- Outputs ----#
TARGET_BASE = hogehoge
TARGET_EXTENSION=.exe 
TARGET = $(TARGET_BASE)$(TARGET_EXTENSION) 

#--- Inputs ----#
PROJECT_HOME_DIR = .
UNITY_HOME = $(HOME)/tools/unity
UNITY_FIXTURE = $(UNITY_HOME)/extras/fixture
UNITY_BUILD_HOME = $(UNITY_HOME)/extras/fixture/build

C_COMPILER=gcc

#UNITY_CFLAGS += -DUNITY_OUTPUT_CHAR=UnityOutputCharSpy_OutputChar

SRC_DIRS = \
	 $(PROJECT_HOME_DIR)/src\

TEST_SRC_DIRS = \
	      $(PROJECT_HOME_DIR)/test\
	      $(UNITY_HOME)/src\
	      $(UNITY_HOME)/extras/fixture/src\

INCLUDE_DIRS =\
  .\
  $(PROJECT_HOME_DIR)/src\
  $(UNITY_HOME)/src\
  $(UNITY_HOME)/src\
  $(UNITY_HOME)/extras/fixture/src\
  $(UNITY_HOME)/extras/fixture/test\

include $(UNITY_BUILD_HOME)/MakefileWorker.mk
 
