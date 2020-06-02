# Launch one of your notebooks
# In the upper left, click the Jupyter logo
# You'll see a file view page that lists all Jupyter resources in your current course. Click the New, then select Terminal to open the system command line.
# You'll see a shell prompt open. In the shell prompt, type or paste the following statements:

# Remove the previous archive, if it exists: 
rm -f ~/workspace.tar.gz && rm  -f /home/workspace/workspace.tar.gz

# Create a zipped archive of your workspace directory: 
tar -czf ~/workspace.tar.gz /home/workspace

# Move the archive into the workspace directory so you can see it: 
mv ~/workspace.tar.gz /home/workspace/workspace.tar.gz

# Once the commands run successfully, click on the ‘Coursera’ logo again to return to the file view.
# In the file view, select workspace.tar.gz, then click Download. Your browser will download the workspace archive, which is yours to keep.
# Remove the archive file: rm ~/work/workspace.tar.gz*
