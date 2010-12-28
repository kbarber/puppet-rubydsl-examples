#!/usr/bin/env puppet

node "default" do
  # Defining
  scope.setvar("asdf", "foo")

  # Using
  a = scope.lookupvar("asdf")
  notice [a]
end
