#!/usr/bin/env puppet

node "default" {
  # Defining
  $asdf = "foo"

  # Using
  notice($asdf)
}
