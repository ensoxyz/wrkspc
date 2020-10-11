#!

# Elixir
# https://elixir-lang.org/install.html


wget -P /tmp -O /tmp/erlang-solutions_2.0_all.deb --https-only --no-cookies --no-cache --secure-protocol=PFS https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb

dpkg -i /tmp/erlang-solutions_2.0_all.deb

apt install esl-erlang

apt install elixir

source phoenix.sh

