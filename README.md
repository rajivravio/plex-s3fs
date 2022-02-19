# plex-s3fs 🎥🍿

Modified nicholasadamou's script to support Wasabit S3 instead os AWS S3. Since networkegress is free w/ Wasabi, it is the better choice to host video.

[![License](https://img.shields.io/github/license/nicholasadamou/stockflight.svg?label=License&maxAge=86400)](./LICENSE)
![Say Thanks](https://img.shields.io/badge/say-thanks-ff69b4.svg)

---

## Getting Started

## Setup
bash <(curl -s -L https://raw.githubusercontent.com/rajivravio/plex-s3fs/master/install.sh)


### Running on a headless server

In order to properly configure our Plex server, we need to add the required claim token. To add the token, you will need to use ssh tunneling to gain access and setup the server for first run. During the first run, you setup the server to make it available and configurable. However, this setup option will only be triggered if you access it over http://localhost:32400/web, it will not be triggered if you access it over http://ip_of_server:32400/web. Since we are setting up PMS (Plex Media Server) on a headless server, you can use a SSH tunnel to link http://localhost:32400/web (on your current computer) to http://localhost:32400/web (on the headless server running PMS):

`ssh username@ip_of_server -L 32400:localhost:32400 -N`

## Liability

The creator of this repo is _not responsible_ if your machine ends up in a state you are not happy with.

## License

Copyright Nicholas Adamou

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
