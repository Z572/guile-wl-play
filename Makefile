# guile-wl-play/Makefile
#
# Copyright (C) 2022 Matthew Wette
#
# See LICENSE file distributed with this code.

CFLAGS = -g -I/opt/local/include/guile/3.0 -Wunused
#CFLAGS = -I/opt/local/include/guile/3.0
LIBS = -L/opt/local/lib -Wl,--rpath=/opt/local/lib -lguile-3.0

all: sockmsg.so xmmap.so

sockmsg.so: sockmsg.c
	$(CC) -shared -fPIC -o $@ $(CFLAGS) $^ $(LIBS)

xmmap.so: xmmap.c
	$(CC) -shared -fPIC -o $@ $(CFLAGS) $^ $(LIBS)

# --- last line ---
