# Test code for nostrum's handling of RTP packets 

This code is forked from [a nostrum's example](https://github.com/Kraigie/nostrum/blob/5d22693f62f7cfab394637c70b1e52eaa7da7132/examples/audio_player_example.ex). This code uses [this patch](https://github.com/Kraigie/nostrum/pull/438).

## Usage

Prepare two tokens for Discord in advance.

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
# Incoming RTP packets are stored in `/tmp/foobar`

# Check if /tmp/foobar/* are correct opus files. For example:
$ cd /tmp/foobar
$ ls * | while read line; do echo "ffmpeg -ac 2 -ar 48000 -f s16le -acodec libopus -i $line $line.wav" | sh; done
$ sox *.wav long.wav
$ vlc long.wav
```
