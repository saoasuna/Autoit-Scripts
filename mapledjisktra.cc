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


// --- comments from 21.01.16
// since this is a project with two years ago, i'm actually having a bit of trouble remembering what i was doing
// this seems to be done with adjacency matrix and array, i might plan to replace it with adjacency lists and fibonacci heap
// for now i'll just comment the parallel of what i'm doing in terms of the adjacency matrix method

for (int i = 0; i<length; i++) {
	distance[i] = infinity;	// standard, set all distances to infinity
}

for (int i =0; i<length; i++) {
	previous[length] = -5;	// the predecessor array(?)
}

distance[source] = 0; // source set to 0

for (int i =0; i<n; i++) {
	int current = -1;
	for (int j = 0; j< n; j++) {
		if (visited[j]) { 
			continue;
		}
		if (current == -1 || distance[j] < distance[current]) { // this is similar to the idea of a min priority queue?
			current = j;
		}
	}

	visited[current] = true;
	for(int j = 0; j<n; j++) {
		int pathLength = distance[current] + adjMatrix[current][j]; // "relaxation" of the paths
		if (pathLength < distance[j]) {
			distance[j] = pathLength;
			previous[j] = current; // if j's shortest path was updated, then the current is the parent of vertex j
		}
	}
}

int shortestPath = distance[destination];
vector<int> optimalPath;
while (previous[destination] != -5) {
	optimalPath.push(destination); // load vector
	destination = previous[destination];
}
optimalPath.push(source); // iterate from back to front to get the complete shortest path!


ofstream myfile;
myfile.open("path.txt");

if (optimalPath.length() > 0) {

	for (int i = optimalPath.length() - 1; i>= 0; i--) {
	if (myfile.is_open()) {
		myfile << optimalPath[i];
	}
}

}

else {
	myfile << "0";
}



//system("pause"); // for testing purposes
return 0;

}


// determine fastest path to use by applying djikstra's algorithm using character coordinates as source and desired vertex as end

// output path/directions (and coordinates?) to file for autoit, and any minor movement adjustment that has to be made at the end will be made
// (this c++ script should get the character to either left or right of the object: autoit script will handle
// the minor left/right adjustments that need to be made if the desired coordinates does not align exactly
// with a node)

