cheatsheets := CheatSheets/Series/Quantum-Information-Processing
cheatsheets += CheatSheets/Series/Physics

presentations := Presentations/QIST-Intro-Computer-Engineers


include build/common.mk

.PHONY: all
all: $(cheatsheets) $(presentations)

.PHONY: $(cheatsheets) $(presentations)
$(cheatsheets) $(presentations): 
	$(MAKE) --directory=$@

.PHONY: clean realclean
clean:
	for dir in $(cheatsheets) $(presentations); do \
	  $(MAKE) --directory=$$dir -f Makefile $@;\
	done
realclean:
	for dir in $(cheatsheets) $(presentations); do \
	  $(MAKE) --directory=$$dir -f Makefile $@;\
	done

