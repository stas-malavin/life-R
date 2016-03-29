# life-R
Conway's Game of Life for R

### Usage:
1. Install R (www.r-project.org), and start it.
(Under Linux the console version is recommended, under Windows -- the GUI version.)
2. Type 'source("Path/to/LIFE_R.R")', press Enter
(under Windows use "\\" as a separator).
3. Type Live(), press Enter.
4. To seed use the mouse. Second tap removes the point.
5. To finish seeding and start the process click the right button (Linux console) or click the right button and choose "Stop" (Windows GUI).
6. To stop the process in the console window press "Ctrl-C" (Linux)
or "Escape" (Windows).
7. To add or remove some points input 'Live()' again, follow 4.

### Arguments:
**n** - Number of rows and columns in the field. Current default is 20. If you change it significantly you may need to adjust 'cex' parameter in the script body manually.

**continue** - If TRUE (default), you may add or remove some points and then continue the last session. Just don't close the graphics window.

**Speed** - Speed of the process. Next cycle comes in 1/Speed seconds.

© S. Malavin, 2015

stas.malavin@openmailbox.org