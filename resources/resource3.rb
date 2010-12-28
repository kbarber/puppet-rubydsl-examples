#!/usr/bin/env puppet

define "foo", :msg do
  notify @msg, :message => @msg
end

node 'default' do
  # Export
  virtual do
    foo "bar", :msg => "foo"
  end

  # Collect
  newcoll = Puppet::Parser::Collector.new(scope, "Foo", nil, nil, :virtual)
  scope.compiler.add_collection(newcoll)
end
