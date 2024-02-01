![Game Screenshot](imgs/readme_topimage.png)

---

# SW Addon Lua Testing

## 📚 Overview
This repository is an addon I use to test Stormworks: Build and Rescue's Addon Lua, as well as my [addon framework](https://github.com/Cuh4/AuroraFramework).

Feel free to `git clone`, or even contribute.

## ❓ Requirements
- **Python 3.12.1+**
- **Stormworks: Build and Rescue** (game)

## 💻 Setup
1) Run `git clone "https://github.com/Cuh4/SWAddonLuaTesting.git"`
2) Optionally, change the addon name in `playlist.xml` to whatever you desire.
3) Run `py combiner.py` to merge all of the code into a `script.lua` file. Feel free to stop it with `CTRL + C` once it has been created.
4) Run `sync.bat`. This will effectively continuously clone the addon into `%appdata%/Stormworks/data/missions`, allowing you to use this addon in-game regardless of what directory the addon is in.
5) Create a save with the addon enabled, and have fun with the addon.

## ✨ Credit
- [**Cuh4**](https://discord.com/users/1141077132915777616) ([GitHub](https://github.com/Cuh4)) 