MACHINECONFIGS = \
	machineconfig.yaml

DEPS = \
	src/external-ingress-routes.sh \
	src/external-ingress.nft

%.yaml: src/%.bu
	butane -o $@ -d src $<

all: $(MACHINECONFIGS)

machineconfig.yaml: $(DEPS)

clean:
	rm -f $(MACHINECONFIGS)
