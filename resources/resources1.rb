#!/usr/bin/env puppet

# Defining
define "foo" do
  notice [@name]
end

node "default" do
  # Using
  create_resource :foo, "foo"
end
