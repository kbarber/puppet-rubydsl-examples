#!/usr/bin/env puppet

node "default" {
  # Defining
  Notify {
    message => "foo"
  }

  # Using
  notify {"bar": }
}
