# Viper4Android for Android 8.x 😎

<b>NOT</b> like in Android version before, the v4a won't work in SDK26 because in Android O he change audio config format from <i>.conf</i> to <i>.xml</i> and merged soundfx library to one directory in <code>/system/vendor/lib/soundfx/</code> not in <code>/system/lib/soundfx/</code> anymore, so you must have new line to configurations drivers and library, if not your v4a still wont work and will ask you to install driver always 🙈

Please read <a href="https://github.com/Miyaku/mkv4a-old">OLD VERSION</a> if you not know how to work!

# First
Still same on old sdk version, you must add to <code>/system/etc/audio_effects.conf</code><br>
Under “libraries {“, add:
<pre>
v4a_fx {
path /system/lib/soundfx/libv4a.so
}
</pre>
Under “effects {“ add:
<pre>
v4a_standard_fx {
library v4a_fx
uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b
}
</pre>
# Second
Edit also on vendor dir, but not config, this a xml see <code>/system/vendor/etc/audio_effects.xml</code><br>
Under &lt;libraries&gt;
<pre>&lt;library name="v4a_fx" path="libv4a.so"/&gt;</pre>
Under &lt;effects&gt;
<pre>&lt;effect name="v4a_standard_fx" library="v4a_fx" uuid="41d3c987-e6cf-11e3-a88a-11aba5d5c51b"/&gt;</pre>+

Just it! If you confused you can try flash my v4a zip (build auto installer) with TWRP, you can found in <a href="https://github.com/Miyaku/v4a8/releases">release page</a>. 😌
I use Viper4Android Driver v.2.5.0.4 with NEON + AIO Fix + DDbM by Me. Tested work in ROM AEX 5.5 SDK26 (Android 8.1.0)

Yeah, you ready to Rocks, don't forget to set SELinux to Permissive 😉

Credit Viper4Android 😍



