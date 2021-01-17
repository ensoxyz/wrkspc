#!

# LLVM
# https://apt.llvm.org/

# Install Latest Stable Version
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

#|> GIT LLVM
#(cd ~/wrkspc/.tmp && git clone https://github.com/llvm/llvm-project.git)
#(cd ~/wrkspc/.tmp/llvm-project && mkdir build)
#(cd ~/wrkspc/.tmp/llvm-project/build && cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm)
#(cd ~/wrkspc/.tmp/llvm-project/build && make)

#|> CLANG
#clang --help
#clang file.c -fsyntax-only (check for correctness)
#clang file.c -S -emit-llvm -o - (print out unoptimized llvm code)
#clang file.c -S -emit-llvm -o - -O3
#clang file.c -S -O3 -o - (output native machine code)

#make check-clang

