LIBS=libs/connectivity libs/database libs/manager
INCLUDE_PATH=libs/

libraries:
	mkdir librariess/
	for dir in $(LIBS); do \
		cd $$dir; \
		python *.py; \
		cp *.py ../../libraries; \
		cd -; \
	done

clean: 
	rm -rf librariess/