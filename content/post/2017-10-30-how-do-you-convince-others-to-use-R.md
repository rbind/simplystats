---
title: "How do you convince other people to use R?"
author: Roger Peng
date: '2017-10-30'
slug: how-do-you-convince-others-to-use-r
---

I just got back from the [rOpenSci OzUnconf](http://ozunconf17.ropensci.org) that was run in Melbourne last week. I’d like to give a big thanks to the organizers (Nick Tierney, Di Cook, Rob Hyndman and others) for putting on a great unconference. These events are always a great opportunity to meet people just getting started in the R community and to get them involved. 

As is typical for these unconferences, topic ideas were pitched via issues on the [OzUnconf GitHub repo](https://github.com/ropensci/ozunconf17/issues/). One issue that I filed was titled [“How do you pitch R to new users?”](https://github.com/ropensci/ozunconf17/issues/30). While this issue was not taken up during the unconference (for good reason, I think), Nick was kind enough to initiate a lunch time discussion of the topic (with [Daniel Falster](http://twitter.com/adaptive_plant) kindly taking notes). 

The topic came up in my mind because I’ve found that I’ve had to change the way that I “sell” R to new users. Through various discussions at the unconference and in many other venues, I’ve found that many R users, even today, are the “lone R user” in their group/institution/organization. While they may enjoy using R, it’s often made difficult by the fact that others in their group do not use R and therefore there is some negotiation over “how things get done”. Convincing others in the group to use R is one way to go (I suppose abandoning R is the other) and the question of how best to do this for different audiences is the question that arose in my mind. As a teacher, you can usually design the curriculum so that the students are forced to use R. But in most other environments, a different approach is needed.

As part of the introduction to the topic, I talked about how I used to convince others to use R. Bear in mind, this was almost 20 years ago and the majority of people I was talking to were using SAS, Stata, SPSS, Excel, or some other commercial package. These were largely interactive packages, perhaps with graphical user interfaces, designed to do more or less traditional statistical analyses. My pitch usually involved three things:

1. **Free**. R was both free as in cost and free as in [free software](http://www.fsf.org). The free cost part made it a highly accessible package and the free software part allowed for anyone to tinker with the package, inspect its code, and make improvements.
  2. **Graphics**.  R was able to produce high quality “publication ready” graphics and it gave you detailed control over all the graphical elements. S-PLUS could also do this but S-PLUS didn’t come with the free part mentioned above.
  3. **Programming language**. Unlike packages like SAS, Stata, or SPSS, R came with a robust and sophisticated Lisp-like programming language that was well-suited for data analysis applications. In addition, you could use it to build packages that could extend the core R system.

Much has changed since those early days and I’ve varied my pitch quite a bit to focus on a few different things (that didn’t exist back then). In particular, the audience has changed—I talk to many more people who are just getting started in data analysis and therefore are a bit more open-minded about which software to use. Also, python has come on the scene as a viable alternative to R for data science and so there are even more arguments to consider. Some of the things I focus on now are

1. **Reproducibility  and Reporting**. With the development of knitr and its combination with R Markdown, the writing of reproducible reports was made infinitely easier. (Markdown itself, probably deserves its own discussion, but it’s not specifically R-related.)
2. **RStudio**. The development of the RStudio IDE has made getting started with R much easier. Having a powerful IDE was important to me for learning other languages and I’m glad R finally has something solid for itself. RStudio has significantly simplified the development of R packages via devtools and roxygen2. While it’s not yet perfect, these tools have changed what used to be a labor-intensive and finicky process into a more manageable and easier to learn work flow.
3. **Graphics**. R still has the ability to make great data graphics and with the introduction of `ggplot2`, it has become easier to make good graphics.
4. **R Packages and Community**. With over 10,000 packages on CRAN alone, [there’s pretty much a package to do anything](https://youtu.be/yhTerzNFLbo). More importantly, the people contributing those packages and the greater R community have expanded tremendously over time, bringing in new users and pushing R to be useful in more applications. Eveyr year now there are probably hundreds if not thousands of meetups, conferences, seminars, and workshops all around the world, all related to R.

## Discussion

At the unconference, a number of people had different approaches to how to convince others to use R. Here are just a summary:

* Someone mentioned the [Bioconductor](http://bioconductor.org), which is a huge resource for those doing research in the world of high throughput biology. Not many other packages have something similar so it makes an obvious selling point to people working in this area
* The idea of using R end-to-end came up, meaning using R to clean up messy data and taking it all the way to some interactive Shiny app on the other end. The idea that you can use the same tool to do all the things in between made for a compelling case for R.
* For the spreadsheet audience, the `dplyr` package was sometimes a good selling point. The idea here was that you could show people how much time could be saved by automating analyses and using `dplyr` to clean up data.
* The open source nature of R came up a few times, primarily as a means for developing transferable skills. If you work at a company/institution that specializes in some proprietary package, it’s often difficult to transfer those skills somewhere else if your new job doesn’t use that package. The fact that R is open source means that, in theory, you could use it anywhere and the skills that you build up in R are (again, in theory) applicable everywhere.
* Someone mentioned that if you want to convince someone to learn/use R, just show them the multitude of jobs available to R programmers (and in particular, the salaries attached to them). 
* The fact that R is obtainable for free is still important, given that Matlab and SAS licenses have not gotten any cheaper over time. In my experience, this is particularly important in non-industrialized countries where for many people paying for expensive licenses is not an option.

This just a brief summary of our discussion at the unconference and I was heartened to see all of the enthusiasm for R there. Even with R’s incredible growth over the last 20 years, there will still come a time when a case needs to be made to use R over something else. I’m just glad that we have so many more reasons today than we used to. 
