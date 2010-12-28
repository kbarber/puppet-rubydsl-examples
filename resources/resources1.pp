#!/usr/bin/env puppet

# Defining
define foo() {
  notice($name)
}

node "default" {
  # Using
  foo {"foo": }
}
