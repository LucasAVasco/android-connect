#!/usr/bin/env python3


"""GUI to connect android to a desktop with scrcpy."""


# Gobject-introspection
import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk

# Imports functions and methodes
from subprocess import run


class Handler:
    """Interface methodes."""

    def __init__(self, builder):
        """Configure the Handler."""
        self.builder = builder

    def close_window(self, widget=0):
        """Close all windows and exit."""
        Gtk.main_quit()

    def connect(self, widget=0):
        """Connect to Android."""
        run(["../android-connect", "--connect"])

    def config_wifi(self, widget=0):
        """Configure the wifi connection."""
        run(["../android-connect", "--config-wifi"])

    def stop_connection(self, widget=0):
        """Stop the wifi connection."""
        run(["../android-connect", "--stop-connection"])


# Creates the builder
builder = Gtk.Builder()
builder.add_from_file("layout.glade")
builder.connect_signals(Handler(builder))

# Shows the window
window = builder.get_object("main-window")
window.show_all()

# Gtk update loop
Gtk.main()
