# chd2iso
A simple bash script to bulk uncompress .chd files to .iso files.
Created in wsl but should work on OSX, and proper linux (assuming you can install chdman)

1. Install chdman: (apt install chdman)
2. Run script: `./convert_chd_to_iso.sh <directory_path_that_holds_chd_files>`
    1. Example: `./convert_chd_to_iso.sh ~/ps2/`
3. ISO files are placed in the iso directory with in the directory you target (`~/ps2/iso/CD/ or ~/ps2/iso/DVD/` based on size of the iso).
4. The .chd file gets moved to ./processed when iso has been extracted(`~/ps2/processed/` in this example. I'll leave cleaning this directory up to you).
5. Once all isos have been extracted you can use them on your ps2 (in this example something like OPL or MMCE enabled OPL from a MemCard Pro 2)

