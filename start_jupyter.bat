:: This program pulls from git, then opens git bash in the working directory starts the jupyter notebook.
:: Once the jupyter notebook has closed one final commit and push is completed.
:: Commits should be done regularly while working including just before quitting the notebook.

::git pull origin master
::start "" "%PROGRAMFILES%\Git\bin\sh.exe" --login
start firefox -new-tab localhost:8888
docker run -it --rm -p 8888:8888 -v %cd%:/tf/notebooks tensorflow-pandas
::docker-compose -f docker-compose.jupyter.yml up
::git add .
::git commit -m "Closing notebook"
::git push origin master