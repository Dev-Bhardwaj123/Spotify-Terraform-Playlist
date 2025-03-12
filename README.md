# Spotify-Terraform-Playlist
Automate your playlist using terraform. Learn how to get hands on terraform , dockers and using API's.

Download terraform and Dockers. Set up your account on Spotify developers and then click on create app after going to dashboard.
Specify the requirements. For URI use http://localhost:27228/spotify_callback. Save it

Copy the Client id and Client secret and save it on VS code as .env file.

Now open your VS code editor. Copy the providers.tf code. 

Open Dockers desktop and keep it running.

Open terminal and
use command: docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/fy-auth-proxy.
You get an API key and a link. GO on the link and if prompted authorization successful move ahead.

Copy the API key. Store in a variable using terraform.tfvars extension file. And copy the variables.tf

Now we use resources and data blocks. Go through various options available and then choose the ones you want.
Can also proceed with my playlist.tf . Get a song it and update the name and tracks.

Change the artists and to get their songs use basic indexing.

Open a bash terminal. Run command: terraform init
Then : terraform plan
Then : terraform apply -auto-approve

Congrats your spotify terraform playlist is now created.....!!!!
Congrats 
