build:
	@echo "################################################################################"
	@echo "## EECS 638, Spring 2013"
	@echo "## Bill Parrott"
	@echo "## Project\n"

	@make -B clean

	@opsr2 wmt.ops > /dev/null
	@echo "Compiling wmt.ops with opsr2..........................Complete"

	@opsr2 wrul.ops
	@echo "Compiling wrul.ops with opsr2.........................Complete"

	@opsr2 decl.ops
	@echo "Compiling decl.ops with opsr2.........................Complete"

	@opsr2 rules.ops
	@echo "Compiling rules.ops with opsr2........................Complete"

	@opsr2 project.ops
	@echo "Compiling project.ops with opsr2......................Complete"

	@cc -c wmt.s
	@echo "Compiling wmt.s to wmt.o with cc......................Complete"

	@cc -c wrul.s
	@echo "Compiling wrul.s to wrul.o with cc....................Complete"

	@cc -c decl.s
	@echo "Compiling decl.s to decl.o with cc....................Complete"

	@cc -c rules.s
	@echo "Compiling rules.s to rules.o with cc..................Complete"

	@cc -c project.s
	@echo "Compiling project.s to project.o with cc..............Complete"

	@cp /apps/opsr2/lib/shell.o ./
	@cp /apps/opsr2/lib/shellcr.o ./
	@cp /apps/opsr2/lib/rwbnolnk.o ./
	@cp /apps/opsr2/lib/opslib.a ./
	@cp /apps/opsr2/lib/startup.o ./
	@echo "Copying required files from /apps/opsr2/lib...........Complete"

	@cc wmt.o wrul.o decl.o rules.o project.o shell.o shellcr.o rwbnolnk.o opslib.a startup.o -lm -o project
	@echo "Compiling project output file.........................Complete"

	@echo "\n## Project successfully built"
	@echo "################################################################################\n"

################################################################################

clean:
	@rm -f wmt.s wmt.o wmt.syn
	@rm -f wrul.s wrul.o wrul.syn
	@rm -f decl decl.s decl.o decl.syn
	@rm -f rules rules.s rules.o rules.syn
	@rm -f project project.s project.o project.syn
	@rm -f shell.o shellcr.o rwbnolnk.o opslib.a startup.o
