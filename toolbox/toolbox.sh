#!

# TOOLS
source tools/nix/nix.sh
source tools/llvm/llvm.sh
source tools/swift/swift.sh
source tools/lua/lua.sh
source tools/julia/julia.sh
source tools/rust/rust.sh
source tools/deno/deno.sh
source tools/go/go.sh
source tools/v/v.sh


nix-env -i lua
nix-env -i julia
nix-env -i rust
nix-env -i deno
nix-env -i go
nix-env -i v

nix-env -i nginx
nix-env -i obhttpd
nix-env -i haproxy
nix-env -i fasthttp

nix-env -i consul
nix-env -i terraform
nix-env -i nomad
nix-env -i vault



# [1] Virtual Environment
# [2] Lines of Code
# [3] deployment
	web servers 
	proxies
	service mesh
	orchestration
	containerization
	provisioning

