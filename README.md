# Model and Data for Perturbed Balance Control Simulation

The purpose of this simulation experiment was to explore the effects of COM feedback delay duration on balance. These experiments were performed in SCONE (with Hyfydy, version 2.0.6.2448,https://scone.software/).

## Setup

This folder contains the files needed to run simulations in SCONE or Hyfydy
* ```BalancePlatform_Hyfydy.scone```: perturbed balance scenario file for SCONE Hyfydy version, it works with the lua script for balance platform movement
*  ```BalancePlatform_OpenSim.scone```: balance scenario file for SCONE OpenSim (free) version (note: the platform is free to move but not controller due to limitation of the free version)
*  ```ControllerCoContractionReflexBalance.scone```: force feedback controller
*  ```ControllerComReflexBalance.scone```: COM feeback controller (the Delay length is changed in this file), the time delay can be changed by modifying $VDELAY = 0.150
*  ```ControllerLenReflexBalance.scone```: length feedback controller
*  ```H0918.hfd```: Hyfydy version model file
*  ```H0918M_osim3.osim```: Opensim version model file
*  ```H0918M_osim3_move_platform.osim```: Opensim version model file with a sliding platform
*  ```HfdConfigPlanarV2.zml```: configuration file needed to use Hyfydy
*  ```InitStateStand.zml```: initial pose file at the start of the simulation
*  ```MeasureBalance.scone```: objective functions (measures)
*  ```ScriptControllerMovePlatformSine.lua```: lua script to control the movement of the platform (the magnitude of the platform translation (mag = 0.080) can be changed in this file)

#### User Modifications
* The COM reflex time delay can be changed by modifying $VDELAY in ```ControllerComReflexBalance.scone```.
* The magnitude and period of the platform translation can be changed by modifying mag and period in ```ScriptControllerMovePlatformSine.lua```.
* The initial guess can be changed by modifying ```init_file``` in the scenario file as needed. For example, using the optimal result of a successful (smaller) magnitude perturbation as the initial guess 

## Results 
This folder contains .sto result files for each of the simulations. Files are named with the following convention:
```
M000 	= 0 mm AP platform translation		
M002	= 2 mm AP platform translation		
M004	= 4 mm AP platform translation		
M006 	= 6 mm AP platform translation
M008 	= 8 mm AP platform translation
M010	= 10 mm AP platform translation
M020	= 20 mm AP platform translation
M040	= 40 mm AP platform translation
M060	= 60 mm AP platform translation
M080	= 80 mm AP platform translation
D100	= COM Feedback delay of 100 ms
D150 	= COM Feedback delay of 150 ms
D200	= COM Feedback delay of 200 ms
```
