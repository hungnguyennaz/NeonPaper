# NeonPaper
![image](https://user-images.githubusercontent.com/101444336/177084504-83f74460-52c3-46f1-8feb-7fc3cfa93a42.png)

Fork of 1.12.2 [Dionysus](https://github.com/nopjmp/Dionysus) aimed at improving server performance and exploits fixing for anarchy servers. I don't work on this much because i'm lazy and likely don't know how to code.

## How To Use

NeonPaper uses the same paperclip jar system that Paper uses.

You can download the latest build of NeonPaper by going [here](https://github.com/hungnguyennaz/NeonPaper/actions) (you will need a Github account).

You can also build it yourself.

## Building

Requirements:

- You need `git` installed, with a configured user name and email.
  On windows you need to run from git bash.
- You need `maven` installed
- You need `jdk` 8 installed to compile and `jre` 8+ to run (NeonPaper now can run with `jdk` 17+) 
- Anything else that `paper` requires to build

If all you want is a paperclip server jar, just run `./neonpaper jar`

Otherwise, to setup the `NeonPaper-API` and `NeonPaper-Server` repo, just run the following command
in your project root `./neonpaper patch` additionally, after you run `./neonpaper patch` you can run `./neonpaper build` to build the
respective api and server jars.

`./neonpaper patch` should initialize the repo such that you can now start modifying and creating
patches. The folder `NeonPaper-API` is the api repo and the `NeonPaper-Server` folder
is the server repo and will contain the source files you will modify.

#### Creating a patch

Patches are effectively just commits in either `NeonPaper-API` or `NeonPaper-Server`.
To create one, just add a commit to either repo and run `./neonpaper rb`, and a
patch will be placed in the patches folder. Modifying commits will also modify its
corresponding patch file.

## Servers that using NeonPaper
- [7B27T.ORG](https://7b27t.org)
- [6G6S.ORG](https://ds.6g6s.org)

Icon by [Flaticon](https://www.flaticon.com)
