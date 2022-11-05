
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/cygdrive/e/work/git/nginx/sbin/nginx -t

	kill -USR2 `cat /cygdrive/e/work/git/nginx/logs/nginx.pid`
	sleep 1
	test -f /cygdrive/e/work/git/nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /cygdrive/e/work/git/nginx/logs/nginx.pid.oldbin`
