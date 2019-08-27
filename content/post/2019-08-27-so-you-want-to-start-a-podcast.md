---
title: So You Want to Start a Podcast
author: Roger Peng
date: '2019-08-27'
slug: so-you-want-to-start-a-podcast
---

Podcasting has gotten quite a bit easier over the past 10 years, due in part to improvements to hardware and software. I wrote about both how I [edit](https://simplystatistics.org/2017/09/18/editing-podcasts-logic-pro-x/) and [record](https://simplystatistics.org/2017/09/20/recording-podcasts-with-a-remote-cohost/) both of my podcasts about 2 years ago and, while not much has changed since then, I thought it might be helpful if I organized the information in a better way for people just starting out with a new podcast.

One frustrating problem that I find with podcasting is that the easy methods are indeed easy, and the difficult methods are indeed difficult, but the methods that are just *above* easy, which other markets might label as “prosumer” or something like that, are...kind of hard. One of the reasons is that once you start buying better hardware, everything kind of snowballs because the hardware becomes more modular. So instead of just using your phone headphones to record, you might buy a microphone, that connects to a stand, that connects to a USB interface using an XLR cable, that connects to your computer. Similarly, on the software side, there’s really not much out there that’s free. As a result of both phenomena, costs start to go up pretty quickly as soon as you step up just a little bit.

I can’t do anything about costs, but I thought I could help a little bit on sorting out what’s out there and what’s genuinely valuable. There are two versions here: the free and easy plan if you’re just starting out and the next level up, which is basically what I use.

The three things I’ll cover here that you need for podcasting are:

1. **Hardware** - this includes all recording equipment like microphones, stands, cables, etc.
2. **Recording Software** - Unless you live in a recording booth you’ll need some software for your computer (which I assume you have!)
3. **Editing Software** - the more complicated your podcast gets the more you’ll need to edit (beyond just trimming the beginning and end of the audio files)
4. **Hosting** - Unless you plan on running your own server (which is an option but I don’t recommend it) you’ll need someone to host your audio files.

## Free and Easy

There are in fact ways to podcast for free and many people stay at this level for a long time because the quality is acceptable and cost is zero. If you want to just get started quickly here’s what you can do:

1. **Hardware** - just use the headphones/microphone that came with your mobile phone. 
2. **Recording Software** - If you are doing a podcast by yourself, you can just use whatever app your phone has to record things like voice memos. On your computer, there should be a built-in app that just lets you record sound through the headphones.
3. **Editing Software** - For editing I recommend either not editing (simpler!) or using something like [Audacity](https://www.audacityteam.org) to just trim the beginning and the end.
4. **Hosting** - SoundCloud offers free hosting for up to 3 hours of content. This is plenty for just starting out and seeing if you like it, but you will likely use it up.

If you are working with a partner, it gets a little more complicated and there are some additional notes on the recording software. My go-to recommendation for recording with a partner is to use [Zencastr](https://zencastr.com/). Zencastr has a free plan that lets you record high-quality audio for a max of 2 people. (If you need to record more than 2 people, you can’t use the free option.) The nice thing about Zencastr is that it uses [WebRTC](https://en.wikipedia.org/wiki/WebRTC) to record directly off your microphone, so you don’t need to worry too much about the quality of your internet connection. What you get is separate audio files, one for each speaker, that are synched together. Occasionally, there are some synching glitches, but usually it works out. The files are automatically uploaded to a Dropbox account, so you’ll need one of those. Because Zencastr automatically goes to MP3 format, the files are relatively small. Also, if you have a guest who is less familiar with audio hardware/software, you can just send them a link that they can click on and they’re recording.

Note that even if your partner is sitting right next to you, it’s often simpler to just go to separate spaces and record “remotely”. The primary benefit of doing this is that you can cleanly record separate/independent audio tracks. This can be useful in the editing process.

If you prefer an all-in-one solution, there are services like [Cast](https://tryca.st) and [Anchor](https://anchor.fm) that offer recording, hosting, and distribution. Cast only has a free 1-month trial and so you have to pay eventually. Anchor appears to be free (I’ve never used it), but it was recently purchased by Spotify so it’s not immediately clear to me if anything will change. My guess is they’ll likely stay free because they want as many people making podcasts as possible. Anchor didn’t exist when I started podcasting but if it had I might have used it first. But it always makes me a little nervous when I can’t figure out how a company makes money.

To summarize, here’s the “free and easy” workflow that I recommend:

1. Record your podcast using Zencastr (especially if you have a partner), which then puts audio files on Dropbox
2. Trim beginning/ending of audio file with Audacity
3. Upload audio to SoundCloud and add episode metadata 

And here are the pros and cons:

Pros

* It’s free

Cons

* Audio quality is acceptable but not great. Earbud type microphones are not designed for high quality and you can usually tell when someone has used them to record. Given that podcasts are all about audio, it’s hard for me to trade off audio quality.
* Hosting limitations mean you can only get a few episodes up. But that’s a problem for down the road, right?
* Editing is generally a third-order issue, but there is one scenario where it can be critical---when you have a bad internet connection. Bad internet connections can introduce delays and cross-talk. These problems can be mitigated when editing (I give an example [here](https://simplystatistics.org/2017/09/18/editing-podcasts-logic-pro-x/)) but only with better software.

 
## Beyond Free

Beyond the free workflow, there are a number of upgrades that you can make and you can easily start spending a lot of money. But the only real upgrade that I think you need to make is to buy a good microphone. Surprisingly, this does not need to cost much money. The best podcasting microphone for the money out there is the [Audio Technica ATR2100 USB micrphone](https://www.amazon.com/Audio-Technica-ATR2100-USB-Cardioid-Dynamic-Microphone/dp/B004QJOZS4/ref=sr_1_3?crid=35TCYURP9DCY0&keywords=audio+technical%27s+atr2100&qid=1566911267&s=gateway&sprefix=audio+technical%27s+atr2100%2Caps%2C122&sr=8-3). This is the microphone that Elizabeth uses on the [The Effort Report](https://effortreport.libsyn.com) and Hilary uses on [Not So Standard Deviations](http://nssdeviations.com). As of this writing it’s \$65 on Amazon, but I’ve seen it for as low as \$40. The benefits of this microphone are:

* The audio quality is high
* It isolates vocal audio really well and doesn’t pick up a lot of background audio (good for noisy rooms like my office).
* It connects directly to a computer via USB so you don’t need to buy a separate USB interface. 
* It’s cheap

The problem with getting “better” (i.e. more expensive) microphones as that they tend to be more sensitive, which means they pick up more high-frequency background noise. Professional microphones are designed for you to be working in a sound-proof recording studio environment in which you want to pick up as much sound as possible. But podcasting, in general, tends to take place wherever. So you want a microphone that will only pick up your voice right in front of it. Technically, you lose a little quality this way, but it’s equally annoying to have a lot of background noise.

Now that you’ve got a microphone, you need to stick it somewhere. While you can always just hold the microphone, I’d recommend an adjustable stand of some sort. Desk stands like [this one](https://www.amazon.com/InnoGear-Microphone-Suspension-Adjustable-Snowball/dp/B01L3LL95O/ref=sr_1_2_sspa?keywords=microphone+desk+stand&qid=1566911946&s=musical-instruments&sr=1-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUE1OUJZT05aSEdVWkMmZW5jcnlwdGVkSWQ9QTA2OTg0ODgySElRWktJSjk1WFVRJmVuY3J5cHRlZEFkSWQ9QTAzMjI0NTVaSENFTVJaOFhZSUsmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl) are nice because they’re adjustable but they do require you to have a semi-permanent office where you can just keep it. The main point here is that podcasting requires you to sit still and talk for a while, and you don’t want to be uncomfortable while you’re doing it.

The last upgrade you’ll likely need to make is the hosting provider. SoundCloud itself offers an unlimited plan but I don’t recommend it as it’s not really designed for podcasting. I use [Libsyn](https://libsyn.com), which has a $5 a month plan that should be enough for a monthly podcast. They also provide some decent analytics that you can download and read into R. What I like about Libsyn is that they do one job and they do it really well. I give them money, and they provide me a service in return. How simple is that?

That’s it for now. I’m happy to make more recommendations regarding software and hardware (feel free to tweet me @rdpeng), but I think what I’ve got here should get you 99% of the way there.
