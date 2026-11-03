WipEout Omega Collection for PC (wipeout_pc)
============================================

Linux AppImage. An early version of a native PC port: menus and races (HD and 2048)
play; not every event type has been tested yet.

No game files are included. You need your own copy of WipEout Omega Collection, dumped
from your own PS4, as a folder containing eboot.bin, sce_module and sce_sys. Tested:
CUSA07671 (US), version 01.00 with update 01.07, merged into one folder. CUSA05670 (EU)
is listed but untested.

Requirements
- x86-64 Linux with glibc 2.39 or newer (SteamOS 3.7+, Bazzite/Fedora, Debian 13,
  Ubuntu 24.04 or newer).
- A 64-bit processor with AVX: Intel Sandy Bridge (2011) or newer, AMD FX or newer.
- A graphics card with Vulkan 1.3 and an up-to-date driver. The AppImage bundles its
  libraries; the Vulkan loader and driver, X11/Wayland and the audio stack come from
  the system.
- No Python installation is needed: the launcher is inside the AppImage.

Starting
1. Put the AppImage anywhere you can write, for example ~/Games/wipeout.AppImage.
2. Make it executable and run it:
       chmod +x wipeout-x86_64.AppImage
       ./wipeout-x86_64.AppImage
3. Click "Choose the game folder", then Browse... next to Game folder, and select the
   folder with eboot.bin.
4. Back on Home, adjust the quick settings if you like, then click PLAY. The first start
   takes a little longer while the game image is prepared.
5. Start the game without the launcher with:
       ./wipeout-x86_64.AppImage --play

The Advanced page can add a menu entry and a desktop shortcut, and add the game to
Steam as a non-Steam shortcut (with its icon and pictures). GameMode and MangoHud are
offered when they are installed. The AppImage clears Steam's LD_PRELOAD overlay before
the launcher starts, so adding it to Steam works on SteamOS as it does on a desktop.

Settings
- Frame rate: the game runs on real time, so it can go above 60 FPS (up to 240). The
  Frame rate limit on Home sets the cap.
- Render resolution: 1920x1080 by default. 2560x1440, 3840x2160 (4K), 2560x1080,
  3440x1440 and 5120x2160 are in the port's in-game menu, under Performance, and apply
  on the next start. The HUD and menus stay 16:9 in the middle of wider screens. 4K and
  5120x2160 need a lot of video memory.
- Your own music: the launcher's Music page shows the music folder and the songs in it:
  MP3, OGG, FLAC, WAV or M4A. They play instead of the game's music. In the game, Insert
  (or R3 + L2) > Music picks a song, skips, switches shuffle and your music off, and sets
  the music volume.

While playing
- Insert on the keyboard, or R3 + L2 on the controller, opens the port's menu: image,
  performance and the performance overlay.
- Saved pipelines load in the background; a small note shows the progress. New areas can
  stutter the first time while their shaders compile.
- Keyboard keys: Game -> Controls in the launcher.

Data
- Saves, music, shader cache and the log: ~/.local/share/gow3 (or the GOW3_DATA_DIR
  folder when you set one). Keep it when updating.
- Settings: gow3.ini in that folder; launcher options in ~/.config/wipeout-launcher.
- Generated files (prepared game image, patches): out/ in that folder.

Updating
Download the new AppImage from the releases page and replace this file. Your saves,
settings, mods and music stay in ~/.local/share/gow3. Check for updates (next to PLAY)
opens the release page when a newer version is out; the download replaces this one file.

Known issues
- PS4 Pro mode is experimental: Graphics -> PS4 Pro mode in the launcher.
- Some event types and tracks have not been tested.
- The first start of a new area can stutter while its shaders compile.

Problems
- The game does not open: check Advanced -> Log, and send ~/.local/share/gow3/user/last_run.log
  with your report.
- The AppImage does not start: run it from a terminal to see the error, and check that
  your system has Vulkan 1.3 (vulkaninfo) and glibc 2.39 or newer (ldd --version).
- Report problems here, with your distro, GPU, driver, CPU and the log:
  https://github.com/AbdelmoumenDeghbouche/wipeout_pc/issues

Some file names (gow3-probe, gow3.ini, GOW3_* variables) still come from the God of War III
port this project is based on.

This project is not affiliated with Sony Interactive Entertainment, XDev, Clever Beans or
EPOS Game Studios. WipEout is a trademark of Sony Interactive Entertainment.
