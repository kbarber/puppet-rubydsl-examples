#!/usr/bin/env puppet

define foo() {
  notify {"foo": message => "foo" }
}
define bar() {
  notify {"bar": message => "bar" }
}

node "default" {
  foo {"foo":
    require => Bar["bar"]
  }
  bar {"bar": }
}
