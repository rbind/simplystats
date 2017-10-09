---
title: 'It Costs Money to Get It Right'
author: Roger Peng
date: '2017-10-09'
slug: it-costs-money-to-get-it-right
---

On the latest episode of [Not So Standard Deviations](http://nssdeviations.com/46-uncanny-valley-of-stickerness) I talked with Hilary about Apple's efforts to train machine learning algorithms in their Face ID technology in the iPhone X. The gist of Face ID is that it recognizes your face using a mathematical representation and then unlocks the phone when it can confirm that it is you. In its keynote presentation, Apple mentioned that it's using machine learning to do this and even had developed its own custom chips to do the computations.

There were many questions regarding Face ID, including how exactly Apple had trained this machine learning model without it ever being released to the public. There were natural concerns that the system would only recognize certain kinds of faces, perhaps of certain ethnic backgrounds or of certain shapes or sizes. Two bits of evidence indicate that Apple likely spent a lot of money in this training process. The first bit comes from Craig Federighi, Senior Vice President for Software Engineering, in an [interview with Tech Crunch](https://techcrunch.com/2017/09/15/interview-apples-craig-federighi-answers-some-burning-questions-about-face-id/), 

> "Phil [Schiller] mentioned that we'd gathered a billion images and that we'd done data gathering around the globe to make sure that we had broad geographic and ethnic data sets. Both for testing and validation for great recognition rates," says Federighi. "That wasn’t just something you could go pull off the internet."

> Especially given that the data needed to include a high-fidelity depth map of facial data. So, says Federighi, Apple went out and got consent from subjects to provide scans that were "quite exhaustive." Those scans were taken from many angles and contain a lot of detail that was then used to train the Face ID system.

The second bit of information comes from the [Accidental Tech Podcast](http://atp.fm) where a listener wrote in to describe a study that he had recently enrolled in that took very detailed images of his face. Although there is no explicit connection, it would sound by the description that this study could have been related to the Face ID efforts (you can hear Casey Liss discuss the study [here](Accidental Tech Podcast: 240: Undefined Wait Period
https://overcast.fm/+CdQoBnmk/1:15:23)). Apparently, the study was being conducted by [Exponent](https://www.exponent.com) which from its web site appears to be a scientific and technical consulting firm. 

Given the two bits of information, I don't think it's a stretch to say that 

1. Apple decided it needed a huge dataset to train the Face ID algorithm and that no such dataset existed that they could access

2. Having no real desire to collect such data themselves, Apple outsourced the study to a third party company (in much the same way a biotech company might outsource a clinical trial to a clinical research organization) to collect the data to their specifications. The outsourcing also allowed Apple to shield its identity in the process so that they could keep the whole Face ID system secret.

3. The collected dataset (and the subsequently trained model) effectively serve as the "prior" distribution in a complex classification scheme that is adapted to a specific user once a user allows the iPhone X to collect their face data. 

Apple claims that user data is not sent back to Apple for privacy reasons, so that the "big" model is not updated according to user data. Perhaps Apple will continue to collect data separately from user data, but there was no mention of that. 

If any of this is true, there are a few things worth noting: 

1. This is not the way things are done Silicon Valley these days. A perhaps less costly way would be to give some app away for free (like a fun game or something similar), let the app take a bunch of pictures of you from different angles, and then gather all the data to train a model. Of course, such an approach would be subject to the selection bias that all approaches like this suffer from, because the data only represents the people whom the company could get to use the product. 

2. It must have been very expensive to conduct this study, although that is less of a big deal when you have [over $150 billion in net cash](https://www.aboveavalon.com/notes/2017/8/15/apple-has-the-best-business-model-for-generating-cash). That said, only a handful of companies could afford to do this and certainly not your average startup. 

3. If the Face ID system works well and is capable of recognizing the diversity of faces that represent the iPhone customer base, then it would suggest that getting this kind of machine learning right *costs a lot of money*. In particular, it highlights the limitations of crowdsourcing-as-data-collection and it would suggest that old-fashioned ideas of sampling and experimental design are still needed once in a while.

## Is It Research?

On Twitter, someone mused that wouldn't it be nice if they released all this data to the public? Certainly, it would be a valuable and unique resource if they did and would likely spur a wealth of new innovations. Of course, this will almost certainly not happen, if only because Apple considers this dataset a key to their competitive advantage in the area of face detection, which they believe is the future of authentication. Why give this up to their competitors? Indeed, I don't think anyone would expect Apple to give up this dataset any more than we might expect Google to give up data it collects from its search engine. 

On the other hand, if I had conducted a study collecting similar face information (albeit on a smaller scale!) and published a paper about my findings about face morphology, there would likely be an expectation of me to release my data to the public along with the findings. And *rightly so*! Reproducibility is critical to moving science forward and releasing the data allows others to reproduce the findings. Furthermore, such a dataset would likely be useful to others investigations and would benefit all of science.

But why is there is no expectation for Apple to release data from its study but there is an expectation on me to release data from my study?

In my opinion, Apple is not conducting research, even though it kind of looks like it is. Rather, Apple is doing product development, which requires some gathering of information as part of the process. The fact that the information gathering was done on such a large scale isn't relevant. Just as any consumer packaged goods company might gather a focus group before developing their next toothpaste, Apple gathered face data in order to develop Face ID. 

I often argue with people over whether companies like Google, Facebook, and Apple do research. My argument is that for the most part, they do not, because they are not interested in creating new knowledge. They do not make any specific public claims or inferences about the data they've gathered and so there isn't really anything for them to defend. They are interested in taking whatever information they collected and channeling it into products. Yes, all of these companies occasionally publish a paper (I think Apple has a [grand total of five](https://machinelearning.apple.com)), and I would say that those papers represent real research. But I would wager that those papers represent a small fraction of the work going on in those companies.

As a side note, [Mark Neuman](https://twitter.com/mdneuman) on Twitter suggested that this kind of work does qualify as research for the purposes of evaluating the ethical treatment of research sbjects. I would have to agree here, and I would hope that all of these companies obtain proper informed consent from subjects before collecting their data (at least their lawyers spend a lot of time thinking about it). The fact that these companies may be collecting these data for product development and not for research doesn't absolve them of the need to treat subjects properly. 









