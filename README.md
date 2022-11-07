# Launch/Record from MIDI Keyboard in Ableton Live Session View

Ableton Live 11 nativelly only allows users to map MIDI Controllers to launch specific tracks and scenes, which makes recording large projects in Session View cumbersome as it essentially requires you to constantly swap between your MIDI controller to play and computer keyboard to navigate. This MidiPipe allows you to arm selected tracks, launch/record hovered clips, and delete, all directly from your MIDI keyboard in Ableton Live's Session View for MacOS. I've configured it to work with my Arturia Keylab Essential 49, but it can be modified to work with any MIDI controller (instructions for doing so can be found below).

## Installation

Click the green "Code" button above and to the right and select "Download ZIP", then unpack the folder. You'll also need to install [MidiPipe](http://www.subtlesoft.square7.net/MidiPipe.html).

## Usage

Just open [SessionViewMIDI.mipi](./SessionViewMIDI.mipi) with MidiPipe and it will run automatically. Now, when you're in DAW Mode on your Arturia Keylab Essential 49, press the Cat/Char button to launch your currently-hovered Session View clip, click the rotating DAW Command Center middle knob to arm the selected track, and the Preset button to delete.

## Using a Different MIDI Controller/Adding Functionality

This pipe works by utilizing Ableton Live's built-in keyboard shortcuts. Despite not allowing you to map MIDI controls to arm selected tracks, launch hovered clips, and delete, Live has built-in keyboard shortcuts to do these things. This pipe simulates the corresponding keyboard shortcuts on button presses.

If you're using another keyboard, after opening [SessionViewMidi.mipi](./SessionViewMIDI.mipi) with MidiPipe, you're going to need to change the MIDI Input. In the "Pipes" section of MidiPipe, select MIDI In, and select your device under MIDI Input (if your keyboard (such as those in the the Arturia Keylab series) has a separate DAW input, you're probably going to want to use that one). Then, you need to figure out what MIDI messages your keyboard sends when you press whatever note you want to remap. This can be done with a program like [MIDI Monitor](https://www.snoize.com/midimonitor/), but it can be unclear which messages are being processed by MidiPipe from the input you've selected. I've included a file called [CheckMidiPipeInputs](./CheckMidiPipeInputs) that you can use to check instead. Copy it's contents, then select the AppleScript Trigger in the "Pipes" section of MidiPipe, delete the contents, and paste in CheckMidiPipeInputs. Now, your computer will read the message it receives from your keyboard out loud. You can then delete the AppleScript contents and replace them with those in [CenterButtonsScript], then change the items in message to match those from your specific controller.

If you'd like to add functionality, you can do the above, but change the key codes sent to "System Events" to match those from [other Ableton Live Shortcuts](https://www.ableton.com/en/manual/live-keyboard-shortcuts/). A list of key codes can be found [here](https://eastmanreference.com/complete-list-of-applescript-key-codes)
