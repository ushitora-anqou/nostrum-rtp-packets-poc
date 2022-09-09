# Test code for nostrum's handling of RTP packets 

This code uses the patched nostrum.

## Usage

Prepare two tokens for Discord.

```
$ mkdir /tmp/foobar

$ mix deps.get
$ vim config/runtime.exs
# Set TOKEN1
$ iex -S mix
# Run (TOKEN1's) /summon and /play URL on Discord

# On another terminal
$ vim config/runtime.exs
# Set TOKEN2
$ iex -S mix
# Run (TOKEN2's) /summon and /listen on Discord, and abort it quickly by C^g q.
# Incoming voice are stored in `/tmp/foobar`

# Check if /tmp/foobar/* are correct opus files. For example:
$ cd /tmp/foobar
$ ls * | while read line; do echo "ffmpeg -ac 2 -ar 48000 -f s16le -acodec libopus -i $line $line.wav" | sh; done
$ sox *.wav long.wav
$ vlc long.wav
```
