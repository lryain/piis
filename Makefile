all: piisd
doly: piisd-doly

CFLAGS=-Wall -Ofast -fomit-frame-pointer -funroll-loops \
 -I/opt/vc/include \
 -I/opt/vc/include/interface/vcos/pthreads \
 -I/opt/vc/include/interface/vmcs_host \
 -I/opt/vc/include/interface/vmcs_host/linux \
 -L/opt/vc/lib
LIBS=-pthread -lrt -lm -lbcm_host

piisd: piisd.c
	cc $(CFLAGS) piisd.c $(LIBS) -o piisd
	strip piisd

piisd: piisd_doly.c
	cc $(CFLAGS) piisd.c $(LIBS) -o piisd
	strip piisd-doly

clean:
	rm -f piisd
	rm -f piisd-doly
