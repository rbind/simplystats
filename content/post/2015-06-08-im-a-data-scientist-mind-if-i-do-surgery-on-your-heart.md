---
id: 4068
title: "I'm a data scientist - mind if I do surgery on your heart?"
date: 2015-06-08T14:15:39+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_817296171659574
al2fb_facebook_link_time:
  - 2015-06-08T18:15:47+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3832067587
categories:
  - Uncategorized
slug: "im-a-data-scientist-mind-if-i-do-surgery-on-your-heart"
---
There has been a lot of recent interest from scientific journals and from other folks in creating checklists for data science and data analysis. The idea is that the checklist will help prevent results that won't reproduce or replicate from the literature. One analogy that I'm frequently hearing is the analogy with checklists for surgeons that [can help reduce patient mortality](http://www.nejm.org/doi/full/10.1056/NEJMsa0810119).

The one major difference between checklists for surgeons and checklists I'm seeing for research purposes is the difference in credentialing between people allowed to perform surgery and people allowed to perform complex data analysis. You would never let me do surgery on you. I have no medical training at all. But I'm frequently asked to review papers that include complicated and technical data analyses, but have no trained data analysts or statisticians. The most common approach is that a postdoc or graduate student in the group is assigned to do the analysis, even if they don't have much formal training. Whenever this happens red flags are up all over the place. Just like I wouldn't trust someone without years of training and a medical license to do surgery on me, I wouldn't let someone without years of training and credentials in data analysis make major conclusions from complex data analysis.

You might argue that the consequences for surgery and for complex data analysis are on completely different scales. I'd agree with you, but not in the direction that you might think. I would argue that high pressure and complex data analysis can have much larger consequences than surgery. In surgery there is usually only one person that can be hurt. But if you do a bad data analysis, say claiming say that [vaccines cause autism](http://www.ncbi.nlm.nih.gov/pubmed/9500320), that can have massive consequences for hundreds or even thousands of people. So complex data analysis, especially for important results, should be treated with at least as much care as surgery.

The reason why I don't think checklists alone will solve the problem is that they are likely to be used by people without formal training. One obvious (and recent) example that I think makes this really clear is the [HealthKit](https://developer.apple.com/healthkit/) data we are about to start seeing. A ton of people signed up for studies on their iPhones and it has been all over the news. The checklist will (almost certainly) say to have a big sample size. HealthKit studies will certainly pass the checklist, but they are going to get [Truman/Deweyed](http://en.wikipedia.org/wiki/Dewey_Defeats_Truman) big time if they aren't careful about biased sampling.

<div>
  If I walked into an operating room and said I'm going to start dabbling in surgery I would be immediately thrown out. But people do that with statistics and data analysis all the time. What they really need is to require careful training and expertise in data analysis on each paper that analyzes data. Until we treat it as a first class component of the scientific process we'll continue to see retractions, falsifications, and irreproducible results flourish.
</div>
