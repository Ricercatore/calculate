# make s=NN android=0

calcule_s$(s).exe: calcule_s$(s).o
	@echo "Linking..."
	@$(CXX) $< -Os -o $@
	@strip $@
ifdef android
	-@termux-elf-cleaner $@
endif
	@echo "Done"

calcule_s$(s).o: calcule_s$(s).cpp
	@echo "Compiling... $*"
	@$(CXX) --std=c++20 -O3 -Wall -c $< -o $@

clean:
	@echo "Cleaning..."
	@rm -f *.exe *.o