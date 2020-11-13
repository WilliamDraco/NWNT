# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import nwnt_lib/gffnwnt
import os, streams, docopt
import neverwinter/gff

const GffExtensions* = @[
  "utc", "utd", "ute", "uti", "utm", "utp", "uts", "utt", "utw",
  "git", "are", "gic", "mod", "ifo", "fac", "dlg", "itp", "bic",
  "jrl", "gff", "gui"
]

when isMainModule:
  let args = docopt"""
  Convert gff data to the custom output language 'nwnt'.

  Supports input of either .nwnt or .gff data, and outputs the other.

  Usage:
    nwnt <inputfile> [-o outputfile]
    nwnt -h | --help
    nwnt --version

  Options:
    -i        path to the input file (with extension)

    -o FILE   optional path to the output file (without extension)
              Will default to input directory

    -h         Show this screen
  """

  let inputfile = $args["<inputfile>"]
  let informat = inputfile.splitFile.ext[1..^1]
  var outputfile  = $args["-o"]
  if outputfile == "nil":
    outputfile = inputfile #extension added later so these aren't identical

  var state: GffRoot

  if informat in GffExtensions:
    outputfile.add(".nwnt")

    let input  = openFileStream(inputfile)
    let output = openFileStream(outputfile, fmWrite)
    state = input.readGffRoot(false)
    output.toNwnt(state)

  elif informat == "nwnt":
    if(outputfile[^5..^1] == ".nwnt"):
      outputfile = outputfile.splitFile.dir & outputfile.splitFile.name

    let input  = openFileStream(inputfile)
    let output = openFileStream(outputfile, fmWrite)
    state = input.gffRootFromNwnt()
    output.write(state)

  else:
    quit("This is not a supported format")
