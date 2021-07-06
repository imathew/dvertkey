# dvertkey
An AutoHotKey script to send the qwerty equivalent of a dvorak key when the ctrl, alt, and/or win keys are also pressed.

### Why
Many common hotkeys are defined based on their useful position on the qwerty keyboard, such as cut-copy-paste next to each other in the bottom left. It's handy to retain this consistent functionality while using dvorak for regular typing, but while this option is available out-of-the-box in macOS, it's not in Windows.

### Why AutoHotKey
There are several good third-party, open-source keyboard layouts for Windows that provide this functionality. However, some applications override the hotkeys, making them less useful. This includes many of Microsoft's own applications, such as all those in the Office suite and SQL Server Management Studio! This script works in more situations.

Dvertkey only converts from dvorak to qwerty, but it can be configured to detect that the appropriate layout is in use. This means that the script does not have to be disabled if you switch temporarily to qwerty or another layout.

### Requirements
* Windows
* [AutoHotKey](https://www.autohotkey.com)
* A dvorak keyboard layout installed and in use

### Installation
* Save dvertkey.ahk somewhere
* Edit dvertkey.ahk to either:
  * Remove/uncomment the 'Selective layout' section (if you only ever use dvorak),
  * Or, update the "dvorak" variable, using the guide within the script to find your dvorak layout ID
* Run the script as desired
  * You could compile it and put a shortcut to it in your startup folder

### Qwertdvert
A later addition is qwertdvert.ahk, which inverts the dvertkey pattern, and can be used instead.
It assumes a qwerty layout is active in Windows, and sends the Dvorak equivalent of a Qwerty key, unless the ctrl, alt, and/or win keys are pressed.
This is a much simpler implementation for those who would rather turn the script on and off as required, rather than switching between layouts.
