---
id: 100
title: 'Interview with C. Titus Brown - Computational biologist and open access champion'
date: 2012-08-17T13:45:57+00:00
author: admin
tumblr_simplystatistics_id:
  - 29620679415
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/29620679415/interview-with-c-titus-brown-computational-biologist
dsq_thread_id:
  - 933907762
categories:
  - Uncategorized
tags:
  - bioinformatics
  - data
  - interview
  - open access
  - software
  - titus brown
slug: "interview-with-c-titus-brown-computational-biologist"
---
<div class="im">
  <strong>C. Titus Brown </strong>
</div>

<div class="im">
  <strong><br /></strong>
</div>

<div class="im">
  <strong><br /></strong>
</div>

<div class="im">
  <img height="300" src="http://biostat.jhsph.edu/~jleek/titus.jpg" width="300" />
</div>

<div class="im">
</div>

<div class="im">
  C. Titus Brown is an assistant professor in the Department of Computer Science and Engineering at Michigan State University. He develops computational software for next generation sequencing and the author of the blog, <a href="http://ivory.idyll.org/blog/" target="_blank">&#8220;Living in an Ivory Basement&#8221;</a>. We talked to Titus about open access (he publishes his unfunded grants online!), improving the reputation of PLoS One, his research in computational software development, and work-life balance in academics. 
</div>

<!-- more -->

<div class="im">
</div>

<div class="im">
</div>

<div class="im">
  <strong>Do you consider yourself a statistician, data scientist, computer scientist, or something else?</strong></p>
</div>

<span>Good question.  Short answer: apparently somewhere along the way I</span>  
<span>became a biologist, but with a heavy dose of &#8220;computational scientist&#8221;</span>  
<span>in there.</span>

<span>The longer answer?  Well, it&#8217;s a really long answer&#8230;</span>

<span>My first research was on Avida, a bottom-up model for evolution that</span>  
<span>Chris Adami, Charles Ofria and I wrote together at Caltech in 1993:</span>  
<a href="http://en.wikipedia.org/wiki/Avida" target="_blank"><a href="http://en.wikipedia.org/wiki/Avida" target="_blank">http://en.wikipedia.org/wiki/Avida</a></a><span>.  (Fun fact: Chris, Charles and I</span>  
<span>are now all faculty at Michigan State!  Chris and I have offices one</span>  
<span>door apart, and Charles has an office one floor down.)  Avida got me</span>  
<span>very interested in biology, but not in the undergrad &#8220;memorize stuff&#8221;</span>  
<span>biology &#8212; more in research.  This was computational science: using</span>  
<span>simple models to study biological phenomena.</span>

<span>While continuing evolution research, I did my undergrad in pure math at Reed</span>  
<span>College, which was pretty intense; I worked in the Software Development</span>  
<span>lab there, which connected me to a bunch of reasonably well known hackers</span>  
<span>including Keith Packard, Mark Galassi, and Nelson Minar.</span>

<span>I also took a year off and worked on Earthshine:</span>

<a href="http://en.wikipedia.org/wiki/Planetshine#Earthshine" target="_blank"><a href="http://en.wikipedia.org/wiki/Planetshine#Earthshine" target="_blank">http://en.wikipedia.org/wiki/Planetshine#Earthshine</a></a>

<span>and then rebooted the project as an RA in 1997, the summer after</span>  
<span>graduation.  This was mostly data analysis, although it included a</span>  
<span>fair amount of hanging off of telescopes adjusting things as the</span>  
<span>freezing winter wind howled through the Big Bear Solar Observatory&#8217;s</span>  
<span>observing room, aka &#8220;data acquisition&#8221;.</span>

<span>After Reed, I applied to a bunch of grad schools, including Princeton</span>  
<span>and Caltech in bio, UW in Math, and UT Austin and Ohio State in</span>  
<span>physics.  I ended up at Caltech, where I switched over to</span>  
<span>developmental biology and (eventually) regulatory genomics and genome</span>  
<span>biology in Eric Davidson&#8217;s lab.  My work there included quite a bit</span>  
<span>of wet bench biology, which is not something many people associate with me,</span>  
<span>but was nonetheless something I did!</span>

<span>Genomics was really starting to hit the fan in the early 2000s, and I</span>  
<span>was appalled by how biologists were handling the data &#8212; as one</span>  
<span>example, we had about $500k worth of sequences sitting on a shared</span>  
<span>Windows server, with no metadata or anything &#8212; just the filenames.</span>  
<span>As another example, I watched a postdoc manually BLAST a few thousand</span>  
<span>ESTs against the NCBI nr database; he sat there and did them three by</span>  
<span>three, having figured out that he could concatenate three sequences</span>  
<span>together and then manually deconvolve the results.  As probably the</span>  
<span>most computationally experienced person in the lab, I quickly got</span>  
<span>involved in data analysis and Web site stuff, and ended up writing</span>  
<span>some comparative sequence analysis software that was mildly popular</span>  
<span>for a while.</span>

<span>As part of the sequence analysis Web site I wrote, I became aware that</span>  
<span>maintaining software was a *really* hard problem.  So, towards the end</span>  
<span>of my 9 year stint in grad school, I spent a few years getting into</span>  
<span>testing, both Web testing and more generally automated software</span>  
<span>testing.  This led to perhaps my most used piece of software, twill, a</span>  
<span>scripting language for Web testing.  It also ended up being one of the</span>  
<span>things that got me elected into the Python Software Foundation,</span>  
<span>because I was doing everything in Python (which is a really great</span>  
<span>language, incidentally).</span>

<span>I also did some microbial genome analysis (which led to my first</span>  
<span>completely reproducible paper (</span><span class="il">Brown</span><span> and Callan, 2004;</span>  
<a href="http://www.ncbi.nlm.nih.gov/pubmed/14983022" target="_blank"><a href="http://www.ncbi.nlm.nih.gov/pubmed/14983022" target="_blank">http://www.ncbi.nlm.nih.gov/pubmed/14983022</a></a><span>) and collaborated with the</span>  
<span>Orphan lab on some metagenomics:</span>  
<a href="http://www.ncbi.nlm.nih.gov/pubmed?term=18467493" target="_blank"><a href="http://www.ncbi.nlm.nih.gov/pubmed?term=18467493" target="_blank">http://www.ncbi.nlm.nih.gov/pubmed?term=18467493</a></a><span>.  This led to a</span>  
<span>fascination with the biological &#8220;dark matter&#8221; in nature that is the</span>  
<span>subject of some of my current work on metagenomics.</span>

<span>I landed my faculty position at MSU right out of grad school, because</span>  
<span>bioinformatics is sexy and CS departments are OK with hiring grad</span>  
<span>students as faculty.  However, I deferred for two years to do a</span>  
<span>postdoc in Marianne Bronner-Fraser&#8217;s lab because I wanted to switch to</span>  
<span>the chick as a model organism, and so I ended up arriving at MSU in</span>  
<span>2009.  I had planned to focus a lot on development gene regulatory</span>  
<span>networks, but 2009 was when Illumina sequencing hit, and as one of the</span>  
<span>few people around who wasn&#8217;t visibly frightened by the term &#8220;gigabyte&#8221;</span>  
<span>I got inextricably involved in a lot of different sequence analysis</span>  
<span>projects.  These all converged on assembly, and, well, that seems to</span>  
<span>be what I work on now :).</span>

<span>The two strongest threads that run through my research are these:</span>

<span>1. &#8220;better science through superior software&#8221; &#8212; so much of science</span>  
<span>depends on computational inference these days, and so little of the</span>  
<span>underlying software is &#8220;good&#8221;.  Scientists *really* suck at software</span>  
<span>development (for both good and bad reasons) and I worry that a lot of</span>  
<span>our current science is on a really shaky foundation.  This is one</span>  
<span>reason I&#8217;m invested in Software Carpentry</span>  
<span>(</span><a href="http://software-carpentry.org/" target="_blank"><a href="http://software-carpentry.org" target="_blank">http://software-carpentry.org</a></a><span>), a training program that Greg Wilson</span>  
<span>has been developing &#8212; he and I agree that science is our best hope</span>  
<span>for a positive future, and good software skills are going to be</span>  
<span>essential for a lot of that science.  More generally I hope to turn</span>  
<span>good software development into a competitive advantage for my lab</span>  
<span>and my students.</span>

<span>2. &#8220;better hypothesis generation is needed&#8221; &#8212; biologists, in</span>  
<span>particular, tend to leap towards the first testable hypothesis they</span>  
<span>find.  This is a cultural thing stemming (I think) from a lot of</span>  
<span>really bad interactions with theory: the way physicists and</span>  
<span>mathematicians think about the world simply doesn&#8217;t fit with the Rube</span>  
<span>Goldberg-esque features of biology (see</span>  
<a href="http://ivory.idyll.org/blog/is-discovery-science-really-bogus.html" target="_blank"><a href="http://ivory.idyll.org/blog/is-discovery-science-really-bogus.html" target="_blank">http://ivory.idyll.org/blog/is-discovery-science-really-bogus.html</a></a><span>).</span>

<span>So getting back to the question, uh, yeah, I think I&#8217;m a computational</span>  
<span>scientist who is working on biology?  And if I need to write a little</span>  
<span>(or a lot) of software to solve my problems, I&#8217;ll do that, and I&#8217;ll</span>  
<span>try to do it with some attention to good software development</span>  
<span>practice &#8212; not just out of ethical concern for correctness, but</span>  
<span>because it makes our research move faster.</span>

<span>One thing I&#8217;m definitely *not* is a statistician.  I have friends who</span>  
<span>are statisticians, though, and they seem like perfectly nice people.</span>

<div class="im">
  <strong>You have a pretty radical approach to open access, can you tell us a little bit about that?</strong></p>
</div>

<span>Ever since Mark Galassi introduced me to open source, I thought it</span>  
<span>made sense.  So I&#8217;ve been an open source-nik since &#8230; 1988?</span>

<span>From there it&#8217;s just a short step to thinking that open science makes</span>  
<span>a lot of sense, too.  When you&#8217;re a grad student or a postdoc, you</span>  
<span>don&#8217;t get to make those decisions, though; it took until I was a PI</span>  
<span>for me to start thinking about how to do it.  I&#8217;m still conflicted</span>  
<span>about *how* open to be, but I&#8217;ve come to the conclusion that posting</span>  
<span>preprints is obvious</span>  
<span>(</span><a href="http://ivory.idyll.org/blog/blog-practicing-open-science.html" target="_blank"><a href="http://ivory.idyll.org/blog/blog-practicing-open-science.html" target="_blank">http://ivory.idyll.org/blog/blog-practicing-open-science.html</a></a><span>).</span>

<span>The &#8220;radical&#8221; aspect that you&#8217;re referring to is probably my posting</span>  
<span>of grants (</span><a href="http://ivory.idyll.org/blog/grants-posted.html" target="_blank"><a href="http://ivory.idyll.org/blog/grants-posted.html" target="_blank">http://ivory.idyll.org/blog/grants-posted.html</a></a><span>).  There are</span>  
<span>two reasons I ended up posting all of my single-PI grants.  Both have</span>  
<span>their genesis in this past summer, when I spent about 5 months writing</span>  
<span>6 different grants &#8212; 4 of which were written entirely by me.  Ugh.</span>

<span>First, I was really miserable one day and joked on Twitter that &#8220;all</span>  
<span>this grant writing is really cutting into my blogging&#8221; &#8212; a mocking</span>  
<span>reference to the fact that grant writing (to get $$) is considered</span>  
<span>academically worthwhile, while blogging (which communicates with the</span>  
<span>public and is objectively quite valuable) counts for naught with my</span>  
<span>employer.  Jonathan Eisen responded by suggesting that I post all of</span>  
<span>the grants and I thought, what a great idea!</span>

<span>Second, I&#8217;m sure it&#8217;s escaped most people (hah!), but grant funding</span>  
<span>rates are in the toilet &#8212; I spent all summer writing grants while</span>  
<span>expecting most of them to be rejected.  That&#8217;s just flat-out</span>  
<span>depressing!  So it behooves me to figure out how to make them serve</span>  
<span>multiple duties.  One way to do that is to attract collaborators;</span>  
<span>another is to serve as google bait for my lab; a third is to provide</span>  
<span>my grad students with well-laid-out PhD projects.  A fourth duty they</span>  
<span>serve (and I swear this was unintentional) is to point out to people</span>  
<span>that this is MY turf and I&#8217;m already solving these problems, so maybe</span>  
<span>they should go play in less occupied territory.  I know, very passive</span>  
<span>aggressive&#8230;</span>

<span>So I posted the grants, and unknowingly joined a really awesome cadre</span>  
<span>of folk who had already done the same</span>  
<span>(</span><a href="http://jabberwocky.weecology.org/2012/08/10/a-list-of-publicly-available-grant-proposals-in-the-biological-sciences/" target="_blank"><a href="http://jabberwocky.weecology.org/2012/08/10/a-list-of-publicly-available-grant-proposals-in-the-biological-sciences/" target="_blank">http://jabberwocky.weecology.org/2012/08/10/a-list-of-publicly-available-grant-proposals-in-the-biological-sciences/</a></a><span>).</span>  
<span>Most feedback I&#8217;ve gotten has been from grad students and undergrads</span>  
<span>who really appreciate the chance to look at grants; some people told</span>  
<span>me that they&#8217;d been refused the chance to look at grants from their</span>  
<span>own PIs!</span>

<span>At the end of the day, I&#8217;d be lucky to be relevant enough that people</span>  
<span>want to steal my grants or my software (which, by the way, is under a</span>  
<span>BSD license &#8212; free for the taking, no &#8220;theft&#8221; required&#8230;).  My</span>  
<span>observation over the years is that most people will do just about</span>  
<span>anything to avoid using other people&#8217;s software.</span>

<div class="im">
  <strong>In theoretical statistics, there is a tradition of publishing pre-prints while papers are submitted. Why do you think biology is lagging behind?</strong></p>
</div>

<span>I wish I knew!  There&#8217;s clearly a tradition of secrecy in biology;</span>  
<span>just look at the Cold Spring Harbor rules re tweeting and blogging</span>  
<span>(</span><a href="http://meetings.cshl.edu/report.html" target="_blank"><a href="http://meetings.cshl.edu/report.html" target="_blank">http://meetings.cshl.edu/report.html</a></a><span>) - this is a conference, for</span>  
<span>chrissakes, where you go to present and communicate!  I think it&#8217;s</span>  
<span>self-destructive and leads to an insider culture where only those who</span>  
<span>attend meetings and chat informally get to be members of the club,</span>  
<span>which frankly slows down research. Given the societal and medical</span>  
<span>challenges we face, this seems like a really bad way to continue doing</span>  
<span>research.</span>

<span>One of the things I&#8217;m proudest of is our effort on the cephalopod</span>  
<span>genome consortium&#8217;s white paper,</span>  
<a href="http://ivory.idyll.org/blog/cephseq-cephalopod-genomics.html" target="_blank"><a href="http://ivory.idyll.org/blog/cephseq-cephalopod-genomics.html" target="_blank">http://ivory.idyll.org/blog/cephseq-cephalopod-genomics.html</a></a><span>, where a</span>  
<span>group of bioinformaticians at the meeting pushed really hard to walk</span>  
<span>the line between secrecy and openness.  I came away from that effort</span>  
<span>thinking two things: first, that biologists were erring on the side of</span>  
<span>risk aversity; and second, that genome database folk were smoking</span>  
<span>crack when they pushed for complete openness of data.  (I have a blog</span>  
<span>post on that last statement coming up at some point.)</span>

<span>The bottom line is that the incentives in academic biology are aligned</span>  
<span>against openness.  In particular, you are often rewarded for the first</span>  
<span>observation, not for the most useful one; if your data is used to do</span>  
<span>cool stuff, you don&#8217;t get much if any credit; and it&#8217;s all about</span>  
<span>first/last authorship and who is PI on the grants.  All too often this</span>  
<span>means that people sit on their data endlessly.</span>

<span>This is getting particularly bad with next-gen data sets, because</span>  
<span>anyone can generate them but most people have no idea how to analyze</span>  
<span>their data, and so they just sit on it forever&#8230;</span>

<div class="im">
  <strong>Do you think the ArXiv model will catch on in biology or just within the bioinformatics community?</strong></p>
</div>

<span>One of my favorite quotes is: &#8220;Making predictions is hard, especially</span>  
<span>when they&#8217;re about the future.&#8221; I attribute it to Niels Bohr.</span>

<span>It&#8217;ll take a bunch of big, important scientists to lead the way. We</span>  
<span>need key members of each subcommunity of biology to decide to do it on</span>  
<span>a regular basis. (At this point I will take the obligatory cheap shot</span>  
<span>and point out that Jonathan Eisen, noted open access fan, doesn&#8217;t post</span>  
<span>his stuff to preprint servers very often.  What&#8217;s up with that?)  It&#8217;s</span>  
<span>going to be a long road.</span>

<div class="im">
  <strong>What is the reaction you most commonly get when you tell people you have posted your un-funded grants online?</strong></p>
</div>

<span>&#8220;Ohmigod what if someone steals them?&#8221;</span>

<span>Nobody has come up with a really convincing model for why posting</span>  
<span>grants is a bad thing.  They&#8217;re just worried that it *might* be.  I</span>  
<span>get the vague concerns about theft, but I have a hard time figuring</span>  
<span>out exactly how it would work out well for the thief &#8212; reputation is</span>  
<span>a big deal in science, and gossip would inevitably happen.  And at</span>  
<span>least in bioinformatics I&#8217;m aiming to be well enough known that</span>  
<span>straight up ripping me off would be suicidal.  Plus, if reviewers</span>  
<span>do/did google searches on key concepts then my grants would pop up,</span>  
<span>right?  I just don&#8217;t see it being a path to fame and glory for anyone.</span>

<span>Revisiting the passive-aggressive nature of my grant posting, I&#8217;d like</span>  
<span>to point out that most of my grants depend on preliminary results from</span>  
<span>our own algorithms.  So even if they want to compete on my turf, it&#8217;ll</span>  
<span>be on a foundation I laid.  I&#8217;m fine with that &#8212; more citations for</span>  
<span>me, either way :).</span>

<span>More optimistically, I really hope that people read my grants and then</span>  
<span>find new (and better!) ways of solving the problems posed in them.  My</span>  
<span>goal is to enable better science, not to hunker down in a tenured job</span>  
<span>and engage in irrelevant science; if someone else can use my grants as</span>  
<span>a positive or negative signpost to make progress, then broadly</span>  
<span>speaking, my job is done.</span>

<span>Or, to look at it another way: I don&#8217;t have a good model for either</span>  
<span>the possible risks OR the possible rewards of posting the grants, and</span>  
<span>my inclinations are towards openness, so I thought I&#8217;d see what</span>  
<span>happens.</span>

<div class="im">
  <strong>How can junior researchers correct misunderstandings about open access/journals like PLoS One that separate correctness from impact? Do you have any concrete ideas for changing minds of senior folks who aren&#8217;t convinced?</strong></p>
</div>

<span>Render them irrelevant by becoming senior researchers who supplant them</span>  
<span>when they retire.  It&#8217;s the academic tradition, after all!  And it&#8217;s</span>  
<span>really the only way within the current academic system, which &#8212; for</span>  
<span>better or for worse &#8212; isn&#8217;t going anywhere.</span>

<span>Honestly, we need fewer people yammering on about open access and more</span>  
<span>people simply doing awesome science and submitting it to OA journals.</span>  
<span>Conveniently, many of the high impact journals are shooting themselves</span>  
<span>in the foot and encouraging this by rejecting good science that then</span>  
<span>ends up in an OA journal; that wonderful ecology oped on PLoS One</span>  
<span>citation rates shows this well</span>  
<span>(</span><a href="http://library.queensu.ca/ojs/index.php/IEE/article/view/4351" target="_blank"><a href="http://library.queensu.ca/ojs/index.php/IEE/article/view/4351" target="_blank">http://library.queensu.ca/ojs/index.php/IEE/article/view/4351</a></a><span>).</span>

<div class="im">
  <strong>Do you have any advice on what computing skills/courses statistics students interested in next generation sequencing should take?</strong></p>
</div>

<span>For courses, no &#8212; in my opinion 80% of what any good researcher</span>  
<span>learns is self-motivated and often self-taught, and so it&#8217;s almost</span>  
<span>silly to pretend that any particular course or set of skills is</span>  
<span>sufficient or even useful enough to warrant a whole course.  I&#8217;m not a</span>  
<span>big fan of our current undergrad educational system <img src="http://simplystatistics.org/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></span>

<span>For skills?  You need critical thinking coupled with an awareness that</span>  
<span>a lot of smart people have worked in science, and odds are that there</span>  
<span>are useful tricks and approaches that you can use.  So talk to other</span>  
<span>people, a lot!  My lab has a mix of biologists, computer scientists,</span>  
<span>graph theorists, bioinformaticians, and physicists; more labs should</span>  
<span>be like that.</span>

<span>Good programming skills are going to serve you well no matter what, of</span>  
<span>course.  But I know plenty of good programmers who aren&#8217;t very</span>  
<span>knowledgeable about biology, and who run into problems doing actual</span>  
<span>science.  So it&#8217;s not a panacea.</span>

**<span>How does replicable or reproducible research fit into your interests?</span>**

<span>I&#8217;ve wasted *so much time* reproducing other people&#8217;s work that when</span>  
<span>the opportunity came up to put down a marker, I took it.</span>

<a href="http://ivory.idyll.org/blog/replication-i.html" target="_blank"><a href="http://ivory.idyll.org/blog/replication-i.html" target="_blank">http://ivory.idyll.org/blog/replication-i.html</a></a>

<span>The digital normalization paper shouldn&#8217;t have been particularly</span>  
<span>radical; that it is tells you all you need to know about replication</span>  
<span>in computational biology.</span>

<span>This is actually something I first did a long time ago, with what was</span>  
<span>perhaps my favorite pre-faculty-job paper: if you look at the methods</span>  
<span>for </span><span class="il">Brown</span><span> & Callan (2004) you&#8217;ll find a downloadable package that</span>  
<span>contains all of the source code for the paper itself and the analysis</span>  
<span>scripts.  But back then I didn&#8217;t blog :).</span>

<span>Lack of reproducibility and openness in methods has serious</span>  
<span>consequences &#8212; how much of cancer research has been useless, for</span>  
<span>example?  See `this horrific report</span>  
<span><</span><a href="http://online.wsj.com/article/SB10001424052970203764804577059841672541590.html" target="_blank"><a href="http://online.wsj.com/article/SB10001424052970203764804577059841672541590.html" target="_blank">http://online.wsj.com/article/SB10001424052970203764804577059841672541590.html</a></a><span>>`__.)</span>  
<span>Again, the incentives are all wrong: you get grant money for</span>  
<span>publishing, not for being useful.  The two are not necessarily the</span>  
<span>same&#8230;</span>

**<span>Do you have a family, and how do you balance work life and home life?</span>**

<span>Why, thank you for asking!  I do have a family &#8212; my wife, Tracy Teal,</span>  
<span>is a bioinformatician and microbial ecologist, and we have two</span>  
<span>wonderful daughters, Amarie (4) and Jessie (1).  It&#8217;s not easy being a</span>  
<span>junior professor and a parent at the same time, and I keep on trying</span>  
<span>to figure out how to balance the needs of travel with the need to be a</span>  
<span>parent (hint: I&#8217;m not good at it).  I&#8217;m increasingly leaning towards</span>  
<span>blogging as being a good way to have an impact while being around</span>  
<span>more; we&#8217;ll see how that goes.</span>
