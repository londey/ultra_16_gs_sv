
SRCS := $(wildcard src/*.vs)

all: $(SRCS)
    @echo $(SRCS)
    @yosys -p 'synth_ice40 -top top -blif build/design.blif' $(SRCS)
    @arachne-pnr -d 1k -P tq144:4k -p build/pinmap.pcf build/design.blif -o build/design.txt
    @icepack build/design.txt build/design.bin

clean:
	@rm -f build/*
 
#  The  $(SRCS)  variable is a list of all the .vs files in the src directory. The  all  target is the default target that will be run when you type  make  in the terminal. It runs the  yosys  command to synthesize the design, then the  arachne-pnr  command to place and route the design, and finally the  icepack  command to generate the binary file. The  clean  target is used to remove all the files in the build directory. 
#  The  @  symbol at the beginning of each command suppresses the output of the command. 
#  The  $(SRCS)  variable is used to pass the list of .vs files to the  yosys  command.