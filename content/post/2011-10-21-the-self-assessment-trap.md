---
id: 401
title: The self-assessment trap
date: 2011-10-21T14:35:00+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/11732716036/the-self-assessment-trap
tumblr_simplystatistics_id:
  - 11732716036
dsq_thread_id:
  - 939446661
categories:
  - Uncategorized
tags:
  - advice
  - simulation
slug: "the-self-assessment-trap"
---
Several months ago I was sitting next to my colleague <a href="http://www.cbcb.umd.edu/~langmead/" target="_blank">Ben Langmead</a> at the <a href="http://meetings.cshl.edu/meetings/info11.shtml" target="_blank">Genome Informatics meeting</a>. Various talks were presented on short read alignments and every single performance table showed the speaker&#8217;s method as #1 and Ben&#8217;s <a href="http://bowtie-bio.sourceforge.net/index.shtml" target="_blank">Bowtie</a> as #2 among a crowded field of lesser methods. It was fun to make fun of Ben for getting beat every time, but the reality was that all I could conclude was that Bowtie was best and speakers were falling into the <a href="http://www.nature.com/msb/journal/v7/n1/full/msb201170.html#a1" target="_blank">the self-assessment trap</a>: each speaker had tweaked the assessment to make their method look best. This practice is pervasive in Statistics where easy-to-tweak Monte Carlo simulations are commonly used to assess performance. In a recent <a href="http://www.nature.com/msb/journal/v7/n1/full/msb201170.html#a1" target="_blank">paper</a>, a team at IBM described how the problem in the systems biology literature is pervasive as well. Co-author <a href="https://researcher.ibm.com/researcher/view.php?person=us-gustavo" target="_blank">Gustavo Stolovitzky <strike>Stolovitsky</strike></a> is a co-developer of the <a href="http://wiki.c2b2.columbia.edu/dream/index.php/The_DREAM3_Challenges" target="_blank">DREAM challenge</a> in which the assessments are fixed and developers are asked to submit. About 7 years ago we developed <a href="http://bioinformatics.oxfordjournals.org/content/20/3/323.long" target="_blank">affycomp</a>, a comparison <a href="http://affycomp.jhsph.edu/" target="_blank">webtool</a> for microarray preprocessing methods. I encourage others involved in fields where methods are constantly being compared to develop such tools. It&#8217;s a lot of work, but journals are usually friendly to papers describing the results of such competitions.

**Related Posts:**  Roger on <a href="http://simplystatistics.tumblr.com/post/11573348494/colors-in-r" target="_blank">colors in R</a>, Jeff on <a href="http://simplystatistics.tumblr.com/post/10852070603/battling-bad-science" target="_blank">battling bad science</a>
