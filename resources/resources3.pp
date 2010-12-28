#!/usr/bin/env puppet

define foo($msg) {
  notify {$msg: message => $msg }
}

node "default" {
  # Virtualise
  @foo {"bar":
    msg => "foo",
  }

  # Realise
  Foo <| |>
}
