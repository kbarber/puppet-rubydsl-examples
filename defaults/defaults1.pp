Notify {
  message => "foo"
}
node "default" {
  notify {"bar": }
}
