Polyglot
================================================================================
"Hello World" a popular first program to write when learning a new language.
Polyglot strives to get a working Hello World implementation in as many
languages as possible.

Each implementation is accompanied by a method of executing that code.


Languages
================================================================================
| Language                  | Container                     | Site                                            |
|---------------------------|-------------------------------|-------------------------------------------------|
| Bourne Again Shell (Bash) | ubuntu                        | https://gnu.org/software/bash                   |
| Bourne Shell (Sh)         | alpine                        |                                                 |
| C                         | gcc                           | https://c-language.org                          |
| C#                        | mcr.microsoft.com/dotnet/sdk  | https://learn.microsoft.com/en-us/dotnet/csharp |
| C++                       | gcc                           | https://isocpp.org                              |
| Go                        | golang                        | https://go.dev                                  |
| Haskell                   | haskell                       | https://haskell.org                             |
| Haxe                      | haxe                          | https://haxe.org                                |
| Java                      | openjdk                       | https://java.com                                |
| Javascript                | node                          |                                                 |
| Lua                       | ghcr.io/asherglick/lua-alpine | https://lua.org                                 |
| Perl                      | perl                          | https://perl.org                                |
| PHP                       | php                           | https://php.net                                 |
| Python3                   | python                        | https://python.org                              |
| rust                      | rust                          | https://rust-lang.org                           |
| Typescript                | node                          | https://typescriptlang.org                      |
| Zig                       | ghcr.io/asherglick/zig-alpine | https://ziglang.org                             |
| Zshell (zsh)              | ghcr.io/asherglick/zsh-alpine | https://zsh.org                                 |


Primary TODO Languages
--------------------------------------------------------------------------------
| Language                  | Link |
|---------------------------|------|
| Julia                     |      |
| Kotlin                    |      |
| Lisp                      |      |
| Nim                       |      |
| Ruby                      |      |



Docker Images to Create
--------------------------------------------------------------------------------
| Language     | Link                               | Reason for a custom container |
|--------------|------------------------------------|--------------------------|
| Bash [alpine]| https://www.gnu.org/software/bash/ | Right now we are using the ubuntu container which ships with bash


Other Languages
--------------------------------------------------------------------------------
* Ada
* Algol
* AngelScript | https://en.wikipedia.org/wiki/AngelScript
* Arduino
* Assembly
* AssemblyScript
* BASIC
* BrainF\*\*k
* CHIP-8
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
* Google Apps Script
* Groovy
* HLA (High Level Assembly)
* HLSL (High Level Shader Language)
* J
* Jq
* LabView
* Logo
* Matlab
* MUMPS
* Objective-C
* Ocaml
* Octave
* OpenCL
* Pascal
* Pico8
* PL/SQL
* PostScript
* PowerShell
* Prolog
* Python2
* QtScript
* R
* SCAD
* Scala
* Scheme
* Sed
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

Languages where terminal is non-default
--------------------------------------------------------------------------------
| ActionScript 2 | Adobe Flash Coding Language |
| ActionScript 3 | Adobe Flash Coding Language |
| JASS           | Blizzard/Warcraft3 Script   |


FAQ
================================================================================
**Why do this?**
This may seem like a silly fun project, but under the thin veneer of comedy you
will find that this repo serves as a boilerplate for executing source code
across a large number of languages. Anyone who wants to test an algorithm in
multiple languages now has a simple springboard to launch off of in order to
execute code in those languages.

This is useful for many purposes. For example, learning how different languages
parse floating point numbers from their decimal ASCII input to their IEEE 754
binary format.


**What about different compilers and build systems**
Adding tooling to support different build environments and runtimes is a good
idea. There are multiple variables to consider before embarking on that journey
and we are planning on building out a single compiler/build system for as many
languages as we can before moving on to variations of a language. If we are not
careful we will get a large amount of fragmentation and duplication of code
across the different variants.

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


```
brainstorming file structure

language-version-buildtool-version-runtimeorcompiler-version

python-3.10-none-none-cpython-3.10
python-3.10-none-none-pypy-3.10

But that might not be quite good enough because there might be no difference
between 3.10 and 3.11, and this would require a totally new folder, which means
duplicated effort. Plus we are using 3.10 often.
`python3-none-none-cpython-3.10`
`python3-none-none-cpython-3.11`
`java-maven-3-openjdk-34`
`java-maven-opendjk`
`cpp-none-gcc`
`cpp-make-gcc`
`cpp-cmake-gcc`
`language-runtimeorcompiler-buildsystem`
```

Future
================================================================================

Templated Runtimes
--------------------------------------------------------------------------------
Many more testing options open up with templated runtimes, allowing for
multiple versions of a language or build system to be tested within a single
matrix configuration test without having to rewrite the language's code, or
copy the code, for each version pair. This will necessitate having a
configuration file of some sort.


Internationalization
--------------------------------------------------------------------------------
This entire project is about supporting multiple languages. If that is the case
then it should also make sense that we should support multiple human languages
too and not just English. This will be easier once the templated runtimes
are achieved.


All Custom Docker Containers
--------------------------------------------------------------------------------
If the docker containers used become completely custom built, then we can also
force documentation for how the compile tools and or runtimes must be installed
via the docker configuration files. If this is done though we likely do not
want to remove support for the official containers and instead that might be
another dimension to query.


Possible Other Programs
--------------------------------------------------------------------------------
* Hello World
* FizzBuzz
* Factorial Calculator
* String Reversal
* Prime Number Checker
* Fibonacci Sequence
* Palindrome Checker
* Number Guessing Game (requires stdin and could be hard to test)
* Echo (requires stdin)
* Even or Odd
* Word Counter
* UTF-8 Box Drawing
