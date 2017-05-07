---
id: 3898
title: "Is Reproducibility as Effective as Disclosure? Let's Hope Not."
date: 2015-02-12T10:21:35+00:00
author: Roger Peng
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_767714483284410
al2fb_facebook_link_time:
  - 2015-02-12T15:21:42+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3509599160
categories:
  - Uncategorized
slug: "is-reproducibility-as-effective-as-disclosure-lets-hope-not"
---
Jeff and I just this week published a [commentary](http://www.pnas.org/content/112/6/1645.full) in the _Proceedings of the National Academy of Sciences_ on our latest thinking on reproducible research and its ability to solve the reproducibility/replication "crisis" in science (there's a version on [arXiv](http://arxiv.org/abs/1502.03169) too). In a nutshell, we believe reproducibility (making data and code available so that others can recompute your results) is an essential part of science, but it is not going to end the crisis of confidence in science. In fact, I don't think it'll even make a dent. The problem is that reproducibility, as a tool for preventing poor research, comes in at the wrong stage of the research process (the end). While requiring reproducibility may deter people from committing outright fraud (a small group), it won't stop people who just don't know what they're doing with respect to data analysis (a much larger group).

In an eerie coincidence, Jesse Eisinger of the investigative journalism non-profit ProPublica, has just published a piece on the New York Times Dealbook site discussing how [requiring disclosure rules in the financial industry has produced meager results](http://dealbook.nytimes.com/2015/02/11/an-excess-of-sunlight-a-paucity-of-rules/). He writes

> <p class="story-body-text">
>   Over the last century, disclosure and transparency have become our regulatory crutch, the answer to every vexing problem. We require corporations and government to release reams of information on food, medicine, household products, consumer financial tools, campaign finance and crime statistics. We have a booming “report card” industry for a range of services, including hospitals, public schools and restaurants.
> </p>

<p class="story-body-text">
  The rationale for all this disclosure is that
</p>

> <p class="story-body-text">
>   someone, somewhere reads the fine print in these contracts and keeps corporations honest. It turns out what we laymen intuit is true: <a href="http://www.law.nyu.edu/news/ideas/Marotta-Wurgler-standard-form-contracts-fine-print">No one reads them</a>, according to research by a New York University law professor, Florencia Marotta-Wurgler.
> </p>

<p class="story-body-text">
  But disclosure is nevertheless popular because how could you be against it?
</p>

> <p class="story-body-text">
>   The disclosure bonanza is easy to explain. Nobody is against it. It’s politically expedient. Companies prefer such rules, especially in lieu of actual regulations that would curtail bad products or behavior. The opacity lobby — the <a href="http://en.wikipedia.org/wiki/Remora">remora fish</a> class of lawyers, lobbyists and consultants in New York and Washington — knows that disclosure requirements are no bar to dodgy practices. You just have to explain what you’re doing in sufficiently incomprehensible language, a task that earns those lawyers a hefty fee.
> </p>

<p class="story-body-text">
  In the now infamous <a href="http://simplystatistics.org/2012/02/27/the-duke-saga-starter-set/">Duke Saga</a>, Keith Baggerly was able to reproduce the work of Potti et al. after roughly 2,000 hours of work because the data were publicly available (although the code was not). It's not clear how much time would have been saved if the code had been available, but it seems reasonable to assume that it would have taken some amount of time to <em>understand</em> the analysis, if not reproduce it. Once the errors in Potti's work were discovered, it took 5 years for the original Nature Medicine paper to be retracted.
</p>

<p class="story-body-text">
  Although you could argue that the process worked in some sense, it came at tremendous cost of time and money. Wouldn't it have been better if the analysis had been done right in the first place?
</p>
