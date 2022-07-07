calcule_s01.exe: calcule_s01.o
	@echo "Linking..."
	@$(CXX) $< -Os -o $@
	@strip $@
	-@termux-elf-cleaner $@
	@echo "Done"

calcule_s01.o: calcule_s01.cpp
	@echo "Compiling... $*"
	@$(CXX) --std=c++23 -O3 -Wall -c $< -o $@

calcule_s02.exe: calcule_s02.o
	@echo "Linking..."
	@$(CXX) $< -Os -o $@
	@strip $@
	-@termux-elf-cleaner $@
	@echo "Done"

calcule_s02.o: calcule_s02.cpp
	@echo "Compiling... $*"
	@$(CXX) --std=c++23 -O3 -Wall -c $< -o $@

calcule_s03.exe: calcule_s03.o
	@echo "Linking..."
	@$(CXX) $< -Os -o $@
	@strip $@
	-@termux-elf-cleaner $@
	@echo "Done"

calcule_s03.o: calcule_s03.cpp
	@echo "Compiling... $*"
	@$(CXX) --std=c++23 -O3 -Wall -c $< -o $@