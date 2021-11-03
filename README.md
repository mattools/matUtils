# matUtils
A (small) collection of General purpose utility functions for Matlab.

To install, either clone the project, or download the latest release. Then add the path of the library to the Matlab path.

List of functions
---

### File Management

* **ensureDirExists**: check if the specified directory exists, and if not, creates it.
* **readFileList**: read a list of files from a path and a pattern.

### Statistics

* **cv**: compute the Coefficient of variation of the input data
* **histo**: display an histogram of the integer values within the input array.
* **sem**: computes the standard error of the mean (or Standard Error) of the input data.

### Set Manipulation

* **getAllSubsets**: generate a cell array containing all subsets of the given input.
* **randomSubset**: generate a random subset of the input data.
