# Bumblebee Switch
Simple bash script to change the power state of a Nvidia Card controlled by [Bumblebee](https://github.com/Bumblebee-Project/Bumblebee).

It can be useful when you're trying to use [CUDA](https://developer.nvidia.com/cuda-zone), but your graphic card is being controlled by bbswitch.


## How to use

1. Clone the repo: `git clone https://github.com/Jpfonseca/BumblebeeSwitch`.

2. Access the `BumblebeeSwitch` folder by running: `cd BumblebeeSwitch`.

3. Change the file permissions: `chmod +x bumblebeeswitch.sh`

3. Run the file : `sudo ./bumblebeeswitch.sh [option]`




### Warning 
This script only works if you're using Bumblebee to control your graphic card.
