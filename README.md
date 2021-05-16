# Android Connect


Interfaces to connect a Android device with a linux desktop. Uses 'scrcpy' and 'adb'. Have a CLI interface: 'android-connect'; and a GUI interface: 'android-connect-pygtk'.


## Tools:
- Connect to an Android device with USB
- Connect to an Android device over WIFI


## Prerequisites:
> Enter _Dveloper Settings_ in your Android device and enable _USB Debugging_.


## Dependencies:
- Python 3
- Gtk
- gobject-introspection (for python)
- scrcpy
- adb


## Installation dependencies:
- Make
- Bash
- Sed


## Installation:

### Local
```bash
git clone https://github.com/LucasAVasco/android-connect.git
cd android-connect
make install-locally

```

### Root
```bash
git clone https://github.com/LucasAVasco/android-connect.git
cd android-connect
sudo make install

```


---
## License
[MIT](https://choosealicense.com/licenses/mit/)

 Copyright (c) 2021 Lucas de A. Vasco
