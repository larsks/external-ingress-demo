MACHINECONFIGS = \
	machineconfig.yaml

%.yaml: src/%.bu
	butane -o $@ -d src $<

all: $(MACHINECONFIGS)

machineconfig.yaml: src/rp_filter.conf

clean:
	rm -f $(MACHINECONFIGS)
