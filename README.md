### BTCONNECT

A very (maybe too) simple program to make connecting and disconnecting faster.
The program is only usable if the device is paired and requirements are met.

## REQUIREMENTS
Perl 5.0
blueZ

## PAIRING
Easy to find on web how to pair but here is little tutorial.
'''
bluetoothctl
    power on
    agent on
    scan -> <find your mac address>
    pair <MAC>
    trust <MAC>
'''

'''
I will add pairing function later, this was done in train in span of 15 minutes.
I'ts also good practice for git, atleast for me cause i suck at it.
'''

## HOW TO USE

Clone the repo
Make the perl script executable with <chmod +x>
Optionally you can add it to your $PATH, just go to .bashrc and add the path to the $PATH variable.
Run it with two commands either <c> for connection or <d> for disconnect followed by the device.

'''
./con.pl <command> "name"
'''


> **device => to add device you can edit the perl script and just add the name into "%devices" like this:
>    ... 
>    "name" = "MACADRESS";
>    }


## LICENSE
This project is licensed under the MIT License - feel free to use, modify, and share!




    




