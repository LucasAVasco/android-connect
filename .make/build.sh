#!/bin/bash


# Changes directory to 'interface/'
cd interface/

# Shebang line
cat main.py | sed -n '1p' > android-connect-pygtk

# Adds layout
echo -e '\n\nlayout =\\\n"""' >> android-connect-pygtk
cat layout.glade >> android-connect-pygtk
echo '"""' >> android-connect-pygtk

# Adds 'main.py' file
cat main.py | sed -n '2,$p' >> android-connect-pygtk

# Changes 'builder.add_from_file("layout.glade")' to 'builder.add_from_string(layout)'
sed -i 's/^builder.add_from_file.*$/builder.add_from_string(layout)/' android-connect-pygtk

# Uses globally installed 'android-connect' script
sed -i 's/\.\.\/android-connect/android-connect/g' android-connect-pygtk

# Makes 'android-connect-pygtk' executable
chmod +x android-connect-pygtk

# Returns to main directory
cd '../'
