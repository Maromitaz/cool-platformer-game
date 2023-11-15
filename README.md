 # Cool platformer game

The most original name, I know.

This is a game that I've developed to learn how to use OpenGL and [The Cherno's GLFW](https://github.com/TheCherno/glfw)
(because it has a pre-made premake5 lua script and I don't have to write one)

## Requirements
[Premake5](https://premake.github.io)

Any C and C++ compiler

**Makefile** - for **Linux** and/or **Mac** users, and possibly the last few devs that use vcvarsall on **Windows**

**Visual Studio** (tested and written in vs2022) - for **Windows**

**Xcode** - **MacOs**

## Preparing your enviroment

This project uses [Premake5](https://premake.github.io) for the sole purpose of generating your favourite development enviroment, such as: Visual Studio on Windows, Xcode on MacOs and Makefile to use whatever you like (vim, nano, Visual Studio Code, emacs, etc.)

To generate your enviroment just write in your terminal/console

```bash
$ premake5 your_enviorment
```

For more information please check the [premake documentation page](https://premake.github.io/docs/Using-Premake/#using-premake-to-generate-project-files)

## Project configuration

This project has 3 configurations. These are:

- Debug
- Release
- Dist

### Debug

This is known to every developer that this configuration includes the project's symbols into the executable and use a debugger to know what is wrong with the project. It's quite slow and bigger in size just so you can catch the little thing that the compiler did not catch.

### Release

This is a version that dosen't include any symbols and it's just like a car when you want to buy one, a test drive. With this configuration you just check if it's optimally optimized as it simulates a distribution work, not at it's fullest because it has to be compiled faster, hence the "test drive" statement.

### Dist

As I've said before, this is the **dist**ribution configuration, no longer a test drive. This is a stable, optimized and quite compact version of this project. Basically, if it's ready to run and has no problems it is being tested and if the build passes the tests (these being programmed tests or manual), the project gets packaged and **dist**ributed for different users to enjoy the game/project.

## Compiling the game

### Linux

To compile this project you must use Makefile.

First run:

```bash
premake5 gmake2
```

To generate the Makefile.

After, you need to run:

```bash
make config==your_desired_configuration all
```

Or, if you're confused. You can run: 

```bash
make help
```

### Windows

It's really-really-really easy. Just run (in cmd) the following command:

```bash
premake5 vs2022
```

Or the version you are using of Visual Studio. (vs2013, vs2010, etc.)

Please check the [premake documentation page](https://premake.github.io/docs/Using-Premake/#using-premake-to-generate-project-files) for more information.


### MacOs

Yeah... I don't really use a mac. All I can say is to run:

```bash
premake5 xcode4
```

I'm sorry for you. Really. You could've used windows imo. Or if you know how to use the terminal, enough to just install a package and navigate through it, you could've just purchase any random laptop and install a linux distribution. Even Ubuntu.

I'm truly sorry for you. May God give you peace in your troubled mind.


## Where's the binary/executable located?

It's in {project's directory/folder}/bin/{Your configuration}/Game/

I hope it was helpful 
![][smile.png]

# License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

In jurisdictions that recognize copyright laws, the author or authors of this software dedicate any and all copyright interest in the software to the public domain. We make this dedication for the benefit of the public at large and to the detriment of our heirs and successors. We intend this dedication to be an overt act of relinquishment in perpetuity of all present and future rights to this software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to https://unlicense.org
