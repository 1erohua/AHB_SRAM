export TEST_NAME = AHB_SRAM
FILE_LIST = $(TEST_NAME).f

PLATFORM = LINUX64
waveform = $(TEST_NAME).fsdb

vcs_all:clean vcs_make   

vcs_make:
	vcs -R -full64 +v2k -fsdb +define+FSDB -sverilog -f $(TEST_NAME).f -l run.log -timescale=1ns/1ns


run_verdi:
	verdi -nologo	-sv 	-f 	$(FILE_LIST)	-ssf $(TEST_NAME).fsdb	 &

clean:
	rm -rf *fsdb*  *csrc* DVEfiles simv simv.daidir ucli.key novas* VCS* *dat xvlog* *.log ./../rtl/xvlog* ./../tb/xvlog*  verdiLog xsim.dir ./../rtl/xsim.dir ./../tb/xsim.dir

	
