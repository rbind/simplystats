---
id: 387
title: Interview with Victoria Stodden
date: 2011-11-04T16:06:05+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/12328728291/interview-with-victoria-stodden
tumblr_simplystatistics_id:
  - 12328728291
dsq_thread_id:
  - 933835465
categories:
  - Uncategorized
tags:
  - interview
  - Legal
  - reproducibility
  - Victoria Stodden
slug: "interview-with-victoria-stodden"
---
**Victoria Stodden**

<img height="300" width="250" src="http://biostat.jhsph.edu/~jleek/vcs.jpg" />

Victoria Stodden is an assistant professor of statistics at Columbia University in New York City. She moved to Columbia after getting her Ph.D. at Stanford University. Victoria has made major contributions to the area of reproducible research and has been appointed to the NSF&#8217;s Advisory Committee for Infrastructure. She is the recent recipient of an NSF grant for &#8220;Policy Design for Reproducibility and Data Sharing in Computational Science&#8221;

<!-- more -->

**Which term applies to you: data scientist/statistician/analyst (or something else)?**

Definitely statistician. My PhD is from the stats department at Stanford University.

**How did you get into statistics/data science (e.g. your history)?**

Since my undergrad days I’ve been motivated by problems in what’s called ‘social welfare economics.’ I interpret that as studying how people can best reach their potential, particularly how the policy environment affects outcomes. This includes the study of regulatory design, economic growth, access to knowledge, development, and empowerment. My undergraduate degree was in economics, and I thought I would carry on with a PhD in economics as well. I realized that folks with my interests were mostly doing empirical work so I thought I should prepare myself with the best training I could in statistics. Hence I chose to do a PhD in statistics to augment my data analysis capabilities as much as I could since I envisioned myself immersed in empirical research in the future.

**What is the problem currently driving you?**

Right now I’m working on the problem of reproducibility in our body of published computational science. This ties into my interests because of the critical role of knowledge and reasoning in advancing social welfare. Scientific research is becoming heavily computational and as a result the empirical work scientists do is becoming more complex and yet less tacit: the myriad decisions made in data filtering, analysis, and modeling are all recordable in code. In computational research there are so many details in the scientific process it is nearly impossible to communicate them effectively in the traditional scientific paper – rendering our published computational results unverifiable, if there isn’t access to the code and data that generated them.

Access to the code and data permits readers to check whether the descriptions in the paper correspond to the published results, and allows people to understand why independent implementations of the methods in the paper might produce differing results. It also puts the tools of scientific reasoning into people’s hands – this is new. For much of scientific research today all you need is an internet connection to download the reasoning associated with a particular result. Wide availability of the data and code is still largely a dream, but one the scientific community is moving towards.

**Who were really good mentors to you? What were the qualities that really helped you?**

My advisor, David Donoho, is an enormous influence. He is the clearest scientific thinker I have ever been exposed to. I’ve been so very lucky with the people who have come into my life. Through his example, Dave is the one who has had the most impact on how I think about and prioritize problems and how I understand our role as statisticians and scientific thinkers. He’s given me an example of how to do this and it’s hard to underestimate his influence in my life.

**What do you think are the barriers to reproducible research?**

At this point, incentives. There are many concrete barriers, which I talk about in my papers and talks (available on my website <a href="http://stodden.net" target="_blank"><a href="http://stodden.net" target="_blank">http://stodden.net</a></a>), but they all stem from misaligned incentives. If you think about it, scientists do lots of things they don’t particularly like in the interest of research communication and scientific integrity. I don’t know any computational scientist who really loves writing up their findings into publishable articles for example, but they do. This is because the right incentives exist. A big part of the work I am doing concerns the scientific reward structure.  For example, my work on the Reproducible Research Standard is an effort to realign the intellectual property rules scientists are subject to, to be closer to our scientific norms. Scientific norms create the incentive structure for the production of scientific research, providing rewards for doing things people might not do otherwise. For example, scientists have a long established norm of giving up all intellectual property rights over their work in exchange for attribution, which is the currency of success. It’s the same for sharing the code and data that underlies published results – not part of the scientific incentive and reward structure today but becoming so, through adjusting a variety of other factors like finding agency policy, journal publication policy, and expectations at the institutional level.

**What have been some success stories in reproducible research?**

I can’t help but point to my advisor, David Donoho. An example he gives is his release of <a href="http://www-stat.stanford.edu/~wavelab" target="_blank"><a href="http://www-stat.stanford.edu/~wavelab" target="_blank">http://www-stat.stanford.edu/~wavelab</a></a> - the first implementation of wavelet routines in MATLAB, before MATLAB included their own wavelet toolbox.  The release of the Wavelab code was a factor that he believes made him one of the top 5 highly cited authors in Mathematics in 2000.

Hiring and promotion committees seem to be starting to recognize the difference between candidates that recognize the importance of reproducibility and clear scientific communication, compared to others who seem to be wholly innocent of these issues.

There is a nascent community of scientific software developers that is achieving remarkable success.  I co-organized a workshop this summer bringing some of these folks together, see <a href="http://www.stodden.net/AMP2011" target="_blank"><a href="http://www.stodden.net/AMP2011" target="_blank">http://www.stodden.net/AMP2011</a></a>. There are some wonderful projects underway to assist in reproducibility, from workflow tracking to project portability to unique identifiers for results reproducible in the cloud. Fascinating stuff.

**Can you tell us a little about the legal ramifications of distributing code/data?**

Sure. Many aspects of our current intellectual property laws are quite detrimental to the sharing of code and data. I’ll discuss the two most impactful ones. Copyright creates exclusive rights vested in the author for original expressions of ideas – and it’s a default. What this means is that your expression of your idea – your code, your writing, figures you create – are by default copyright to you. So for your lifetime and 70+ years after that, you (or your estate) need to give permission for the reproduction and re-use of the work – this is exactly counter to scientific norms or independent verification and building on others’ findings. The Reproducible Research Standard is a suite of licenses that permit scientists to set the terms of use of their code, data, and paper according to scientific norms: use freely but attribute. I have written more about this here: <a href="http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=4720221" target="_blank"><a href="http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=4720221" target="_blank">http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=4720221</a></a>

In 1980 Congress passed the Bayh-Dole Act, which was designed to create incentives for access to federally funded scientific discoveries by securing ownership rights for universities with regard to inventions by their researchers. The idea was that these inventions could then by patented and licensed by the university, making the otherwise unavailable technology available for commercial development. Notice that Bayh-Dole was passed on the eve of the computer revolution and Congress could not have foreseen the future importance of code to scientific investigation and its subsequent susceptibility to patentability. The patentability of scientific code now creates incentives to keep the code hidden: to avoid creating prior art in order to maximize the chance of obtaining the patent, and to keep hidden from potential competitors any information that might be involved in commercialization. Bayh-Dole has created new incentives for computational scientists – that of startups and commercialization – that must be reconciled with traditional scientific norms of openness.

**Related Posts:** Jeff&#8217;s interviews with <a href="http://simplystatistics.tumblr.com/post/11436138110/interview-with-daniela-witten" target="_blank">Daniela Witten</a> and <a href="http://simplystatistics.tumblr.com/post/11729003971/interview-with-chris-barr" target="_blank">Chris Barr</a>. Roger&#8217;s <a href="http://simplystatistics.tumblr.com/post/12243614318/i-gave-a-talk-on-reproducible-research-back-in" target="_blank">talk on reproducibility</a> 
