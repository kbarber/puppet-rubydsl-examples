#!/usr/bin/env puppet

define "foo" do
  notify "foo", :message => "foo"
end
define "bar" do
  notify "bar", :message => "bar"
end

node "default" do
  foo "foo", :require => "Bar[bar]"
  bar "bar"
end
