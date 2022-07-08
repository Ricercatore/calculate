# make ver=NN

calcule_s$(ver).exe: calcule_s$(ver).o
	@echo "Linking..."
	@$(CXX) $< -Os -o $@
	@strip $@
	-@termux-elf-cleaner $@
	@echo "Done"

calcule_s$(ver).o: calcule_s$(ver).cpp
	@echo "Compiling... $*"
	@$(CXX) --std=c++20 -O3 -Wall -c $< -o $@