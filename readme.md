# Introduction

This is my attempt to code the intro cutscenes to **Mario Hockey** created by [2bitcrook](http://2bitcrook.tumblr.com/). This it the original intro:

![Mario Hokey Intro](http://68.media.tumblr.com/5a746f9b37dfb8d702f9e0a5426ed8a5/tumblr_ofvxpghlJr1tjm7rdo1_r1_400.gif)

The original Tumblr post is [here](http://gameboydemakes.tumblr.com/post/152535589132/the-intro-cutscene-to-mario-hockey-truly-fires-you). You can view the You Tube video of this code running [here](https://youtu.be/iEPghfKh2Sk) and a smaller GIF here:

![GIF here](https://media.giphy.com/media/A8my3n0vQS3fy/giphy.gif)

I took the original GIF images and wrote code to reproduce them on an actual Game Boy. This is still a work in progress and so far I have only implemented the first six cut scenes. I have attempted to reproduce them as faithfully as I can but unfortunately although the demake tries to follow all Game Boy limitations on hardware it doesn't take into account limitations on sprites so they can not be reproduced exactly as in the video. 

# Compiling 

You need to have *rgbasm*, *rgblink* and *rgbfix* installed in your system as well as the *make* program. Just type **make** and you should see:


```bash
 $ make
 rgbasm -i inc/ -o main.obj  main.z80
 rgblink -n roms/mariohokey.sym -m roms/mariohokey.map -o roms/mariohokey.gb main.obj
 rgbfix -v -t "Mario Hockey" -p 0 roms/mariohokey.gb
 rm main.obj
```

After that you should have a ROM image in the roms directory with a **.map** and **.sym** table:

```bash
$ ls -l roms/
total 144
-rw-r--r--  1 Cesar  staff  65536 Jan  2 03:19 mariohokey.gb
-rw-r--r--  1 Cesar  staff   2887 Jan  2 03:19 mariohokey.map
-rw-r--r--  1 Cesar  staff   1478 Jan  2 03:19 mariohokey.sym
```

# Copiar al cart

       $ ems-qart
