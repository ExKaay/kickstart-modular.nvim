# The After directory
This dir is used for configs that need to run after the initialization of all others.
Used for example to override bufferoptions for specific filetype (ftplugin directory) or to override other options that may be set by plugins.

# after/ftplugins
In here are lua files that get sourced when opening specific filetypes.
The naming convention is `[filetype].lua` where the filetype is the one shown in the bottom line _not neccessarily the extension_
