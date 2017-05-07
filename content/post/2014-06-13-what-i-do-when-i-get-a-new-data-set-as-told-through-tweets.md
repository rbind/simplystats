---
id: 3132
title: What I do when I get a new data set as told through tweets
date: 2014-06-13T09:06:18+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_658832274172632
al2fb_facebook_link_time:
  - 2014-06-13T13:06:23+00:00
al2fb_facebook_link_picture:
  - post=http://changeprocessdesign.files.wordpress.com/2009/11/6-blind-men-hans.jpg
dsq_thread_id:
  - 2761093939
categories:
  - Uncategorized
slug: "what-i-do-when-i-get-a-new-data-set-as-told-through-tweets"
---
Hilary Mason asked a really interesting question yesterday:

<blockquote class="twitter-tweet" lang="en">
  <p>
    Data people: What is the very first thing you do when you get your hands on a new data set?
  </p>
  
  <p>
    — Hilary Mason (@hmason) <a href="https://twitter.com/hmason/statuses/476905839035305984">June 12, 2014</a>
  </p>
</blockquote>

You should really consider reading the whole discussion [here](https://twitter.com/hmason/status/476905839035305984) it is amazing. But it also inspired me to write a post about what I do, as told by other people on Twitter. I apologize in advance if I missed your tweet, there was way too much good stuff to get them all.

**Step 0: Figure out what I'm trying to do with the data**

At least for me I come to a new data set in one of three ways: (1) I made it myself, (2) a  collaborator created a data set with a specific question in mind, or (3) a collaborator created a data set and just wants to explore it. In the first case and the second case I already know what the question is, although sometimes in case (2) I still spend a little more time making sure I understand the question before diving in. @visualisingdata and I think alike here:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> this will sound textbooky but I stop, look and think about "what's it about (phenomena, activity, entity etc). Look before see.
  </p>
  
  <p>
    — Andy Kirk (@visualisingdata) <a href="https://twitter.com/visualisingdata/statuses/476958934528704512">June 12, 2014</a>
  </p>
</blockquote>

  Usually this involves figuring out what the variables mean like @_jden does:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> try to figure out what the fields mean and how it's coded — :sandwich emoji: (@_jden) <a href="https://twitter.com/_jden/statuses/476907686307430400">June 12, 2014</a>
  </p>
</blockquote>

If I'm working with a collaborator I do what @evanthomaspaul does:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> Interview the source, if possible, to know all of the problems with the data, use limitations, caveats, etc. — Evan Thomas Paul (@evanthomaspaul) <a href="https://twitter.com/evanthomaspaul/statuses/476924149852827648">June 12, 2014</a>
  </p>
</blockquote>

If the data don't have a question yet, I usually start thinking right away about what questions can actually be answered with the data and what can't. This prevents me from wasting a lot of time later chasing trends. @japerk does something similar:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> figure out the format & how to read it. Then ask myself, what can be learned from this data? — Jacob (@japerk) <a href="https://twitter.com/japerk/statuses/476909485651279872">June 12, 2014</a>
  </p>
</blockquote>

**Step 1: Learn about the elephant** Unless the data is something I've analyzed a lot before, I usually feel like the [blind men and the elephant.](http://en.wikipedia.org/wiki/Blind_men_and_an_elephant)

[<img class="aligncenter" alt="" src="http://changeprocessdesign.files.wordpress.com/2009/11/6-blind-men-hans.jpg" width="293" height="188" />](http://changeprocessdesign.files.wordpress.com/2009/11/6-blind-men-hans.jpg)

So the first thing I do is fool around a bit to try to figure out what the data set "looks" like by doing things like what @jasonpbecker does looking at the types of variables I have, what the first few observations and last few observations look like.

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> sapply(df, class); head(df); tail(df) — Jason Becker (@jasonpbecker) <a href="https://twitter.com/jasonpbecker/statuses/476907832718397440">June 12, 2014</a>
  </p>
</blockquote>

If it is medical/social data I usually use this to look for personally identifiable information and then do what @peteskomoroch does:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> remove PII and burn it with fire — Peter Skomoroch (@peteskomoroch) <a href="https://twitter.com/peteskomoroch/statuses/476910403348209665">June 12, 2014</a>
  </p>
</blockquote>

If the data set is really big, I usually take a carefully chosen random subsample to make it possible to do my exploration interactively like @richardclegg

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> unless it is big data in which case sample then import to R and look for NAs... <img src="http://simplystatistics.org/wp-includes/images/smilies/simple-smile.png" alt=":-)" class="wp-smiley" style="height: 1em; max-height: 1em;" /> — Richard G. Clegg (@richardclegg) <a href="https://twitter.com/richardclegg/statuses/477113022658641920">June 12, 2014</a>
  </p>
</blockquote>

After doing that I look for weird quirks, like if there are missing values or outliers like @feralparakeet

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> ALL THE DESCRIPTIVES. Well, after reviewing the codebook, of course. — Vickie Edwards (@feralparakeet) <a href="https://twitter.com/feralparakeet/statuses/476913969962053634">June 12, 2014</a>
  </p>
</blockquote>

and like @cpwalker07

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> count # rows, read every column header — Chris Walker (@cpwalker07) <a href="https://twitter.com/cpwalker07/statuses/476922532596289536">June 12, 2014</a>
  </p>
</blockquote>

and like @toastandcereal

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a><a href="https://twitter.com/mispagination">@mispagination</a> jot down number of rows. That way I can assess right away whether I've done something dumb later on. — Jessica Balsam (@toastandcereal) <a href="https://twitter.com/toastandcereal/statuses/476949846377914368">June 12, 2014</a>
  </p>
</blockquote>

and like @cld276

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> run a bunch of count/groupby statements to gauge if I think it's corrupt. — Carol Davidsen (@cld276) <a href="https://twitter.com/cld276/statuses/476908703493677056">June 12, 2014</a>
  </p>
</blockquote>

and @adamlaiacano

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> summary() — Adam Laiacano (@adamlaiacano) <a href="https://twitter.com/adamlaiacano/statuses/476906966049374208">June 12, 2014</a>
  </p>
</blockquote>

**Step 2: Clean/organize** I usually use the first exploration to figure out things that need to be fixed so that I can mess around with a [tidy data set](http://vita.had.co.nz/papers/tidy-data.pdf). This includes fixing up missing value encoding like @chenghlee

<blockquote class="twitter-tweet" lang="en">
  <p>
    .<a href="https://twitter.com/hmason">@hmason</a> Often times, "fix" various codings, esp. for missing data (e.g., mixed strings & ints for coded vals; decide if NAs, "" are equiv.) — Cheng H. Lee (@chenghlee) <a href="https://twitter.com/chenghlee/statuses/476919091056226306">June 12, 2014</a>
  </p>
</blockquote>

or more generically like: @RubyChilds

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> clean it — Ruby ˁ˚ᴥ˚ˀ (@RubyChilds) <a href="https://twitter.com/RubyChilds/statuses/476932385913569282">June 12, 2014</a>
  </p>
</blockquote>

I usually do a fair amount of this, like @the_turtle too:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> Spend the next two days swearing because nobody cleaned it. — The Turtle  (@the_turtle) <a href="https://twitter.com/the_turtle/statuses/476907578404786176">June 12, 2014</a>
  </p>
</blockquote>

When I'm done I do a bunch of sanity checks and data integrity checks like @deaneckles and if things are screwed up I got back and fix them:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/treycausey">@treycausey</a> <a href="https://twitter.com/hmason">@hmason</a> Test really boring hypotheses. Like num_mobile_comments <= num_comments. — Dean Eckles (@deaneckles) <a href="https://twitter.com/deaneckles/statuses/476911179361972224">June 12, 2014</a>
  </p>
</blockquote>

 **Step 3: Plot. That. Stuff.** After getting a handle with mostly text based tables and output (things that don't require a graphics device) and cleaning things up a bit I start with plotting everything like @hspter

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> usually head(data) then straight to visualization. Have been working on some "unit tests" for data as well <a href="https://t.co/6Qd3URmzpe">https://t.co/6Qd3URmzpe</a> — Hilary Parker (@hspter) <a href="https://twitter.com/hspter/statuses/476915876927520768">June 12, 2014</a>
  </p>
</blockquote>

At this stage my goal is to get the maximum amount of information about the data set in the minimal amount of time. So I do not make the graphs pretty (I think there is a distinction between exploratory and expository graphics). I do histograms and jittered one d plots to look at variables one by one like @FisherDanyel

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/TwoHeadlines">@TwoHeadlines</a><a href="https://twitter.com/hmason">@hmason</a> After looking at a few hundred random rows? Histograms & scatterplots of columns to understand what I have. — Danyel Fisher (@FisherDanyel) <a href="https://twitter.com/FisherDanyel/statuses/477206626558951425">June 12, 2014</a>
  </p>
</blockquote>

To compare the distributions of variables I usually use overlayed density plots like @sjwhitworth

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> density plot all the things!
  </p>
  
  <p>
    — Stephen Whitworth (@sjwhitworth) <a href="https://twitter.com/sjwhitworth/statuses/476953907424657408">June 12, 2014</a>
  </p>
</blockquote>

I make tons of scatterplots to look at relationships between variables like @wduyck

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/hmason">@hmason</a> plot scatterplots and distributions
  </p>
  
  <p>
    — Wouter Duyck (@wduyck) <a href="https://twitter.com/wduyck/statuses/476979620706013184">June 12, 2014</a>
  </p>
</blockquote>

I usually color/size the dots in the scatterplots by other variables to see if I can identify any confounding relationships that might screw up analyses downstream. Then, if the data are multivariate, I do some dimension reduction to get a feel for high dimensional structure. Nobody mentioned principal components or hierarchical clustering in the Twitter conversation, but I end up using these a lot to just figure out if there are any weird multivariate dependencies I might have missed.

**Step 4: Get a quick and dirty answer to the question from Step 1**

After I have a feel for the data I usually try to come up with a quick and dirty answer to the question I care about. This might be a simple predictive model (I usually use 60% training, 40% test) or a really basic regression model when possible, just to see if the signal is huge, medium or subtle. I use this as a place to start when doing the rest of the analysis. I also often check this against the intuition of the person who generated the data to make sure something hasn't gone wrong in the data set.
