# Package

version          = "1.2.2"
author           = "WilliamDraco"
description      = "GFF <-> NWNT Converter (NeverWinter Nights Text)"
license          = "MIT"
srcDir           = "src"
installExt       = @["nim"]
namedBin["nwnt"] = "nwn_nwnt"


# Dependencies

requires "nim >= 1.4.0"
requires "neverwinter >= 1.4.0"
requires "docopt >= 0.6.8"
