Enable-WindowsOptionalFeature –Online -FeatureName Microsoft-Hyper-V –All -NoRestart

#The above command installs only the hypervisor but does not install the administration tools,
#if you want to manage the Hyper-V within the virtual machine you must install RSAT for Hyper-V to do this run the following command:

Install-WindowsFeature RSAT-Hyper-V-Tools -IncludeAllSubFeature

#you want to create a cluster then you need to install the Cluster service,  run:   

Install-WindowsFeature RSAT-Clustering -IncludeAllSubFeature 

#you can install Multipath I/O to enable multiple paths to the storage, if this is your case follow:

Install-WindowsFeature Multipath-IO 

#Restart to finalize the virtual machine with the command:

Restart-Computer