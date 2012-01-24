== Overview

The purpose of this repo is to provide some working (albeit contrived) examples
of Ruby DSL, alongside their corresponding Puppet DSL equivalents. So it is
purely a training and documentation aid.

For the most authoritative documentation on Ruby DSL (at least at the time I
wrote this) see the Ruby DSL Wiki page:

<http://projects.puppetlabs.com/projects/1/wiki/Ruby_Dsl>

== Layout

These directories contain several examples of Ruby DSL and Puppet DSL next to
each other. So for example the file:

    defaults/defaults1.pp

Should perform the same functional task as its .rb equivalent:

    defaults/defaults1.rb

And this same pattern should apply to all the examples.

If you want to try these examples, you should be able to just run 'puppet apply'
across them. For example:

    puppet apply defaults/defaults1.rb
    puppet apply defaults/defaults1.pp

Of course the layout of these files is in single files for example purposes
only. In a real deployment you would always make sure your code is laid out
using modules. See the Ruby DSL and Puppet documentation for more detail
regarding this.
