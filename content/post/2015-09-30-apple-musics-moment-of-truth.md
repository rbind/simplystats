---
id: 4332
title: "Apple Music's Moment of Truth"
date: 2015-09-30T07:38:08+00:00
author: Roger Peng
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4178749331
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_866218166767374
al2fb_facebook_link_time:
  - 2015-09-30T11:40:17+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
categories:
  - Uncategorized
slug: "apple-musics-moment-of-truth"
---
Today is the day when Apple, Inc. learns whether it's brand new streaming music service, Apple Music, is going to be a major contributor to the bottom line or just another streaming service (JASS?). Apple Music launched 3 months ago and all new users are offered a 3-month free trial. Today, that free trial ends and the big question is how many people will start to **pay** for their subscription, as opposed to simply canceling it. My guess is that most people (> 50%) will opt to pay, but that's a complete guess. For what it's worth, I'll be paying for my subscription. After adding all this music to my library, I'd hate to see it all go away.

Back on August 18, 2015, consumer market research firm MusicWatch [released a study](http://www.businesswire.com/news/home/20150818005755/en#.VddbR7Scy6F) that claimed, among other things, that

> Among people who had tried Apple Music, 48 percent reported they are not currently using the service.

This would suggest that almost half of people who had signed up for the free trial period of Apple Music were not interested in using it further and would likely not pay for it once the trial ended. If it were true, it would be a blow to the newly launched service.

But how did MusicWatch arrive at its number? It claimed to have surveyed 5,000 people in its study. Shortly before the survey by MusicWatch was released, Apple claimed that about 11 million people had signed up for their new Apple Music service (because the service had just launched, everyone who had signed up was in the free trial period). Clearly, 5,000 people do not make up the entire population, so we have but a small sample of users.

What is the target that MusicWatch was trying to answer? It seems that they wanted to know the percentage of **all people who had signed up for Apple Music** that were still using the service. Can they make inference about the entire population from the sample of 5,000?

If the sample is representative and the individuals are independent, we could use the number 48% as an estimate of the percentage in the population who no longer use the service. The press release from MusicWatch did not indicate any measure of uncertainty, so we don't know how reliable the number is.

Interestingly, soon after the MusicWatch survey was released, Apple released a statement to the publication _The Verge_, stating that 79% of users who had signed up were still using the service (i.e. only 21% had stopped using it, as opposed to 48% reported by MusicWatch). In other words, Apple just came out and _gave us the truth_! This was unusual because Apple typically does not make public statements about newly launched products. I just found this amusing because I've never been in a situation where I was trying to estimate a parameter and then someone later just told me what its value was.

If we believe that Apple and MusicWatch were measuring the same thing in their analyses (and it's not clear that they were), then it would suggest that MusicWatch's estimate of the population percentage (48%) was quite far off from the true value (21%). What would explain this large difference?

  1. **Random variation**. It's true that MusicWatch's survey was a small sample relative to the full population, but the sample was still big with 5,000 people. Furthermore, the analysis was fairly simple (just taking the proportion of users still using the service), so the uncertainty associated with that estimate is unlikely to be that large.
  2. **Selection bias**. Recall that it's not clear how MusicWatch sampled its respondents, but it's possible that the way that they did it led them to capture a set of respondents who were less inclined to use Apple Music. Beyond this, we can't really say more without knowing the details of the survey process.
  3. **Respondents are not independent**. It's possible that the survey respondents are not independent of each other. This would primiarily affect the uncertainty about the estimate, making it larger than we might expect if the respondents were all independent. However, since we do not know what MusicWatch's uncertainty about their estimate was in the first place, it's difficult to tell if dependence between respondents could play a role. Apple's number, of course, has no uncertainty.
  4. **Measurement differences**. This is the big one, in my opinion. We don't know is how either MusicWatch or Apple defined "still using the service". You could imagine a variety of ways to determine whether a person was still using the service. You could ask "Have you used it in the last week?" or perhaps "Did you use it yesterday?" Responses to these questions would be quite different and would likely lead to different overall percentages of usage.
