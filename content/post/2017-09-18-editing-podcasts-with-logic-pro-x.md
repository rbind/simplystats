---
title: Editing Podcasts with Logic Pro X
author: Roger Peng
date: 2017-09-18
slug: editing-podcasts-logic-pro-x
---

I thought I'd write a brief description of how I edit podcasts using Logic Pro X because when I was first getting into podcasts, I didn't find a lot of useful stuff out there. A lot of it was YouTube videos of advanced editing or very basic stuff. I don't consider myself a sound expert in any way, but I wanted a good workflow that would produce decent quality stuff. When I first started [Not So Standard Deviations](http://nssdeviations.com) with [Hilary Parker](https://twitter.com/hspter/) I actually edited the first few episodes using Final Cut Pro X, a video editor, because that's just what I was familiar with. Eventually, I learned Logic Pro X, which is Apple's digital audio workstation, largely because of [this post by Jason Snell](https://sixcolors.com/post/2015/02/how-i-podcast-editing/).

On with the show. Unfortunately, this is going to be an Apple-heavy post given that Logic Pro X is only available on Macs. Sorry, rest of world!

## Recording the Episode

I assume you've recorded your podcast and that you have one file for each speaker. In both [The Effort Report](http://effortreport.libsyn.com) and Not So Standard Deviations, I record with a co-host. As of this writing, both podcasts are recorded remotely because of geographic constraints. The way we do this is that each co-host records her microphone input locally and then sends me the audio file (I also record my own microphone input). This way, we don't have to worry about any noise going over the Internet connection (and there is a lot sometimes). Unfortunately, there is no way to deal with the connection delays that inevitably come up (more on that later). As a backup, I also record the combined conversation going over the Internet using [Audio Hijack](https://rogueamoeba.com/audiohijack/). Besides being a backup, this recording is also useful for synchronizing the separate tracks, but at the end of the day, I don't actually use it. I'll probable write a separate post on the details of how I record each podcast.

## Starting the Project

I start each project in Logic Pro X by selecting the "Multi-Track" option after clicking File > New from Template.... This just opens you up in an empty project with a whole bunch of empty tracks setup.

![Empty Project](/post/2017-09-18-editing-podcasts-with-logic-pro-x/startup.png)

Next I import three audio files: One containing just my voice, another containing just my co-host's voice, and another containing our combined conversation. These tracks are then labeled according to the speaker's name. Below is an example from Episode 54 of The Effort Report after importing the audio.

![Initial audio file import](/post/2017-09-18-editing-podcasts-with-logic-pro-x/import.png)

At this point I don't worry about where the audio tracks are placed, I just get them into the project. This is a good time to **save** your project (and also give it a name). 

## Synchronization

The first problem is that the audio tracks are not synchronized. For the most part this is not such a big deal as long as you have a recollection of how the conversation went. But it's easier if you have a recording of the combined (synchronized conversation). Here I can line up my voice in the separate audio file with the combined audio file, and then line up Elizabeth Matsui's voice in her audio file to the same combined audio. It takes a little trial and error, but doesn't take too long.

Here is a screenshot after I've synchronized the audio files. You can see that the waveforms nicely line up with each other in the combined audio file.

![Synchronized audio tracks](/post/2017-09-18-editing-podcasts-with-logic-pro-x/synchronized.png)

At this point I usually delete the combined audio track because it's no longer needed (and is of lower quality because it is recorded over the Internet). 

## Strip Silence

Perhaps the key reason I use Logic Pro X for podcast editing (a task for which is not particularly well-suited) is the strip silence feature. What this does is it takes an audio track and just deletes anything that it considers to be silence. What exactly is "silence" is configurable and you may need to play with it depending on your recording levels. You can run strip silence by first selecting the track in the window so that it is highlighted and then pressing Ctrl-X. You will be presented with this window:

![Strip silence default configuration window](/post/2017-09-18-editing-podcasts-with-logic-pro-x/stripsilence1.png)

I find the defaults don't work for me, so I modify them slightly. My parameters are:

* Threshold: 4%
* Minimum Time to accept as Silence: 1.0 sec
* Pre Attack-Time: 0.1 sec
* Post Release-Time: 0

And I leave the "Search Zero Crossing" box checked. Once you hit "OK", the track will look something like this.

![After strip silence applied](/post/2017-09-18-editing-podcasts-with-logic-pro-x/stripsilence2.png)

After doing it again to my track, your track editor window will look something like this.

![After strip silence applied](/post/2017-09-18-editing-podcasts-with-logic-pro-x/stripsilence3.png)

Now you can see that the only thing that remains of each track are the parts where one of us is talking. We are getting there!

## Dealing with Delay, Cross talk, and Noise

At this point you might think we were done, given that the audio has been synchronized. However, there are a few issues left that need to be dealt with:

1. **Cross talk**. Especially on remote connections with a delay (or on recordings with multiple speakers), there will likely be moments when people talk over each other. This is unpleasant to listen to and it's nice to clean up those moments if possible.
2. **Connectivity Delay**. Often with remote recording, there is a delay as a person's voice is relayed by the Internet gnomes over thousands of miles. The fact that there is *only* a 1--3 second delay in a connection between Melbourne and Baltimore is, frankly, a miracle, but it's still annoying to listen to.
3. **Conversational Noise**. Often in remote conversations, the person *not* doing the talking is prone to say "Uh uh", or "yeah", just to indicate that they're still listening. This stuff is not necessary in the final recording and it's good to clean that up.

The nice thing about all of the problems above is that they are easily dealt with after running strip silence. In partcular, in sections where a single person is just talking, there is nothing to do. So you can just skip over that. For example, in the section below, Elizabeth is speaking for just over a minute uninterrupted.

![Monologue](/post/2017-09-18-editing-podcasts-with-logic-pro-x/monologue.png)

There's nothing to edit here so you can skip to the next section.

By contrast in the section below, I am speaking and Elizabeth is agreeing with me by saying "right" and "yeah". With strip silence it's easy to recognize this pattern and I can just delete those little blurbs.

![Conversational noise](/post/2017-09-18-editing-podcasts-with-logic-pro-x/noise.png)

Finally, with connectivity delays, there will often be a gap between when one speaker finishes and another responds. In the example below, when I'm done speaking, there's about a 2 second delay between when I stop and when Elizabeth responds. Sometimes that's on purpose, but usually it's because of the connectivity delay.

![Connectivity delay](/post/2017-09-18-editing-podcasts-with-logic-pro-x/gap.png)

This can be easily fixed by clicking on Elizabeth's track at that point, hitting Shift-F, which selects everything after that point, and then dragging the whole thing to the left a little bit. The result is below. It's important to use Shift-F in order to preserve synchronization in the rest of the recording!

![Shifting a track to close a gap](/post/2017-09-18-editing-podcasts-with-logic-pro-x/shift.png)

The nice thing about the strip slience feature is that you only need to navigate to all the points where one speaker stops and another starts. These boundaries are easy to find in the track editor. That doesn't mean that this process isn't tedious, especially in an hour-long episode. But it's faster than it would be otherwise and it makes for a much cleaner recording and a much more listenable episode.

Lastly, cross talk is usually easy to spot because it looks something like this.

![Cross talk](/post/2017-09-18-editing-podcasts-with-logic-pro-x/crosstalk.png)

Here, both Elizabeth and I are talking at the same time and it looks messy. In these cases I'll listen to what was happening before and after the cross talk and see if I can clean it up. Usually, I just end up deleting the section with cross talk and try to paste together what came before to what comes after. Or if it makes sense, sometimes I can just shift one person's voice over just a little bit so that both speakers' points are made, but just not at the same time.

## Exporting

After all the editing is done, I export the final episode by bouncing to a file. You can hit Cmd-B to get the bounce menu. Typically I bounce to MP3 at 160 kpbs and I turn Normalize to "Off". 

## Summary

That's pretty much it for editing. There are a few extra things that I do (like sound compression), but they're not quite as important as getting the editing right. A lot of stuff out there encourages you to use free editors like Audacity or something similar---and that's a good place to start---but I think a professional tool like Logic Pro X is essential for dealing with problems like noise, cross talk, and delay, which I think are a feature of every remotely recorded podcast.
