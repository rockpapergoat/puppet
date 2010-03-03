import "classes/*.pp"

node default {
  include sudo
  include motd
  include johnny6
  include srcfolder
}
