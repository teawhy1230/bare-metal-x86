SUBDIRS := $(wildcard */.)
SUBDIRSCLEAN := $(addsuffix clean,$(SUBDIRS))

all: $(SUBDIRS)

$(SUBDIRS):
	make -C $@

clean: $(SUBDIRSCLEAN)

%clean: %
	make -C $< clean
