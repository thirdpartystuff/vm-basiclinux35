@"%~dp0tools\pour_wrapper_windows.exe" --script "%0" %* && exit /B 0 || exit /B 1

pour.invoke("config.lua")
dosbox.run();
