#!/usr/bin/env puppet

# Exported resources requires storeconfigs to be configured:
#
# http://projects.puppetlabs.com/projects/1/wiki/Using_Stored_Configuration
#

define "foo", :msg do
  notify @msg, :message => @msg
end

node 'default' do
  # Export
  export do
    foo "bar", :msg => "foo"
  end

  # Collect
  newcoll = Puppet::Parser::Collector.new(scope, "Foo", nil, nil, :exported)
  scope.compiler.add_collection(newcoll)
end
