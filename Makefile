
RAW_DATA_DIR := ./raw_data
PREFIX := xxx


all:  annotation assembly


assembly: ${PREFIX}.1.sickle.fastq ${PREFIX}.2.sickle.fastq 

annotation: 

%.scythe.fastq: ${RAW_DATA_DIR}/%.fastq ./Makefile
	@cat $<  > $@
	@echo "test" >> $@ 


%.sickle.fastq: %.scythe.fastq ./Makefile
	@cat $<  > $@
	@echo "test2" >> $@


qc: ${PREFIX}.pear.fastq
	echo test > qc.html
	
clean:
	rm -rf *.fastq
