# AppImage for Spotify

## How to use

```bash
# clone the repo
git clone https://github.com/Barthalion/appimage-spotify.git

cd appimage-spotify

# build the docker container
docker build -t="appimage-spotify" .
 
# build the appimage
mkdir out
docker run --device /dev/fuse:/dev/fuse:mrw --privileged -v `pwd`/out:/out -t -i appimage-spotify
 
# Done! :)
```

Now you should have a Spotify AppImage in your `out` folder ready to use!
An AppImage is also usable if your Distribution wouldn't normally be able to run an app. :)

Happy hacking!
