install and use the CLI tool, follow these instructions:

Step 1: Save the Script
Save the bash script provided in the previous response to a file, for example sre.sh.

Step 2: Make the Script Executable
Make the script executable using the command:

bash
Copy code
chmod +x sre.sh
Step 3: Set Up kubectl
Ensure that kubectl is installed and configured to communicate with your Kubernetes cluster. If not already configured, you can set it up by following the instructions provided in the Kubernetes documentation: Install and Set Up kubectl.

Step 4: Move the Script to a Directory in Your $PATH
Move the script to a directory in your $PATH environment variable so that you can run it from anywhere. For example:

bash
Copy code
sudo mv sre.sh /usr/local/bin/sre
Step 5: Verify Installation
To verify that the CLI tool is installed correctly, you can run:

bash
Copy code
sre --help
This should display the usage instructions for the CLI tool.

Step 6: Use the CLI Tool
You can now use the CLI tool to manage Kubernetes resources and scaling. Here are some examples of how to use it:

List deployments:
bash
Copy code
sre list
List deployments in a specific namespace:
bash
Copy code
sre list --namespace <namespace>
Scale a deployment:
bash
Copy code
sre scale --replicas <replicas> --deployment <deployment_name>
Scale a deployment in a specific namespace:
bash
Copy code
sre scale --replicas <replicas> --deployment <deployment_name> --namespace <namespace>
Get info about a deployment:
bash
Copy code
sre info --deployment <deployment_name>
Get info about a deployment in a specific namespace:
bash
Copy code
sre info --deployment <deployment_name> --namespace <namespace>
That's it! You've successfully installed and configured the CLI tool for managing Kubernetes resources and scaling.
