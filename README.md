# ISO_Concatenator
Simple batch script for concatenating ISO files in Windows, Found this to be handy as when ripping ROMs from devices only compatible with FAT32, often they come in parts due to the 4Gb max file restriction.

### Usage
Place ISO parts in same dir `JOIN_ISOs.bat` make sure ISO parts are named in the following format `FILENAME.partX.iso` where `X` is the part number.

Execute `JOIN_ISOs.bat` (can just click on it in Windows File Explorer)

The script will create two directories `ISOs` and `ISO_Parts` and create/movefiles to there respective directories`