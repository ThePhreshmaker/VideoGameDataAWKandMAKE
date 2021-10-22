# VideoGameDataAWKandMAKE
SHORT DESCRIPTION: Basic AWK program to generate a report of top selling global video games per year from 1980 - 2016. Makefile included to autodownload .csv file and generate report. For CISC 3140 @ CUNY - Brooklyn College

LONG DESCRIPTION: The purpose of this lab (Lab 3) is to gain familiarity with using an online repository (GitHub) to manange files between different users. Additionally, this lab will use AWK programming language to generate a report in the terminal from data inside a .csv file. A Makefile will be included in the repository to allow for easy automated building of the project. The Group portion will require each group member to share their repository links, read each repository Readme file for instructions on how to run the program. Each group member will evaluate each members repository with a evaluation sheet provided by the professor.

OBJECTIVES: Create an AWK program to generate a report from .csv file and create a makefile to autobuild and execute report in the terminal.

MAC OS/ LINUX instructions:
-Download VGData.awk and Makefile from GitHub repository and place in a directory (recommended to have a new directory on Desktop for ease)
-Open terminal (or whatever CLI (Command Line Interface) you prefer to use)
-Navigate to the directory where you placed VGData.awk and Makefile
-In the terminal run : make
-Report will generate in terminal/CLI
  Example on Mac OS:
  
                    *******Download VGData.awk & Makefile into "Lab 3" directory located on Desktop******   
                    Open terminal/CLI
                    username@name-Mac ~ % cd Desktop/"Lab 3"
                    username@name-Mac Lab 3 % make
                    
                    ================= Top Selling Video Games for each Year 1980 - 2016 ==================
                                                   (Platform Specific)
                                               (based on total Global Sales)

                    1980    Asteroids

                    Platform: 2600        	Genre: Shooter         Global Sales (in millions): $4.31
                    ------------------------------------------------------------------------------------
                    *******REPORT CONTINUES*********

WINDOWS INSTRUCTIONS: ***WARNING*** This file is meant to be run in UNIX-like system enviornments. It is recommended to use a linux machine or Mac to run these files, unless you are very familiar with running awk programs in the windows command prompt. The Makefile will also not run directly in windows without advanced manipulation of the file.

If you are a windows user, it is recommended to ssh into a linux machine enviornment or use a runtime enviornment such as Cygwin to emulate UNIX system enviornments natively on Windows. If either of these options are available, then refer to MAC OS/ LINUX instrutions located above.

Class Informtaion:


School: CUNY - Brooklyn College

Class: CISC 3140 Design and Implementation of Large Scale Web Applications 

Year: Fall 2021

Major: Computer Science

