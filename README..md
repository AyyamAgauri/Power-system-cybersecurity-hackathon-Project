# Project Title: Detection and Mitigation of False Data Injection Attacks in Smart Grids

## Overview
This repository contains the necessary files and resources to simulate and analyze the detection and mitigation of False Data Injection (FDI) attacks in smart grids. The key files include Jupyter notebooks and MATLAB Simulink models.

## File Structure
- **Model-Building.ipynb**: Jupyter notebook for building and training the machine learning model for FDI detection.
- **Pv-array-grid.slx**: MATLAB Simulink model representing the photovoltaic array grid system.
- **Faulty-grid.slx**: MATLAB Simulink model simulating faulty conditions in the grid.
- **requirements.txt**: A file containing the Python package requirements for the project.

## Walkthrough Instructions

### Step 1: Prerequisites
Before getting started, ensure that you have the following installed on your system:
- **Python**: Version 3.6 or higher.
- **MATLAB**: With Simulink to run the Simulink models.

### Step 2: Create a Virtual Environment
To keep your project dependencies organized, it is recommended to create a virtual environment. Follow these steps:

1. **Open your terminal** (Command Prompt or PowerShell on Windows, or Terminal on macOS/Linux).
2. **Navigate to the project directory** where the `requirements.txt` file is located. You can use the `cd` command to change directories:
   ```bash
   cd path/to/your/project
3. Use: pip install -r requirements.txt

### Step 3: Run the Simulation File
Running the Simulation file will provide a Dataset to use in Model building.

1. The `data_extraction.m` file may help in this task.
2. After running both the `PV_array_GRID.slx` and `Faulty PV_GRID.slx` you will have the dataset of both Normal condition operation and Faulty condition operation.
3. Label the Dataset. The `Normal` data as `1` and `Faulty` data as `0`.

### Step 4: Model Building
First adjust the path of your dataset in your project and use it in the pandas data loading command `df = pd.read_csv("your data path")` of both simulations.

1. Now that both data files are ready, make a combined csv file of data by concatenating those.
2. Now the Data Exploration, Data Cleaning and Model Training part comes.
3. Model training part may take upto `2hours`. Please be patient.

### Step 5: Mitigaiton
We have yet to start this Section!