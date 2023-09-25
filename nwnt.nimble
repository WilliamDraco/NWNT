# Package

version          = "1.5.1"
author           = "WilliamDraco"
description      = "GFF <-> NWNT Converter (NeverWinter Nights Text)"
license          = "MIT"
srcDir           = "src"
installExt       = @["nim"]
namedBin["nwnt"] = "nwn_nwnt"


# Dependencies

requires "nim >= 1.6.0"
requires "neverwinter >= 1.6.3"
requires "docopt >= 0.7.1"
