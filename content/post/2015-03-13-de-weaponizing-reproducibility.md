---
id: 3925
title: De-weaponizing reproducibility
date: 2015-03-13T10:24:05+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_780905105298681
al2fb_facebook_link_time:
  - 2015-03-13T14:24:13+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 3592233663
categories:
  - Uncategorized
slug: "de-weaponizing-reproducibility"
---
<div>
  A couple of weeks ago Roger and I went to a <a href="http://sites.nationalacademies.org/DEPS/BMSA/DEPS_153236">conference on statistical reproducibility </a>held at the National Academy of Sciences. The discussion was pretty wide ranging and I love that the thinking about reproducibility is coming back to statistics. There was pretty widespread support for the idea that prevention is the <a href="http://arxiv.org/abs/1502.03169">right way to approach reproducibility</a>.
</div>

<div>
</div>

<div>
  It turns out I was the last speaker of the whole conference. This is an unenviable position to be in with so many bright folks speaking first as they covered a huge amount of what I wanted to say. <a href="http://www.slideshare.net/jtleek/evidence-based-data-analysis">My talk focused on three key points:</a>
</div>

<div>
</div>

  1. The tools for reproducibility already exist, the barrier isn't tools
  2. We need to de-weaponize reproducibility
  3. Prevention is the right approach to reproducibility

&nbsp;

In terms of the first point, [tools like iPython, knitr, and Galaxy ](http://simplystatistics.org/2014/09/04/why-the-three-biggest-positive-contributions-to-reproducible-research-are-the-ipython-notebook-knitr-and-galaxy/)can be used to all but the absolutely largest analysis reproducible right now.  Our group does this all the time with our papers and so do many others. The problem isn't a lack of tools.

Speaking to point two, I think many people would agree that part of the issue is culture change. One issue that is increasingly concerning to me is the "weaponization" of reproducibility.  I have been noticing is that some of us (like me, my students, other folks at JHU, and lots of particularly junior computational people elsewhere) are trying really hard to be reproducible. Most of the time this results in really positive reactions from the community. But when a co-author of mine and I wrote that paper about the [science-wise false discovery rate](http://biostatistics.oxfordjournals.org/content/early/2013/09/24/biostatistics.kxt007.abstract), one of the discussants used our code (great), improved on it (great), identified a bug (great), and then did his level best to humiliate us both in front of the editor and the general public because of that bug ([not so great](http://simplystatistics.org/2013/09/26/how-could-code-review-discourage-code-disclosure-reviewers-with-motivation/)).

<div>
</div>

<div>
  I have seen this happen several times. Most of the time if a paper is reproducible the authors get a pat on the back and their code is either ignored, or used in a positive way. But for high-profile and important problems, people  largely use eproducibility to:
</div>

<div>
</div>

  1.  Impose regulatory hurdles in the short term while people transition to reproducibility. One clear example of this is the [Secret Science Reform Act](https://www.congress.gov/bill/113th-congress/house-bill/4012) which is a bill that imposes strict reproducibility conditions on all science before it can be used as evidence for regulation.
  2. Humiliate people who aren't good coders or who make mistakes in their code. This is what happened in my paper when I produced reproducible code for my analysis, but has also happened [to other people](http://simplystatistics.org/2014/01/28/marie-curie-says-stop-hating-on-quilt-plots-already/).
  3. Take advantage of people's code to plagiarize/straight up steal work. I have stories about this I'd rather not put on the internet

&nbsp;

Of the three, I feel like (1) and (2) are the most common. Plagiarism and scooping by theft I think are actually relatively rare based on my own anecdotal experience. But I think that the "weaponization" of reproducibility to block regulation or to humiliate folks who are new to computational sciences is more common than I'd like it to be. Until reproducibility is the standard for everyone - which I think is possible now and will happen as the culture changes -  the people who are the early adopters are at risk of being bludgeoned with their own reproducibility. As a community, if we want widespread reproducibility adoption we have to be ferocious about not allowing this to happen.
