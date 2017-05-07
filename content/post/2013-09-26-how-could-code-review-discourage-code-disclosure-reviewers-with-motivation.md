---
id: 1901
title: How could code review discourage code disclosure? Reviewers with motivation.
date: 2013-09-26T11:08:00+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_546971815358679
al2fb_facebook_link_time:
  - 2013-09-26T15:08:10+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 1799220606
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
categories:
  - Uncategorized
slug: "how-could-code-review-discourage-code-disclosure-reviewers-with-motivation"
---
[](http://www.nature.com/news/mozilla-plan-seeks-to-debug-scientific-code-1.13812) appeared a couple of days ago in Nature describing Mozilla's efforts to implement code review for scientific papers. As anyone who follows our blog knows, we are in favor of reproducible research, in favor of disclosing code, and in favor of open science.

So people were surprised when they saw this quote from Roger at the end of the Nature piece:

> “One worry I have is that, with reviews like this, scientists will be even more discouraged from publishing their code. We need to get more code out there, not improve how it looks.”

Not surprisingly a bunch of reproducible research/open science people were quick to jump on this quote:

<blockquote class="twitter-tweet" width="550">
  <p>
    .<a href="https://twitter.com/kaythaney">@kaythaney</a> re code review story, <a href="http://t.co/7rlAsmLuPw">http://t.co/7rlAsmLuPw</a> comment by <a href="https://twitter.com/simplystats">@simplystats</a> seems off to me... must be more nuance there <img src="http://simplystatistics.org/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" />
  </p>
  
  <p>
    &mdash; Titus Brown (@ctitusbrown) <a href="https://twitter.com/ctitusbrown/status/382562811039064064">September 24, 2013</a>
  </p>
</blockquote>



<blockquote class="twitter-tweet" width="550">
  <p>
    <a href="https://twitter.com/nickbarnes">@nickbarnes</a> <a href="https://twitter.com/cboettig">@cboettig</a> <a href="https://twitter.com/ctitusbrown">@ctitusbrown</a> agree. comment lead with this backfiring / discouraging others to make code available, which seemed off.
  </p>
  
  <p>
    &mdash; Kaitlin Thaney (@kaythaney) <a href="https://twitter.com/kaythaney/status/382819174206423040">September 25, 2013</a>
  </p>
</blockquote>



Now, Roger's quote was actually a little more nuanced and it was posted after a pretty in-depth discussion on Twitter:

<blockquote class="twitter-tweet" width="550">
  <p>
    <a href="https://twitter.com/ctitusbrown">@ctitusbrown</a> <a href="https://twitter.com/cboettig">@cboettig</a> <a href="https://twitter.com/kaythaney">@kaythaney</a> <a href="https://twitter.com/nickbarnes">@nickbarnes</a> see whole <a href="https://twitter.com/simplystats">@simplystats</a> quote on prof. code review discouraging sharing <a href="http://t.co/pNQWT9Safz">pic.twitter.com/pNQWT9Safz</a>
  </p>
  
  <p>
    &mdash; Erika Check Hayden (@Erika_Check) <a href="https://twitter.com/Erika_Check/status/382911015358181376">September 25, 2013</a>
  </p>
</blockquote>



But I think the real source of confusion was best summed up by Titus B.:

<blockquote class="twitter-tweet" width="550">
  <p>
    .<a href="https://twitter.com/cboettig">@cboettig</a> <a href="https://twitter.com/kaythaney">@kaythaney</a> <a href="https://twitter.com/nickbarnes">@nickbarnes</a> As one of my grad students said to me, "I don't understand why 'must share code' is a radical opinion."
  </p>
  
  <p>
    &mdash; Titus Brown (@ctitusbrown) <a href="https://twitter.com/ctitusbrown/status/382904483102982145">September 25, 2013</a>
  </p>
</blockquote>



That is the key issue. People are surprised that sharing code would be anything but an obvious thing to do. To people who share code all the time, this is an obvious no-brainer. My bias is clearly in that camp as well. I require reproducibility of my students analyses, I discuss reproducible research when I teach, I take my own medicine by making my analyses reproducible, and I frequently state in reviews that papers are only acceptable after the code is available.

_So what's the big deal?_

In an incredibly interesting coincidence, I [had a paper](http://simplystatistics.org/2013/09/25/is-most-science-false-the-titans-weigh-in/) come out the same week in Biostatistics that has been uh...little controversial.

In this case, our paper was published with discussion. For people outside of statistics, a discussant and a reviewer are different things. The paper first goes through peer review in the usual way. Then, once it is accepted for publication, it is sent out to discussants to read and comment on.

A couple of discussants were very, very motivated to discredit our approach. Despite this, because we believe in open science, stating our assumptions, and being reproducible, we made all of the code we used and data we collected available for the discussants (and for everyone else). In an awesome win for open science, many of the discussants used/evaluated our code in their discussions.

One of the very motivated discussants identified an actual bug in the code. This bug caused the journal names to be scrambled in Figures 3 and 4. The bug (thank goodness!) did not substantively alter the methods, the results or the conclusions of our paper. On top of it, the cool thing about having our code on github meant we could carefully look it over, fix the bug, and push the changes to the repository (and update the paper) so the discussant could see the revised version as soon as we pushed it.

We were happy that the discussant didn't find any more substantial bugs (because we knew they were motivated to review our code for errors as carefully as possible). We were also happy to make the changes, admit our mistake and move on.

An interesting thing happened though. The motivated discussant wanted to discredit our approach. So they included in the supplement how they noticed the bug (totally fair game, it was a bug). But they also included their email exchange with the editor about the bug and this quote:

> As all seasoned methodologists know, minor coding errors causing total havoc is quite common (I have seen it happen in my own work).  I think that it is ironic that a paper that claims to prove the reliability of the literature had completely messed up the two main figures that represent the core of all its data and its main results.

A couple of points here: (1) the minor bug didn't wreak havoc with our results, it didn't change any conclusions and it didn't affect our statistics and (2) the statement is clearly designed for the sole purpose of embarrassing us (the authors) and discrediting our work.

The problem here is that the code reviewer deeply cares about us being wrong. This incident highlights one reason for Roger's concerns. I feel we acted in pretty good faith here to try to be honest about our assumptions and open with our code. We also responded quickly and thoroughly to the report of a bug. But the discussant used the fact that we had a bug at all to try to discredit our whole analysis with sarcasm. This sort of thing could absolutely discourage a person from releasing code.

One thing the discussant is absolutely right about is that most code will have minor bugs. Personally, I'm very grateful to the discussant for catching the bug before the work was published and I'm happy that we made the code available and corrected our mistake.

_But the key risk here is that people who demand reproducible code do so only so they can try to embarrass analysts and discredit science they don't like. _

If we want people to make code available, be willing to admit mistakes, and continuously update their code then we don't just need code review. We need a policy and commitment from the community to not just use reproducible research as a vehicle for embarrassment and discrediting each other. We need a policy that:

  1. Doesn't discourage people from putting code up before papers are published for fear of embarrassment.
  2. Acknowledges minor bugs happen and doesn't penalize people for admitting them/fixing them.
  3. Prevents people from publishing when they have major typos, but doesn't humiliate them.
  4. Defines specific, positive ways that code sharing can benefit the community (collaboration) rather than only reporting errors that are discovered when code is made available.
  5. Recognizes that most scientists are not professional software developers and focuses review on the scientific correctness/reproducibility of code, rather than technical software development skills.

One way I think we could address a lot of these issues is not to think of it as code review, but as code evaluation and update. <span style="font-size: 16px;">That is one thing I really like about Mozilla's approach - they report their findings to the authors and let them respond. </span><span style="font-size: 16px;">The only thing that would be better is if Mozilla actually created patches/bug fixes for the code and issued pull requests that the authors could incorporate. </span>

Ultimately, I hope we can focus on a way to make scientific software correct, not just point out how it is wrong.
