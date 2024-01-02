![Game Screenshot](imgs/readme_topimage.png)

---

# SW Addon Lua Testing

## 📚 Overview
This repository is an addon I use to test Stormworks: Build and Rescue's Addon Lua, as well as my [addon framework](https://github.com/Cuh4/AuroraFramework).

Feel free to `git clone`, or even contribute.

## ❓ Requirements
- **Python 3.11+**
- **Stormworks: Build and Rescue** (game)

## 💻 Setup
1) Run `git clone https://github.com/Cuh4/SWAddonLuaTesting.git`
2) Create a `playlist.xml` file containing the content below.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<playlist file_store="4" name="Addon Name Here">
    <locations>
        <locations/>
    </locations>
</playlist>
```
3) Run `py combiner.py` (or run `combiner.bat`) to create a `script.lua` file. Feel free to close it once it has been created.
4) Create a save with the addon enabled, and test away.

## ✨ Credit
- [**Cuh4**](https://discord.com/users/1141077132915777616) ([GitHub](https://github.com/Cuh4)) 