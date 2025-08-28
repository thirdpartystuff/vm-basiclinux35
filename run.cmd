@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" && exit /B 0 || exit /B 1

pour.chdir(SCRIPT_DIR)

dofile('config.lua')

dosbox.run();
