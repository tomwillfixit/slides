# slides
Present slides using slides.sh, bash, Docker and Shellinabox

This was inspired by a presentation at the Docker Dublin Meetup by Mihai Criveti from IBM. The slide.sh script in this repo is from : https://github.com/ryanuber/slide.sh

The days of sharing PowerPoints over email and googly docs are numbered. 
Stick it in a container and share it ;)

## Usage

Create your slides in the "demo" directory.

### Build presentation 

docker build -t slides:latest .

### Deliver presentation

docker run -d --name demo -p 8080:8080 slides:latest

Open browser : http://localhost:8080/demo

### Share Presentation

docker tag and push the image to Docker Hub.

### FAQ

Does it support cat memes?

No

Does it support ASCII art?

Yes

Are you joking?

Most likely.
