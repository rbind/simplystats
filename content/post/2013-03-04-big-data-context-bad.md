---
id: 1065
title: 'Big Data - Context = Bad'
date: 2013-03-04T10:00:24+00:00
author: Roger Peng
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_468967259825802
al2fb_facebook_link_time:
  - 2013-03-04T15:00:49+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1117384326
categories:
  - Uncategorized
slug: "big-data-context-bad"
---
There's a nice article by Nick Bilton in the New York Times Bits blog about [the need for context when looking at Big Data](http://bits.blogs.nytimes.com/2013/02/24/disruptions-google-flu-trends-shows-problems-of-big-data-without-context/?smid=pl-share). Actually, the article starts off by describing how Google's Flu Trends model overestimated the number of people infected with flue in the U.S. this season, but then veers off into a more general discussion about Big Data.

My favorite quote comes from Mark Hansen:

> “Data inherently has all of the foibles of being human,” said [Mark Hansen](http://www.journalism.columbia.edu/profile/428-mark-hansen/10 "More about Dr. Hansen."), director of the David and [Helen Gurley Brown](http://topics.nytimes.com/top/reference/timestopics/people/b/helen_gurley_brown/index.html?inline=nyt-per "More articles about Helen Gurley Brown.") Institute for Media Innovation at [Columbia University](http://topics.nytimes.com/top/reference/timestopics/organizations/c/columbia_university/index.html?inline=nyt-org "More articles about Columbia University."). “Data is not a magic force in society; it’s an extension of us.”

Bilton also talks about a course he taught where students built sensors to install in elevators and stairwells at NYU to see how often they were used. The idea was to explore how often and when the NYU students used the stairs versus the elevator.

> As I left campus that evening, one of the N.Y.U. security guards who had seen students setting up the computers in the elevators asked how our experiment had gone. I explained that we had found that students seemed to use the elevators in the morning, perhaps because they were tired from staying up late, and switch to the stairs at night, when they became energized.
> 
> “Oh, no, they don’t,” the security guard told me, laughing as he assured me that lazy college students used the elevators whenever possible. “One of the elevators broke down a few evenings last week, so they had no choice but to use the stairs.”

I can see at least three problems here, not necessarily mutually exclusive:

  1. <span style="line-height: 16px"><strong>Big Data are often "Wrong" Data</strong>. The students used the sensors measure something, but it didn't give them everything they needed. Part of this is that the sensors were cheap, and budget was likely a big constraint here. But Big Data are often big <em>because</em> they are cheap. But of course, they still couldn't tell that the elevator was broken.</span>
  2. **A failure of interrogation**. With all the data the students collected with their multitude of sensors, they were unable to answer the question "What else could explain what I'm observing?"
  3. **A strong desire to tell a story**. Upon looking at the data, they seemed to "make sense" or to at least match a preconceived notion of that they should look like. This is related to #2 above, which is that you have to challenge what you see. It's very easy and tempting to let the data tell an interesting story rather than the right story.

I don't mean to be unduly critical of some students in a class who were just trying to collect some data. I think there should be more of that going on. But my point is that it's not as easy as it looks. Even trying to answer a seemingly innocuous question of how students use elevators and stairs requires some forethought, study design, and careful analysis.

&nbsp;
