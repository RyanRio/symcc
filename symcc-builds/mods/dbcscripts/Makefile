CXXFLAGS := -std=c++17

phony: clean all

all: test_compile_constraints

test_compile_constraints: test_compile_constraints.o
	$(CXX) $^ -lsqlite3 -o $@

%.o: %.cpp
	$(CXX) -c $(<) -o $(@) $(CXXFLAGS)

clean:
	rm test_compile_constraints
	rm *.o