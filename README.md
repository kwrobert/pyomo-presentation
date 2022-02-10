# Introduction 

Code to setup environment and run notebook for [Hack Free or Die](http://hackfreeordie.org/) presentation I gave on Feb. 10, 2022. 

# Setup 

1. Install Docker or Docker Desktop
2. Run `./start_jupyter.sh`
3. Copy the `http://127.0.0.1:8888/lab?token=$TOKEN_HERE` URL you see in the terminal output and paste into into your browser
4. You should see a Jupyter web app
4. Open the notebook file you see there in the left side bar
5. Have fun

# Troubleshooting

If you run into any weird issues, and you are running Docker Desktop, make sure the VM running all your Docker containers has enough virtual resources (CPU, Memory, Disk). 
