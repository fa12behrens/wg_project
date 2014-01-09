If you read this at GIT,
first check if you really work with us,
if not gtfo ;P.

This following text describe how u can use git (ignore if u know git!).

1. You already joined git and our repository, otherwise you won't read this.

2. How to use the website:
You are already on the main page of git, so i am starting from here.
Over this Readme.md should be a block which shows all project content,
if u looked at this you can see folder names, the last commit message and the date of the last commit.
You can navigate through this while click the folder, for step into the folder or
click the commit message to view the last commit.
Above you can see the last commit and his author.
Above this you can see a navigation with commits, branches, releases and contributors + number.
Above this you have your personal bar, with path,search,logout etc..
At the right side u can see some links and download stuff.
Links are just a few usefull like issues for bugtracking etc., pull request if you want to move your branch back into the master
and the Wiki, the wiki should contain the software_doku and more, but today it's empty.

3. How to clone it on my PC:
Before you see the download stuff, but if you don't know how to use,
just copy the HTTPS url (should be https://github.com/fa12behrens/wg_project.git or some similar) from the textfield.
If you don't install git before, you should do it now! (http://git-scm.com/downloads)
If you are done, you can use 3 ways to clone stuff
- use git gui->clone project and paste the url into source, also enter ure target directory
- use git bash->navigate to the target path and enter (git clone url)->(git clone https://github.com/fa12behrens/wg_project.git)
- use your IDE to clone from VCS GIT, the process is similar to git gui but it's direct in your IDE, if it is.
Now you have your repository local, but you can't even update or commit it,
to fix it u need to open git bash->navigate to your project and enter (git branch --set-upstream master origin/master)or(git branch --set-upstream-to origin/master)is newer
Oh, wait u can't navigate in git bash? Damn, its with (cd /drive/folder/folder/) as example (cd /d/projects/wg_project) like unix.
So now you can work with the code.

4. How to commit,update/pull,push/work with branches ...
I use my IDE for it it's fast and effective, if you can't use your IDE ...
RESEARCH AT UR OWN, damn i can't do anything.
If u research it u can add it here, to help other people.

Same description as .txt just added to show it on git too.

Welcome Dude!

This is the WG-Project,
this folder structure contains the whole content, which is required
to start this application, expect a php and mysql server to execute this code.

Easy way to run this is-> install xampp -> throw this project into his htdocs -> start xampp apache and mysql -> enjoy :)
sample url:http://localhost/wg_project/frontend/site/

Structure:

-backend
contains basic classes and functions in php (javascript and html are in php)

-data
contains all datasources, like css, images, xml ...

-documentation
contains the whole project documentation splitted in git, general and software documentation,
last one describe just the software and can be used to easily understand and enter this project

data are just a vessel for non-script dokumentation, like images or saves of other programs,
so it's a source for the other documentation folders.

-frontend
contains all display functions, which simply use the backend to build the sites

-sql_schema
contains all database changes as sql query to make easy copies and restores of it


/*
* if you want to know how this projects work pls open
* documentation->software_doku->readme.txt to continue
* and yeah this comment is useless
*/