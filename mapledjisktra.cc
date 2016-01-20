#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <sstream>

using namespace std;
const int infinity = 1 << 30;



int main (int argc, char *argv[]) {
// variables for speed of character, coordinates, etc.


int characterX, characterY; // current location of the character
int characterSpeed;	// the character's speed %: this script works best when the character's speed is lowest
// since there is some lag in connection with server





string input; // file input

int desiredX, desiredY; // desired coordinates to get to


// these values depend on the specific MAP ----------------------------------------------------------
vector<vector<int>> adjMatrix;
vector<vector<int> > adjDirections;
int numOfVertices;
int length;

/* what defines a node/vertex? pretty much any rope, edges of platforms that characters CAN JUMP BETWEEN,
take in the name of the map in the command line argument, and initialize the graph appropriately 
the adjacency matrix should consist of entries that store two ints: one for weight the other for direction
(up: 0 down: 1 left: 2 right: 3)*/






// ----------------- this code is purely for extracting the coordinate numbers from the text file, it's quite messy-------------


ifstream myfile ("gameinfo.txt"); // set output file of Volatile Trainer to be this file
// make sure that output is limited to character coordinates, anticipated coordinates

if (myfile.is_open()) {
	while (getline (myfile, input)) {
		cout << "The line " << input << " has been read.	" << endl;
	}
	myfile.close();
}

else {
	return 0;
}

int index = input.find(")"); // the first pair of coordinates output terminates with ), followed by a space then the anticipated coordinates
index += 4;
int index2 = (input.substr(index)).find(",");
stringstream ss((input.substr(index, index2)));
ss >> desiredX;
//cout << desiredX << endl;
stringstream ss2((input.substr((index+index2+2), (input.length()-index-index2-3))));
ss2 >> desiredY;
//cout << desiredY << endl;

//--------------------------------------------desiredX and desiredY now hold the points--------------------------------



// djikstra's algorithm, not optimized that much (runs in ^2 time)
length = 10;
int source;	// vertex # in adjacency matrix
int destination; // --- need updates for the recent game overhaul, will rely on hard coding these values for now



vector<int> visited(length);
vector<int> distance(length);
vector<int> previous(length); // this is the parent array for
// previous node from the optimal path; need it in order to recall the actual shortest path

for (int i = 0; i<length; i++) {
	distance[i] = infinity;
}

for (int i =0; i<length; i++) {
	previous[length] = -5;
}

distance[source] = 0;

for (int i =0; i<n; i++) {
	int current = -1;
	for (int j = 0; j< n; j++) {
		if (!(visited[j])){
			break;
		}
		if (current == -1 || distance[j] < distance[current]) {
			current = j;
		}
	}

	visited[current] = true;
	for(int j = 0; j<n; j++) {
		int pathLength = distance[current] + adjMatrix[current][j];
		if (pathLength < distance[j]) {
			distance[j] = pathLength;
			previous[j] = current;
		}
	}
}

int shortestPath = distance[destination];
vector<int> optimalPath;
while (previous[destination] != -5) {
	optimalPath.push(destination); // push onto stack
	destination = previous[destination];
}
optimalPath.push(source); // iterate from back to front to get the complete shortest path!

cout << infinity << endl;






system("pause"); // for testing purposes

}


// determine fastest path to use by applying djikstra's algorithm using character coordinates as source and desired vertex as end

// output path/directions (and coordinates?) to file for autoit, and any minor movement adjustment that has to be made at the end will be made
// (this c++ script should get the character to either left or right of the object: autoit script will handle
// the minor left/right adjustments that need to be made if the desired coordinates does not align exactly
// with a node)



// if unexpected failure, reset position on map by going all the way to the bottom left of the map, and restarting


