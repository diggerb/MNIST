:: This program pulls from git, then opens git bash in the working directory starts the jupyter notebook and runs opne_firefox_tab.bat.
:: Once the jupyter container has stopped one final commit and push is completed.

:: Commits should be done regularly while working including just before quitting the notebook.

git pull origin master
start "" "%PROGRAMFILES%\Git\bin\sh.exe" --login
start cmd /c call "./open_firefox_tab.bat"
docker run -it --rm -p 8888:8888 -v %cd%:/tf/notebooks tensorflow-pandas
git add .
git commit -m "Closing notebook"
git push origin master