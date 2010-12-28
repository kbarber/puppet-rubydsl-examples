#!/usr/bin/env puppet

# Exported resources requires storeconfigs to be configured:
#
# http://projects.puppetlabs.com/projects/1/wiki/Using_Stored_Configuration
#

define foo($msg) {
  notify {$msg: message => $msg }
}

node "default" {
  # Export
  @@foo {"bar":
    msg => "foo",
  }

  # Collection
  Foo <<| |>>
}
