# just a test
class notification {
	exec { notification:
	command => "/usr/local/bin/growlnotify -m 'this is a test'",
	}

}
#include notification