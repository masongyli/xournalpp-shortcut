# A xournal++ shortcut plugin
This is a plugin for Xournal++ that provides shortcuts for changing tools, colors, and other actions.

## Installation
Save the project as a subfolder in Xournal++'s config folder's plugins folder.

| System                   | Xournal++'s config folder's plugins folder.       |
| ------------------------ | ------------------------------------------------- |
| Linux (.deb installer)   | `~/.config/xournalpp/plugins`                     |
| MacOS (.app-bundle)      | `~/.config/xournalpp/plugins`                     |
| Windows (.exe installer) | `C:\Users\<user>\AppData\Local\xournalpp\plugins` |

For convenience, you can use the following commands to install the plugin.

### Linux (.deb installer) and MacOS (.app-bundle)
Run the following command in the terminal to install the plugin.
```bash
git clone https://github.com/masongyli/xournalpp-shortcuts.git ~/.config/xournalpp/plugins/Shortcuts
```

After that, the file path of `main.lua` should be `~/.config/xournalpp/plugins/Shortcuts/main.lua`

### Windows (.exe installer)
Run the following command in Git Bash to install the plugin.
```bash
git clone https://github.com/masongyli/xournalpp-shortcuts.git ~/AppData/Local/xournalpp/plugins/Shortcuts
```

or run the following command in cmd to install the plugin.
```cmd
git clone https://github.com/masongyli/xournalpp-shortcuts.git %homedrive%%homepath%\AppData\Local\xournalpp\plugins\Shortcuts
```

## Default shortcuts
The following shortcuts can be customized. See [How to cutomize shortcuts](#how-to-customize-shortcuts)

### Change tool
| Shortcut | Action            |
| -------- | ----------------- |
| `f`      | free hand drawing |
| `d`      | eraser            |
| `s`      | rectangle select  |
| `v`      | vertical space    |
| `j`      | text              |

### Change color
| Shortcut | Action            |
| -------- | ----------------- |
| `w`      | color black       |
| `e`      | color blue        |
| `r`      | color red         |
| `b`      | color green       |
| `1`      | color brown       |
| `2`      | color purple      |
| `3`      | color light blue  |
| `4`      | color light green |

### Others
| Shortcut   | Action                      |
| ---------- | --------------------------- |
| `t`        | insert page after           |
| `<Shift>t` | insert page before          |
| `q`        | delete page                 |
| `x`        | scroll down                 |
| `z`        | scroll up                   |
| `<Shift>x` | go to next page             |
| `<Shift>z` | go to previous page         |
| `a`        | undo                        |
| `<Shift>a` | redo                        |
| `c`        | delete the selected objects |

## How to customize shortcuts
Edit "accelerator" in `main.lua`

### Example
Change the shortcut of "free hand drawing" from "f" to "p"

from
```lua
function initUi()
  app.registerUi({["menu"] = "Hand drawing", ["callback"] = "use_hand_drawing", ["accelerator"] = "f"});
  ...
end
```

to
```lua
function initUi()
  app.registerUi({["menu"] = "Hand drawing", ["callback"] = "use_hand_drawing", ["accelerator"] = "p"});
  ...
end
```

Note: the "..." in the above code snippets means the omitted code

## Reference from Xournal++
- [Building Plugins](https://xournalpp.github.io/guide/plugins/plugins/#installation-folder)
- [API list (v1.2.3)](https://github.com/xournalpp/xournalpp/blob/v1.2.3/src/core/plugin/luapi_application.h) 
- [UI Action list (v1.2.3)](https://github.com/xournalpp/xournalpp/blob/v1.2.3/src/core/control/Control.cpp#L382-L1083)
