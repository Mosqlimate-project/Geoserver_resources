# Geoserver_resources
This repository collects Jupyter notebooks with analyses related to the GIS data in the Infodengue-Mosqlimate geoserver.

# Configuring the virtual environment
To configure the virtual environment, first install  the uv  package manager. On Linux or MacOS, run the following command:
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```
On Windows, open a powershell terminal and run the following command:
```powershell
powershell -c "irm https://astral.sh/uv/install.ps1 | more"
``` 

The commands bellow assume a Linux or MacOS environment. For Windows, look for the equivalent commands.

Then, run the following command to install the virtual environment:
```bash
uv sync
```
This command may be repeated from time to time to update the virtual environment.

Finally, activate the virtual environment:
```bash
source .venv/bin/activate
```
