#!/bin/bash
# `sleep 1` is used to make sure the packages are installed and no race condition, 
# otherwise throws (OS Error: No such file or directory, errno = 2)
# Directory path
DIR="packages/djangoflow_openapi/lib/src/model"

# Annotation and import to add
ANNOTATION="@CopyWith()\n@JsonSerializable("
IMPORT="import 'package:copy_with_extension/copy_with_extension.dart';"

# Loop through the files in the directory
for file in $DIR/*.dart; do
  # Get the file name without the path
  filename=$(basename "$file")

  # Check if the file contains @JsonSerializable(
  if grep -q "@JsonSerializable(" "$file"; then
    # Add the CopyWith annotation
    sed -i '' "s/@JsonSerializable(/$ANNOTATION/" "$file"

    # Add the import as the first line of the file
    sed -i '' "1i\\
$IMPORT
" "$file"

    echo "Updated $filename"
  fi
done

# Install copy_with_extension and copy_with_extension_gen
pushd "packages/djangoflow_openapi" > /dev/null
which dart
dart pub add copy_with_extension
dart pub add copy_with_extension_gen --dev
dart pub get
sleep 1
dart run build_runner build --delete-conflicting-outputs --verbose
popd > /dev/null

echo "Modification completed."
