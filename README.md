# VideoGameDataAWKandMAKE
SHORT DESCRIPTION: Basic AWK program to generate a report of top selling global video games per year from 1980 - 2016. Makefile included to autodownload .csv file and generate report. For CISC 3140 @ CUNY - Brooklyn College

#REPOSITORY CONTENTS

-README.md

    Contains description of repository/contents, Instructions, Example
    
-VGData.awk

    AWK language program to generate a report in the terminal from vgsales.csv file 
    
-Makefile

    Makefile to autorun report in terminal
        Makefile will automatically download vgsales.csv file from another GitHub repository and place in current directory
        Makefile will automatically run awk script in terminal as long as long as you are in the same directory as Makefile & VGData.awk file

-data directory
    
    Contains vgsales.csv file
        This file is automatically downloaded via the Makefile, therefore this is included only to keep all data in the directory

LONG DESCRIPTION: The purpose of this lab (Lab 3) is to gain familiarity with using an online repository (GitHub) to manange files between different users. Additionally, this lab will use AWK programming language to generate a report in the terminal from data inside a .csv file. A Makefile will be included in the repository to allow for easy automated building of the project. The Group portion will require each group member to share their repository links, read each repository Readme file for instructions on how to run the program. Each group member will evaluate each members repository with a evaluation sheet provided by the professor.

OBJECTIVES: Create an AWK program to generate a report from .csv file and create a makefile to autobuild and execute report in the terminal.

# Installation Instructions

MAC OS/ LINUX instructions:

-Download VideoGameDataAWKandMake.zip file from GitHub

-Extract contents of zip file to a directory of your choice

-Open terminal (or whatever CLI (Command Line Interface) you prefer to use)

-Navigate to the directory where you placed VGData.awk and Makefile

-In the terminal run : make

-Report will generate in terminal/CLI

  Example on Mac OS:
  
                    On GitHub in VideoGameDataAWKandMake repository, select green "Code" button and choose "Download Zip" option
                    Unzip files to location of your choice (Recommended to be placed in a folder on Desktop for ease: i.e. Desktop/Lab 3)
                    Verify files have been sucessfully unzipped in folder
                    ***It is recommended to rename the file directory on your desktop to something simpler to aid in navigation in terminal***
                    Open terminal/CLI
                    username@name-Mac ~ % cd Desktop/"Lab 3"
                    username@name-Mac Lab 3 % make
                    (Below is the first entry of report generated by AWK script)
                    ================= Top Selling Video Games for each Year 1980 - 2016 ==================
                                                   (Platform Specific)
                                               (based on total Global Sales)

                    1980    Asteroids

                    Platform: 2600        	Genre: Shooter         Global Sales (in millions): $4.31
                    ------------------------------------------------------------------------------------
                    *******REPORT CONTINUES*********
                    ****Full report will be saved in the current directory as a separate text file****

WINDOWS INSTRUCTIONS: ***WARNING*** These files are meant to be run in UNIX-like system enviornments. It is recommended to use a linux machine or Mac OS machine to run these files, unless you are an advanced user that is very familiar with running awk programs in the windows command prompt. The Makefile will also not run directly in windows without advanced manipulation of the file.

If you are a windows user, it is recommended to ssh into a linux machine enviornment or use a virtual runtime enviornment such as CYGWIN to emulate UNIX system enviornments natively on Windows. If either of these options are available, then refer to MAC OS/ LINUX instructions located above to run your program.

# Additional Information
SOURCE DATA FOR CSV FILE: https://www.kaggle.com/gregorut/videogamesales 

TOOLS USED AND BREIF DESCRIPTION

-AWK Programming language

    Data driven scripting language designed for text processing and generally used for data extraction and reporting. Generally meant to be used with UNIX and UNIX like systems

-Make GNU

    Make is a build automation tool used to build executable programs or libraries from a files source code. Generally made for UNIX or UNIX like systems; however, makefiles can be run on Windows with appropriate tools and knowledge.

Class Informtaion

School: CUNY - Brooklyn College

Class: CISC 3140 Design and Implementation of Large Scale Web Applications 

Year: Fall 2021


