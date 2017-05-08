---
title: My Podcasting Setup
author: Roger Peng
slug: "podcasting-setup"
date: 2017-02-20
---

I've gotten a number of inquiries over the last 2 years about my podcasting setup and I've been meaning to write about it but....

But here it is! I actually wanted to write this because I felt like there actually wasn't a ton of good information about this on the Internet that wasn't for people who wanted to do it professionally but were rather more "casual" podcasters. So here's what I've got.

There are two types of podcasts roughly: The kind you record with everyone in the same room and the kind you record where everyone is in different rooms. They both require slightly different setups so I'll talk about both. For me, Elizabeth Matsui and I record [The Effort Report](http://effortreport.libsyn.com) locally because we're both at Johns Hopkins. But Hilary Parker and I record [Not So Standard Deviations](https://soundcloud.com/nssd-podcast) remotely because she's on the other side of the country most of the time.

## Recording Equipment

When Hilary and I first started we just used the microphone attached to the headphones you get with your iPhone or whatever. That's okay but the sound feels very "narrow" to me. That said, it's a good way to get started and it likely costs you nothing.

The next level up for many people is the [Blue Yeti USB Microphone](https://www.amazon.com/Blue-Yeti-USB-Microphone-Silver/dp/B002VA464S/) which is perfectly fine microphone and not too expensive. Also, it uses USB (as opposed to more professional XLR) so it connects to any computer, which is nice. However, it typically retails for $120, which isn't nothing, and there are probably cheaper microphones that are just as good. For example, Jason Snell recommends the [Audio Technica ATR2100](https://www.amazon.com/Audio-Technica-ATR2100-USB-Cardioid-Dynamic-Microphone/dp/B004QJOZS4/ref=as_li_ss_tl?ie=UTF8&qid=1479488629&sr=8-2&keywords=audio-technica+atr&linkCode=sl1&tag=incomparablepod-20&linkId=0919132824ac2090de45f2b1135b0163) which is only about $70.

If you're willing to shell out a little more money, I'd highly recommend the [Zoom H4n](https://www.zoom-na.com/products/field-video-recording/field-recording/zoom-h4n-handy-recorder) portable recorder. This is actually two things: a microphone *and* a recorder. It has a nice stero microphone built into the top along with two XLR inputs on the bottom that allow you to record from external mics. It records to SD cards so it's great for a portable setup where you don't want to carry a computer around with you. It retails for about $200 so it's *not* cheap, but in my opinion it is worth every penny. I've been using my H4n for years now.

Because we do a lot or recording for our online courses here, we've actually got a bit more equipment in the office. So for in-person podcasts I sometimes record using a [Sennheiser MKH416-P48US](https://en-us.sennheiser.com/short-gun-tube-microphone-camera-films-mkh-416-p48u3) attached to an [Auray MS-5230T microphone stand](https://www.amazon.com/gp/product/B00D4AGIBS/) which is decidedly not cheap but is a great piece of hardware.

By the way, a microphone stand is great to have, if you can get one, so you don't have to set the microphone on your desk or table. That way if you bump the table by accident or generally like to bang the table, it won't get picked up on the microphone. It's not something to get right away, but maybe later when you make the big time.

## Recording Software

If you're recording by yourself, you can just hook up your microphone to your computer and record to any old software that records sound (on the Mac you can use Quicktime). If you have multiple people, you can either

1. Speak into the same mic and have both your voices recorded on the same audio file
2. Use separate mics (and separate computers) and record separtely on to separate audio files. This requires synching the audio files in an editor, but that's not too big a deal if you only have 2-3 people.

For local podcasts, I actually just use the H4n and record directly to the SD card. This creates separate WAV files for each microphone that are already synced so you can just plop them in the editor. 

For remote podcasts, you'll need some communication software. Hilary and I use [Zencastr](https://zencastr.com) which has its own VoIP system that allows you to talk to anyone by just sending your guests a link. So I create a session in Zencastr, send Hilary the link for the session, she logs in (without needing any credentials) and we just start talking. The web site records the audio directly off of your microphone and then uploads the audio files (one for each guest) to Dropbox. The service is really nice and there are now a few just like it. Zencastr costs $20 a month right now but there is a limited free tier.

The other approach is to use something like Skype and then use something like [ecamm call-recorder](http://www.ecamm.com/mac/callrecorder/) to record the conversation. The downside with this approach is that if you have any network trouble that messes up the audio, then you will also record that. However, Zencastr (and related services) do not work on iOS devices and other devices that use WebKit based browsers. So if you have someone calling in on a mobile device via Skype or something, then you'll have to use this approach. Otherwise, I prefer the Zencastr approach and can't really see any downside except for the cost.

## Editing Software

There isn't a lot of software that's specifically designed for editing podcasts. I actually started off editing podcasts in Final Cut Pro X (nonlinear video editor) because that's what I was familiar with. But now I use [Logic Pro X](http://www.apple.com/logic-pro/), which is not really designed for podcasts, but it's a real digital audio workstation and has nice features (like [strip silence](https://support.apple.com/kb/PH13055?locale=en_US)). But I think something like [Audacity](http://www.audacityteam.org) would be fine for basic editing.

The main thing I need to do with editing is merge the different audio tracks together and cut off any extraneous material at the beginning or the end. I don't usually do a lot of editing in the middle unless there's a major mishap like a siren goes by or a cat jumps on the computer. Once the editing is done I bounce to an AAC or MP3 file for uploading.

## Hosting

You'll need a service for hosting your audio files if you don't have your own server. You can technically host your audio files anywhere, but specific services have niceties like auto-generating the RSS feed. For Not So Standard Deviations I use [SoundCloud](https://soundcloud.com/stream) and for The Effort Report I use [Libsyn](https://www.libsyn.com). 

Of the two services, I think I prefer Libsyn, because it's specifically designed for podcasting and has somewhat better analytics. The web site feels a little bit like it was designed in 2003, but otherwise it works great. Libsyn also has features for things like advertising and subscriptions, but I don't use any of those. SoundCloud is fine but wasn't really designed for podcasting and sometimes feels a little unnatural.

## Summary

If you're interested in getting started in podcasting, here's my bottom line:

1. Get a partner. It's more fun that way!
2. If you and your partner are remote, use Zencastr or something similar.
3. Splurge for the Zoom H4n if you can, otherwise get a reasonable cheap microphone like the Audio Technica or the Yeti.
4. Don't focus too much on editing. Just clip off the beginning and the end.
5. Host on Libsyn.

