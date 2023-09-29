# Circuits

## Introduction

**Circuits** is an electronic circuit simulator that runs in the browser.
It was originally written by Paul Falstad as a Java Applet.
It was adapted by Iain Sharp to run in the browser using GWT.
It was modified with several changes by Carlos Pardo Martín.

For a hosted version of the application see:

* Carlos' Page: [https://www.picuino.com/circuits/](https://www.picuino.com/circuits/)
* Paul's Page: [http://www.falstad.com/circuit/](http://www.falstad.com/circuit/)
* Iain's Page: [http://lushprojects.com/circuitjs/](http://lushprojects.com/circuitjs/)

Thanks to: Edward Calver for 15 new components and other improvements;
Rodrigo Hausen for file import/export and many other UI improvements;
J. Mike Rollins for the Zener diode code; Julius Schmidt for the spark
gap code and some examples; Dustin Soodak for help with the user interface
improvements; Jacob Calvert for the T Flip Flop; Ben Hayden for scope
spectrum; Thomas Reitinger, Krystian Sławiński, Usevalad Khatkevich,
Lucio Sciamanna, Mauro Hemerly Gazzani, J. Miguel Silva, and Franck Viard
for translations; Andre Adrian for improved emitter coupled oscillator;
Felthry for many examples; Colin Howell for code improvements; Carlos Pardo 
Martín for several changes and improvements.

LZString (c) 2013 pieroxy.

## Building the web application

The web application can be compiled using Apache ant.
Just use _ant-build.bat for compiling in Windows environment.
ant build for compiling in Linux environment.

Change main location of the project in build.xml before compiling.


## Embedding

You can link to the full page version of the application using the link shown above.

If you want to embed the application in another page then use an iframe with the src being the full-page version.

You can add query parameters to link to change the applications startup behaviour. The following are supported:
```
.../circuitjs.html?cct=<string> // Load the circuit from the URL (like the # in the Java version)
.../circuitjs.html?ctz=<string> // Load the circuit from compressed data in the URL
.../circuitjs.html?startCircuit=<filename> // Loads the circuit named "filename" from the "Circuits" directory
.../circuitjs.html?startCircuitLink=<URL> // Loads the circuit from the specified URL. CURRENTLY THE URL MUST BE A DROPBOX SHARED FILE OR ANOTHER URL THAT SUPPORTS CORS ACCESS FROM THE CLIENT
.../circuitjs.html?euroResistors=true // Set to true to force "Euro" style resistors. If not specified the resistor style will be based on the user's browser's language preferences
.../circuitjs.html?IECGates=true // Set to true to force IEC logic gates. If not specified the gate style will be based on the user's browser's language preferences
.../circuitjs.html?usResistors=true // Set to true to force "US" style resistors. If not specified the resistor style will be based on the user's browser's language preferences
.../circuitjs.html?whiteBackground=<true|false>
.../circuitjs.html?conventionalCurrent=<true|false>
.../circuitjs.html?running=<true|false> // Start the app without the simulation running, default true
.../circuitjs.html?hideSidebar=<true|false> // Hide the sidebar, default false
.../circuitjs.html?hideMenu=<true|false> // Hide the menu, default false
.../circuitjs.html?editable=<true|false> // Allow circuit editing, default true
.../circuitjs.html?positiveColor=%2300ff00 // change positive voltage color (rrggbb)
.../circuitjs.html?negativeColor=%23ff0000 // change negative voltage color
.../circuitjs.html?selectColor=%2300ffff // change selection color
.../circuitjs.html?currentColor=%23ffff00 // change current color
.../circuitjs.html?mouseWheelEdit=<true|false> // allow changing of values by mouse wheel
.../circuitjs.html?mouseMode=<item> // set the initial mouse mode.  can also initially perform other UI actions, such as opening the 'about' menu, running 'importfromlocalfile', etc.
.../circuitjs.html?hideInfoBox=<true|false>
```
The simulator can also interface with your javascript code.  See [war/jsinterface.html](http://www.falstad.com/circuit/jsinterface.html) for an example.

## Building an Electron application

The [Electron](https://electronjs.org/) project allows web applications to be distributed as local executables for a variety of platforms. This repository contains the additional files needed to build circuitJS1 as an Electron application.

The general approach to building an Electron application for a particular platform is documented [here](https://electronjs.org/docs/tutorial/application-distribution). The following instructions apply this approach to circuit JS.

To build the Electron application:
* Compile the application using GWT, as above.
* Download and unpack a [pre-built Electron binary directory](https://github.com/electron/electron/releases) version 9.3.2 for the target platform.
* Copy the "app" directory from this repository to the location specified [here](https://electronjs.org/docs/tutorial/application-distribution) in the Electron binary directory structure.
* Copy the "war" directory, containing the compiled CircuitJS1 application, in to the "app" directory the Electron binary directory structure.
* Run the "Electron" executable file. It should automatically load CircuitJS1.

Known limitations of the Electron application:
* "Create short URL" on "Export as URL" doesn't work as it relies on server support.

Thanks to @Immortalin for the initial work in applying Electron to CircuitJS1.


## License

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
