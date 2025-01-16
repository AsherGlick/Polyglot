Hello World
================================================================================

"Hello World" a popular first program to write when learning a new language. This project strives to get a working Hello World implementation in as many languages as possible.

Each implementation is accompanied by a method of executing the code.




Languages
================================================================================
* C
* C++
* Java
* Javascript
* PHP
* Python3
* rust
* Typescript


Other Languages
--------------------------------------------------------------------------------
* ActionScript 2
* ActionScript 3
* Ada
* Algol
* AngelScript | https://en.wikipedia.org/wiki/AngelScript
* Arduino
* Assembly
* AssemblyScript
* Bash
* BASIC
* BrainF\*\*k
* Brainfuck
* C#
* CHIP-8
* Clojure
* Clojure
* Cobol
* CoffeeScript
* Cold Fusion
* Cuda
* D
* Dart
* Delphi
* Elixer
* Elm
* Erlang
* F#
* Forth
* Fortran
* Game Maker Language
* GDScript 3
* GDScript 4
* Gleam
* GLSL
* Go
* Google Apps Script
* Groovy
* Haskell
* Haxe
* HLA (High Level Assembly)
* HLSL (High Level Shader Language)
* J
* JASS
* Jq
* Julia
* Kotlin
* LabView
* Lisp
* Logo
* Lua
* Matlab
* MUMPS
* Nim
* Objective-C
* Ocaml
* Octave
* OpenCL
* Pascal
* Perl
* Pico8
* PL/SQL
* PostScript
* PowerShell
* Prolog
* Python2
* QtScript
* R
* Ruby
* SCAD
* Scala
* Scheme
* Sed
* Shell (Sh)
* Smalltalk
* SQL
* Swift
* TCL
* Verilog
* VHDL
* Vim Script
* Visual Basic
* WebAssembly
* Whitespace
* Zig
* Zshell


FAQ
================================================================================

**Why do this?** This may seem like a silly fun project, but under the thin vainer of comedy you will find that this repo actually serves as a boilerplate for executing source code across a large gamut of languages. Anyone who wants to be able to test an algorithm in multiple languages now has a conceptually simple springboard to launch themselves off of in order to execute their code.

This is incredibly useful for many purposes. One such research project I am hoping to conduct in the future is to identify how different languages parse floating point numbers from decimal to binary.


**What about different compilers and build systems** Adding tooling to support different build environments and runtimes I think is a good idea. There are multiple variables to consider here for how to name the file folders so that effort is not horribly duplicated across multiple nearly identical systems.

Some examples in differences between builds are
* `nodejs` vs `npm`
* `rustc` vs `cargo`
* `gcc` vs `make` vs `cmake` vs `ninja` vs ...
* `g++` vs `make` vs `cmake` vs `ninja` vs ...
* `g++` vs `llvm` vs `zig` vs `cl`
* `python3` vs `python2`
* `python3.10` vs `python3.9`
* `javac` vs `maven`
* `openjdk` vs `oraclejdk`


language-version-buildtool-version-runtimeorcompiler-version


python-3.10-none-none-cpython-3.10
python-3.10-none-none-pypy-3.10


But thats not quite good enough because there might be no difference between 3.10 and 3.11, and this would require a totally new folder, which means duplicated effort. Plus we are using 3.10 often. What does `python-3.10-none-none-cpython-3.11` mean?

It might just be

`python3-none-none-cpython-3.10`
`python3-none-none-cpython-3.11`


`java-maven-3-openjdk-34`

But maybe the version numbers are moot and should have been automated in some CI script.

`java-maven-opendjk`
`cpp-none-gcc`
`cpp-make-gcc`
`cpp-cmake-gcc`


`language-runtimeorcompiler-buildsystem`







This is kinda fun, and also so simple all in all. I should upload this to github over the weekend and use it as a chance to experiment with the github docker registry.



`cpp-gcc-cmake`
`cpp-clang-cmake`


Actually we want to use the same source code as much as possible right?
so the folders should really just be `cpp`
and then internally we can have multiple runtimes `./run.sh` maybe is just the first iteration of entrypoints. Maybe we have `./run-clang.sh` and `./run-gcc-cmake.sh` and stuff like that.