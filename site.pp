import "classes/*.pp"

node default {
  include sudo
  include motd
}
