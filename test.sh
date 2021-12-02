#!/bin/bash

# Command to generate the compilation database file.
bazel build :example_compdb

# Location of the compilation database file.
outfile="$(bazel info bazel-bin)/compile_commands.json"

# [Optional] Command to replace the marker for output_base in the file if you
# did not use the dynamic value in the example above.
output_base=$(bazel info output_base)
sed -i.bak "s@__OUTPUT_BASE__@${output_base}@" "${outfile}"

# The compilation database is now ready to use at this location.
echo "Compilation Database: ${outfile}"