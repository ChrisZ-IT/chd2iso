# chd2iso
A script to bulk uncompress .chd files to .iso files.

1. Install chdman: (apt install chdman)
2. Run script: `convert_chd_to_iso.sh <directory_path_that_holds_chd_files>`
    1. Example: `convert_chd_to_iso.sh ~/ps2`
3. iso files are placed in the iso directory with in the directory you target (`~/ps2/iso/` in this example).
4. the .chd file gets moved to ./processed when iso has been extracted(`~/ps2/processed/` in this example. I'll leave cleaning this directory up to you).
5. Once all isos hae been extracted you can use them on your ps2 (in this example something like OPL or MMCE enabled OPL from a MemCard Pro 2)

