PROJECT_NAME = my_program
BUILD_DIR = build

all: clean build

build: clean
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && psp-cmake -DBUILD_PRX=1 -DENC_PRX=1 ..
	@cd $(BUILD_DIR) && make 

clean:
	@rm -rf $(BUILD_DIR)

