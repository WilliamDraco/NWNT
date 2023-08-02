# v1.4.1
- add 'Orientation' nodes to the anti-sign-flipping on 180 degrees due to floating point math.

# v1.4.0
- Implement optional arguement for indenting each 'level', making the resultant nwnt cascade neatly and fold in most editors by default.
- Validity of the above approach is ongoing argument ;)

# v1.3.3
- Correct 'Bearing' sign flipping due to floating point math when Bearing == 180 degrees (Pi/-Pi Radians)

# v1.3.2
- Bugfix in the 1.3.2 EOL whitespace handling

# v1.3.1
- Improve EOL handling of whitespace (in and out of nwnt) for nul-values (Sorry for large diffs as a result. Make sure all contributors are either before or after this version to prevent flip-flopping on the diffs)
- handle gff formats with varying magic-byte datatype lengths (future proofing, don't think any exist but 'just in case')

# v1.3.0
- Change to write/read empty GffLists as some unexpected behaviour when ignored.

# V1.2.2
- change binary name to nwn_nwnt for consistency with nim tools

# V1.2.1
- Syntax error handling over nwnt parsing
- implement '--version' arg

# V1.2.0
- sort nwnt files alphabetically (thanks to @squattingmonk for the assist)

# V1.1.0
- implement float precision limit (default to 4)
- cleanup of invoking parameters

# V1.0.0
- Initial release
