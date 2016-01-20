# MaplePlay
perform basic functions (ex. trading, training) in Maplestory
<br>
MaplePlay is a collection of scripts that play for you in the online game, Maplestory. They are run in conjunction with a program called Volatile Trainer, which supplies game information to the scripts. For example, Volatile Trainer can save an item's coordinates to a text file, and the scripts can read the information and guide the character to those coordinates using the shortest possible path. This is achieved by converting the map data into a graph and implementing Dijkstra’s algorithm. Other features include training and searching for lowest market prices. Commands are sent using AutoIt.

In order to use the shortest path script, set Volatile Trainer's output data to include character coordinates and target location. Output to the same directory as the scripts. Enter stage 1 of Zakum's quest and run Volatile Trainer alongside the C++ file.

All of the scripts in the "other scripts" folder were purely for input testing purposes. They are extremely simple, and frankly did not require any real coding work.
This mapledjikstra script is the main feature of this project.

***Some scripts are not yet included, as I am currently trying to fix them after the recent Maple overhaul patch.
