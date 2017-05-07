---
id: 1771
title: 'Evidence-based Data Analysis: Treading a New Path for Reproducible Research (Part 2)'
date: 2013-08-28T10:14:32+00:00
author: Roger Peng
al2fb_facebook_link_id:
  - 136171103105421_535305943191933
al2fb_facebook_link_time:
  - 2013-08-28T14:14:39+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2013/08/hist-1024x703.png
dsq_thread_id:
  - 1659791254
categories:
  - Uncategorized
slug: "evidence-based-data-analysis-treading-a-new-path-for-reproducible-research-part-2"
---
<p dir="ltr">
  Last week I <a href="http://simplystatistics.org/2013/08/21/treading-a-new-path-for-reproducible-research-part-1/">posted</a> about how I thought the notion of reproducible research did not go far enough to address the question of whether you could trust that a given data analysis was conducted appropriately. From some of the discussion on the post, it seems some of you thought I believed therefore that reproducibility had no value. That’s definitely not true and I’m hoping I can clarify my thinking in this followup post.
</p>

<p dir="ltr">
  Just to summarize a bit from last week, one key problem I find with requiring reproducibility of a data analysis is that it comes only at the most “downstream” part of the research process, the post-publication part. So anything that was done incorrectly has already happened and the damage has been done to the analysis. Having code and data available, importantly, makes it possible to discover these problems, but only after the fact. I think this results in two problems: (1) It may take a while to figure out what exactly the problems are (even with code/data) and how to fix them; and (2) the problems in the analysis may have already caused some sort of harm.
</p>

<p dir="ltr">
  <strong>Open Source Science?</strong>
</p>

<p dir="ltr">
  For the first problem, I think a reasonable analogy for reproducible research is open source software. There the idea is that source code is available for all computer programs so that we can inspect and modify how a program runs. With open source software “<a href="http://en.wikipedia.org/wiki/Linus's_Law">all bugs are shallow</a>”. But the key here is that as long as all programmers have the requisite tools, they can modify the source code on their own, publish their corrected version (if they are fixing a bug), others can review it and accept or modify, and on and on. All programmers are more or less on the same footing, as long as they have the ability to hack the code. With distributed source code management systems like <a href="http://git-scm.com">git</a>, people don’t even need permission to modify the source tree. In this environment, the best idea wins.
</p>

<p dir="ltr">
  The analogy with open source software breaks down a bit with scientific research because not all players are on the same footing. Typically, the original investigator is much better equipped to modify the “source code”, in this case the data analysis, and to fix any problems. Some types of analyses may require tremendous resources that are not available to all researchers. Also, it might take a long time for others who were not involved in the research, to fully understand what is going on and how to make reasonable modifications. That may involve, for example, learning the science in the first place, or learning how to program a computer for that matter. So I think making changes to a data analysis and having them accepted is a slow process in science, much more so than with open source software. There are definitely things we can do to improve our ability to make rapid changes/updates, but the implementation of those changes are only just getting started.
</p>

<p dir="ltr">
  <strong>First Do No Harm</strong>
</p>

<p dir="ltr">
  The second problem, that some sort of harm may have already occurred before an analysis can be fully examined is an important one. As I mentioned in the previous post, merely stating that an analysis is reproducible doesn’t say a whole lot about whether it was done correctly. In order to verify that, someone knowledgeable has to go into the details and muck around to see what is going on. If someone is not available to do this, then we may never know what actually happened. Meanwhile, the science still stands and others may build off of it.
</p>

<p dir="ltr">
  In the Duke saga, one of the most concerning aspects of the whole story was that some of Potti’s research was going to be used to guide therapy in a clinical trial. The fact that a series of flawed data analyses was going to be used as the basis of choosing what cancer treatments people were going to get was very troubling. In particular, one of these flawed analyses reversed the labeling of the cancer and control cases!
</p>

To me, it seems that waiting around for someone like Keith Baggerly to come around and spend close to 2,000 hours reproducing, inspecting, and understanding a series of analyses is not an efficient system. In particular, when actual human lives may be affected, it would be preferable if the analyses were done right in the first place, without the “statistics police” having to come in and check that everything was done properly.

**Evidence-based Data Analysis**

<p dir="ltr">
  What I think the statistical community needs to invest time and energy into is what I call “evidence-based data analysis”. What do I mean by this? Most data analyses are not the simple classroom exercises that we’ve all done involving linear regression or two-sample t-tests. Most of the time, you have to obtain the data, clean that data, remove outliers, impute missing values, transform variables and on and on, even before you fit any sort of model. Then there’s model selection, model fitting, diagnostics, sensitivity analysis, and more. So a data analysis is really pipeline of operations where the output of one stage becomes the input of another.
</p>

<p dir="ltr">
  The basic idea behind evidence-based data analysis is that for each stage of that pipeline, we should be using the best method, justified by appropriate statistical research that provides evidence favoring one method over another. If we cannot reasonable agree on a best method for a given stage in the pipeline, then we have a gap that needs to be filled. So we fill it!
</p>

<p dir="ltr">
  Just to clarify things before moving on too far, here’s a simple example.
</p>

<p dir="ltr">
  <strong>Evidence-based Histograms</strong>
</p>

<p dir="ltr">
  Consider the following simple histogram.
</p>

<p dir="ltr">
  <a href="http://simplystatistics.org/wp-content/uploads/2013/08/hist.png"><img class="alignright size-large wp-image-1773" alt="hist" src="http://simplystatistics.org/wp-content/uploads/2013/08/hist-1024x703.png" width="640" height="439" srcset="http://simplystatistics.org/wp-content/uploads/2013/08/hist-300x206.png 300w, http://simplystatistics.org/wp-content/uploads/2013/08/hist-1024x703.png 1024w" sizes="(max-width: 640px) 100vw, 640px" /></a>
</p>

<p dir="ltr">
  The histogram was created in R by calling hist(x) on some Normal random deviates (I don’t remember the seed so unfortunately it is not reproducible). Now, we all know that a histogram is a kind of smoother, and with any smoother, the critical parameter is the smoothing parameter or the bandwidth. Here, it’s the size of the bin or the number of bins.
</p>

Notice that when I call ‘hist’ I don’t actually specify the number of bins. Why not? Because in R, the default is to use Sturges’ formula for the number of bins. Where does that come from? Well, there is a [paper](http://amstat.tandfonline.com/doi/abs/10.1080/01621459.1926.10502161?journalCode=uasa20#.Uh3_FBbHKZY) in the _Journal of the American Statistical Association_ in 1926 by H. A. Sturges that justifies why such a formula is reasonable for a histogram (it is a very short paper, those were the days). R provides other choices for choosing the number of bins. For example, David Scott [wrote a paper](http://biomet.oxfordjournals.org/content/66/3/605.short) in _Biometrika_ that justified bandwith/bin size based in integrated mean squared error criteria.

The point is that R doesn’t just choose the default number of bins willy-nilly, there’s actual research behind that choice and evidence supporting why it’s a good choice. Now, we may not all agree that this default is the best choice at all times, but personally I rarely modify the default number of bins. Usually I just want to get a sense of what the distribution looks like and the default is fine. If there's a problem, transforming the variable somehow often is more productive than modifying the number of bins. What's the best transformation? Well, it turns out there's [research on that too](http://en.wikipedia.org/wiki/Power_transform).

**Evidence-based Reproducible Research**

<p dir="ltr">
  Now why can’t we extend the idea behind the histogram bandwidth to all data analysis? I think we can. For every stage of a given data analysis pipeline, we can have the “best practices” and back up those practices with statistical research. Of course it’s possible that such best practices have not yet been developed. This is common in emerging areas like genomics where the data collection technology is constantly changing. That’s fine, but in more mature areas, I think it’s possible for the community to agree on a series of practices that work, say, 90% of the time.
</p>

<p dir="ltr">
  There are a few advantages to evidence-based reproducible research.
</p>

  1. It reduces the “researcher degrees of freedom”. Researchers would be disincentivized from choosing the method that produces the “best” results if there is already a generally agreed upon approach. If a given data analysis required a different approach, the burden would be on the analyst to justify why a deviation from the generally accepted approach was made.
  2. The methodology would be transparent because the approach would have been vetted by the community. I call this "transparent box" analysis, as opposed to black box analysis. The analysis would be transparent so you would know exactly what is going on, but it would "[locked in a box](http://www.hulu.com/watch/284761)" so that you couldn't tinker with it to game the results.
  3. You would not have the [lonely data analyst](http://simplystatistics.org/2013/08/09/embarrassing-typos-reveal-the-dangers-of-the-lonely-data-analyst/) coming up with their own magical method to analyze the data. If a researcher claimed to have conducted an analysis using an evidence-based pipeline, you could at least have a sense that something reasonable was done. You would still need reproducibility to ensure that the researcher was not misrepresenting him/herself, but now we would have two checks on the analysis, not just one.
  4. Most importantly, evidence-based reproducible research attacks the furthest upstream aspect of the research, which is the analysis itself. It guarantees that generally accepted approaches are used to analyze the data from the very beginning and hopefully prevents problems from occurring rather than letting them propagate through the system.

<p dir="ltr">
  What can we do to bring evidence-based data analysis practices to all of the sciences? I’ll write about what I think we can do in the next post.
</p>
