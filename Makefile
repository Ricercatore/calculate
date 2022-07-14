# make s=NN

calcule_s$(s).exe: calcule_s$(s).o
	@echo "Linking..."
	@$(CXX) $< -Os -o $@
	@strip $@
ifneq (, $(shell which termux-elf-cleaner))
	@termux-elf-cleaner $@ >/dev/null
endif
	@echo "Done"

calcule_s$(s).o: calcule_s$(s).cpp
	@echo "Compiling... $*"
	@$(CXX) --std=c++20 -O3 -Wall -c $< -o $@

clean:
	@echo "Cleaning..."
	@$(RM) *.exe *.o