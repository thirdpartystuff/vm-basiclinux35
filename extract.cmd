@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" %* && exit /B 0 || exit /B 1

pour.chdir(SCRIPT_DIR)

ext2read.exclude(
    "/etc/Xconfig",
    "/root/.mc/history",
    "/root/.bash_history",
    "/tmp/.X11-unix/X0",
    "/tmp/chime.mp3",
    "/tmp/console_autorun.sh",
    "/var/X11R6/.skip"
    )

ext2read.dump_vhd(".disk.vhd", "disk_root")
