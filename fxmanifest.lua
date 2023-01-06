fx_version 'cerulean'
games { 'rdr3', 'gta5' }

lua54 'yes'

author 'John Wick a.k.a AL13N'
description 'AL13N-AFK'
version '1.0.0'

client_scripts {
  'client.lua'
}

server_scripts {
  "server.lua"
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

dependencies {
  'ox_lib'
}