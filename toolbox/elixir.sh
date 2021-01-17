#!/usr/bin/sh





# Elixir
# https://elixir-lang.org/install.html


wget -P /tmp -O /tmp/erlang-solutions_2.0_all.deb --https-only --no-cookies --no-cache --secure-protocol=PFS https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb

dpkg -i /tmp/erlang-solutions_2.0_all.deb

apt install esl-erlang

apt install elixir

# PHOENIX
# https://hexdocs.pm/phoenix/overview.html

mix local.hex

mix archive.install hex phx_new 1.5.5
