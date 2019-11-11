cheatsheets := CheatSheets/Series/Quantum-Information-Processing
cheatsheets += CheatSheets/Series/Physics

include build/common.mk

.PHONY: all
all: $(cheatsheets)

.PHONY: $(cheatsheets)
$(cheatsheets): 
	$(MAKE) --directory=$@

.PHONY: clean realclean
clean:
	for dir in $(cheatsheets); do \
	  $(MAKE) --directory=$$dir -f Makefile $@;\
	done
realclean:
	for dir in $(cheatsheets); do \
	  $(MAKE) --directory=$$dir -f Makefile $@;\
	done

