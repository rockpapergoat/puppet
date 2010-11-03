# just a dumb class

$text = "The purpose of Puppet’s language is to make it easy to specify 
the resources you need to manage on the machines you’re managing.\nThis guide will show you how the language works, going through some basic 
concepts. Understanding the Puppet language is key, as it’s the main driver 
of how you tell your Puppet managed machines what to do."

class dumb {
	exec{ talky:
	command => "/usr/local/bin/BigHonkingText -d -p 0 -h 50% -w 50% $text"
	}
}

include dumb