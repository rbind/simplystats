---
id: 4409
title: How I decide when to trust an R package
date: 2015-11-06T13:41:02+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_880286288693895
al2fb_facebook_link_time:
  - 2015-11-06T18:41:11+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/11/Screen-Shot-2015-11-06-at-1.25.01-PM.png
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4295874972
categories:
  - Uncategorized
slug: "how-i-decide-when-to-trust-an-r-package"
---
One thing that I've given a lot of thought to recently is the process that I use to decide whether I trust an R package or not. Kasper Hansen took a break from [trolling me](https://twitter.com/KasperDHansen/status/657589509975076864) [on Twitter](https://twitter.com/KasperDHansen/status/621315346633519104) to talk about how he trusts packages on Github less than packages that are on CRAN and particularly Bioconductor.  A couple of points he makes that I think are very relevant. First, that having a package on CRAN/Bioconductor raises trust in that package:

<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    .<a href="https://twitter.com/michaelhoffman">@michaelhoffman</a> But it's not on Bioconductor or CRAN. This decreases trust substantially.
  </p>
  
  <p>
    &mdash; Kasper Daniel Hansen (@KasperDHansen) <a href="https://twitter.com/KasperDHansen/status/659777449098637312">October 29, 2015</a>
  </p>
</blockquote>



The primary reason is because Bioc/CRAN demonstrate something about the developer's willingness to do the boring but critically important parts of package development like documentation, vignettes, minimum coding standards, and being sure that their code isn't just a rehash of something else. The other big point Kasper made was the difference between a repository - which is user oriented and should provide certain guarantees and Github - which is a developer platform and makes things easier/better for developers but doesn't have a user guarantee system in place.

<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    .<a href="https://twitter.com/StrictlyStat">@StrictlyStat</a> CRAN is a repository, not a development platform. It is user oriented, not developer oriented. GH is the reverse.
  </p>
  
  <p>
    &mdash; Kasper Daniel Hansen (@KasperDHansen) <a href="https://twitter.com/KasperDHansen/status/661746848437243904">November 4, 2015</a>
  </p>
</blockquote>



This discussion got me thinking about when/how I depend on R packages and how I make that decision. The scenarios where I depend on R packages are:

  1. Quick and dirty analyses for myself
  2. Shareable data analyses that I hope are reproducible
  3. As dependencies of R packages I maintain

As you move from 1-3 it is more and more of a pain if the package I'm depending on breaks. If it is just something I was doing for fun, its not that big of a deal. But if it means I have to rewrite/recheck/rerelease my R package than that is a much bigger headache.

So my scale for how stringent I am about relying on packages varies by the type of activity, but what are the criteria I use to measure how trustworthy a package is? For me, the criteria are in this order:

  1. **People prior **
  2. **Forced competence**
  3. **Indirect data**

I'll explain each criteria in a minute, but the main purpose of using these criteria is (a) to ensure that I'm using a package that works and (b) to ensure that if the package breaks I can trust it will be fixed or at least I can get some help from the developer.

**People prior**

The first thing I do when I look at a package I might depend on is look at who the developer is. If that person is someone I know has developed widely used, reliable software and who quickly responds to requests/feedback then I immediately trust the package. I have a list of people like [Brian](https://en.wikipedia.org/wiki/Brian_D._Ripley), or [Hadley,](https://github.com/hadley) or [Jenny](https://github.com/jennybc), or [Rafa](http://rafalab.dfci.harvard.edu/index.php/software-and-data), who could post their package just as a link to their website and I would trust it. It turns out almost all of these folks end up putting their packages on CRAN/Bioconductor anyway. But even if they didn't I assume that the reason is either (a) the package is very new or (b) they have a really good reason for not distributing it through the normal channels.

**Forced competence**

For people who I don't know about or whose software I've never used, then I have very little confidence in the package a priori. This is because there are a ton of people developing R packages now with highly variable levels of commitment to making them work. So as a placeholder for all the variables I don't know about them, I use the repository they choose as a surrogate. My personal prior on the trustworthiness of a package from someone I don't know goes something like:

[<img class="aligncenter wp-image-4410 size-full" src="http://simplystatistics.org/wp-content/uploads/2015/11/Screen-Shot-2015-11-06-at-1.25.01-PM.png" alt="Screen Shot 2015-11-06 at 1.25.01 PM" width="843" height="197" srcset="http://simplystatistics.org/wp-content/uploads/2015/11/Screen-Shot-2015-11-06-at-1.25.01-PM-300x70.png 300w, http://simplystatistics.org/wp-content/uploads/2015/11/Screen-Shot-2015-11-06-at-1.25.01-PM-260x61.png 260w, http://simplystatistics.org/wp-content/uploads/2015/11/Screen-Shot-2015-11-06-at-1.25.01-PM.png 843w" sizes="(max-width: 843px) 100vw, 843px" />](http://simplystatistics.org/wp-content/uploads/2015/11/Screen-Shot-2015-11-06-at-1.25.01-PM.png)

This prior is based on the idea of forced competence. In general, you have to do more to get a package approved on Bioconductor than on CRAN (for example you have to have a good vignette) and you have to do more to get a package on CRAN (pass R CMD CHECK and survive the review process) than to put it on Github.

This prior isn't perfect, but it does tell me something about how much the person cares about their package. If they go to the work of getting it on CRAN/Bioc, then at least they cared enough to document it. They are at least forced to be minimally competent - at least at the time of submission and enough for the packages to still pass checks.

**Indirect data**

After I've applied my priors I then typically look at the data. For Bioconductor I look at the badges, like how downloaded it is, whether it passes the checks, and how well it is covered by tests. I'm already inclined to trust it a bit since it is on that platform, but I use the data to adjust my prior a bit. For CRAN I might look at the [download stats](http://cran-logs.rstudio.com/) provided by Rstudio. The interesting thing is that as John Muschelli points out, Github actually has the most indirect data available for a package:

<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    .<a href="https://twitter.com/KasperDHansen">@KasperDHansen</a> Flipside: CRAN has no issue pages, stars/ratings, outdated limits on size, and limited development cycle/turnover.
  </p>
  
  <p>
    &mdash; John Muschelli (@StrictlyStat) <a href="https://twitter.com/StrictlyStat/status/661746348409114624">November 4, 2015</a>
  </p>
</blockquote>



If I'm going to use a package that is on Github from a person who isn't on my prior list of people to trust then I look at a few things. The number of stars/forks/watchers is one thing that is a quick and dirty estimate of how used a package is. I also look very carefully at how many commits the person has submitted to both the package in question and in general all other packages over the last couple of months. If the person isn't actively developing either the package or anything else on Github, that is a bad sign. I also look to see how quickly they have responded to issues/bug reports on the package in the past if possible. One idea I haven't used but I think is a good one is to submit an issue for a trivial change to the package and see if I get a response very quickly. Finally I look and see if they have some demonstration their package works across platforms (say with a [travis badge](https://travis-ci.org/)). If the package is highly starred, frequently maintained, all issues are responded to and up-to-date, and passes checks on all platform then that data might overwhelm my prior and I'd go ahead and trust the package.

**Summary**

In general one of the best things about the R ecosystem is being able to rely on other packages so that you don't have to write everything from scratch. But there is a hard balance to strike with keeping the dependency list small. One way I maintain this balance is using the strategy I've outlined to worry less about trustworthy dependencies.
