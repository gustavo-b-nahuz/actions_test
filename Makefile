# Nome do executável
TARGET = hello

# Compilador
CXX = g++

# Flags do compilador
CXXFLAGS = -Wall -Wextra -std=c++11

# Arquivos fonte
SRCS = main.cpp

# Arquivos objeto
OBJS = $(SRCS:.cpp=.o)

# Regra padrão para compilar tudo
all: $(TARGET)

# Regra para criar o executável
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Regra para criar arquivos objeto
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Limpeza dos arquivos gerados
clean:
	rm -f $(TARGET) $(OBJS)
