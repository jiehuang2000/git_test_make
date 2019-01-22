LIBS=libs/connectivity libs/database libs/manager
INCLUDE_PATH=libs/

libraries:
	mkdir libraries/
	for dir in $(LIBS); do \
		cd $$dir; \
		echo --- the current directory is $$dir --- \
		echo --- will execute the python file --- \
		python *.py; \
		cp *.py ../../libraries; \
		cd -; \
	done

clean: 
	rm -rf libraries/