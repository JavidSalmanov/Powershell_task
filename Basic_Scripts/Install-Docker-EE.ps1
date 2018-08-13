Set-PSRepository -Name PSGallery -InstallationPolicy Trusted 
Install-Module DockerMsftProvider 
Install-Package Docker -ProviderName DockerMsftProvider -Force
Restart-Computer