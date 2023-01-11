JNI_LIB_DIR := jserial-jni
JAVA_LIB_DIR := jserial-java

--jni:
	$(MAKE) -C $(JNI_LIB_DIR) HOST=linux-x64 O=output/linux-x64
	$(MAKE) -C $(JNI_LIB_DIR) HOST=windows-x64 O=output/windows-x64

--java-lib: --jni
	mkdir -p $(JAVA_LIB_DIR)/src/main/resources/native
	/bin/cp $(JNI_LIB_DIR)/output/linux-x64/dist/lib/jserial-jni-x64.so $(JAVA_LIB_DIR)/src/main/resources/native
	/bin/cp $(JNI_LIB_DIR)/output/windows-x64/dist/lib/jserial-jni-x64.dll $(JAVA_LIB_DIR)/src/main/resources/native
	cd $(JAVA_LIB_DIR) && mvn install

.DEFAULT_GOAL := --java-lib

.PHONY: clean
clean:
	$(MAKE) -C $(JNI_LIB_DIR) clean
	cd $(JAVA_LIB_DIR) && mvn clean
	rm -rf $(JAVA_LIB_DIR)/src/main/resources

