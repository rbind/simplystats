---
id: 4288
title: Interview with COPSS award Winner John Storey
date: 2015-08-25T09:25:28+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_849230085132849
al2fb_facebook_link_time:
  - 2015-08-25T13:25:35+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/08/jdstorey-198x300.jpg
dsq_thread_id:
  - 4065427255
categories:
  - Uncategorized
slug: "interview-with-copss-award-winner-john-storey"
---

![John Storey Picture](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/wp-content/uploads/2015/08/jdstorey.jpg)


*Editor's Note: We are again pleased to interview the COPSS President's award winner. The [COPSS Award](https://en.wikipedia.org/wiki/COPSS_Presidents%27_Award) is one of the most prestigious in statistics, sometimes called the Nobel Prize in statistics. This year the award went to [John Storey](http://www.genomine.org/) who also won the [Mortimer Spiegelman award](http://sml.princeton.edu/news/john-storey-receives-2015-mortimer-spiegelman-award) for his outstanding contribution to public health statistics.  This interview is a [particular pleasure](https://twitter.com/simplystats/status/631607146572988417) since John was my Ph.D. advisor and has been a major role model and incredibly supportive mentor for me throughout my career. He also [did the whole interview in markdown and put it under version control at Github](https://github.com/jdstorey/simplystatistics) so it is fully reproducible.*

**SimplyStats: Do you consider yourself to be a statistician, data scientist, machine learner, or something else?**

JS: For the most part I consider myself to be a statistician, but I’m also very serious about genetics/genomics, data analysis, and computation. I was trained in statistics and genetics, primarily statistics. I was also exposed to a lot of machine learning during my training since Rob Tibshirani was my [PhD advisor](http://genealogy.math.ndsu.nodak.edu/id.php?id=69303). However, I consider my research group to be a data science group. We have the [Venn diagram](http://drewconway.com/zia/2013/3/26/the-data-science-venn-diagram) reasonably well covered: experimentalists, programmers, data wranglers, and developers of theory and methods; biologists, computer scientists, and statisticians.

**SimplyStats: How did you find out you had won the COPSS Presidents’ Award?**

JS: I received a phone call from the chairperson of the awards committee while I was visiting the Department of Statistical Science at Duke University to [give a seminar](https://stat.duke.edu/events/15731.html). It was during the seminar reception, and I stepped out into the hallway to take the call. It was really exciting to get the news!

**SimplyStats: One of the areas where you have had a big impact is inference in massively parallel problems. How do you feel high-dimensional inference is different from more traditional statistical inference?**

JS: My experience is that the most productive way to approach high-dimensional inference problems is to first think about a given problem in the scenario where the parameters of interest are random, and the joint distribution of these parameters is incorporated into the framework. In other words, I first gain an understanding of the problem in a Bayesian framework. Once this is well understood, it is sometimes possible to move in a more empirical and nonparametric direction. However, I have found that I can be most successful if my first results are in this Bayesian framework.

As an example, Theorem 1 from [Storey (2003) Annals of Statistics](http://genomics.princeton.edu/storeylab/papers/Storey_Annals_2003.pdf) was the first result I obtained in my work on false discovery rates. This paper [first appeared as a technical report in early 2001](https://statistics.stanford.edu/research/false-discovery-rate-bayesian-interpretation-and-q-value), and the results spawned further work on a [point estimation approach](http://genomics.princeton.edu/storeylab/papers/directfdr.pdf) to false discovery rates, the [local false discovery rate](http://genomics.princeton.edu/storeylab/papers/ETST_JASA_2001.pdf), [q-value](http://www.bioconductor.org/packages/release/bioc/html/qvalue.html) and its [application to genomics](http://www.pnas.org/content/100/16/9440.full), and a [unified theoretical framework](http://genomics.princeton.edu/storeylab/papers/623.pdf).

Besides false discovery rates, this approach has been useful in my work on the [optimal discovery procedure](http://genomics.princeton.edu/storeylab/papers/Storey_JRSSB_2007.pdf) as well as [surrogate variable analysis](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.0030161) (in particular, [Desai and Storey 2012](http://amstat.tandfonline.com/doi/abs/10.1080/01621459.2011.645777#.VdxderxVhBc) for surrogate variable analysis).  For high-dimensional inference problems, I have also found it is important to consider whether there are any plausible underlying causal relationships among variables, even if causal inference in not the goal. For example, causal model considerations provided some key guidance in a [recent paper of ours](http://www.nature.com/ng/journal/v47/n5/full/ng.3244.html) on testing for genetic associations in the presence of arbitrary population structure. I think there is a lot of insight to be gained by considering what is the appropriate approach for a high-dimensional inference problem under different causal relationships among the variables.

**SimplyStats: Do you have a process when you are tackling a hard problem or working with students on a hard problem?**

JS: I like to work on statistics research that is aimed at answering a specific scientific problem (usually in genomics). My process is to try to understand the why in the problem as much as the how. The path to success is often found in the former. I try first to find solutions to research problems by using simple tools and ideas. I like to get my hands dirty with real data as early as possible in the process. I like to incorporate some theory into this process, but I prefer methods that work really well in practice over those that have beautiful theory justifying them without demonstrated success on real-world applications. In terms of what I do day-to-day, listening to music is integral to my process, for both concentration and creative inspiration: typically [King Crimson](https://en.wikipedia.org/wiki/King_Crimson) or some [variant of metal](http://www.metal-archives.com/) or [ambient](https://en.wikipedia.org/wiki/Brian_Eno) – which Simply Statistics co-founder](http://jtleek.com/) got to <del>endure</del> enjoy for years during his PhD in my lab.

**SimplyStats: You are the founding Director of the Center for Statistics and Machine Learning at Princeton. What parts of the new gig are you most excited about?**

JS: Princeton closed its Department of Statistics in the early 1980s. Because of this, the style of statistician and machine learner we have here today is one who’s comfortable being appointed in a field outside of statistics or machine learning. Examples include myself in genomics, Kosuke Imai in political science, Jianqing Fan in finance and economics, and Barbara Engelhardt in computer science. Nevertheless, statistics and machine learning here is strong, albeit too small at the moment (which will be changing soon). This is an interesting place to start, very different from most universities.

What I’m most excited about is that we get to answer the question: “What’s the best way to build a faculty, educate undergraduates, and create a PhD program starting now, focusing on the most important problems of today?”

For those who are interested, we’ll be releasing a [public version of our strategic plan](http://www.princeton.edu/strategicplan/taskforces/sml/) within about six months. We’re trying to do something unique and forward-thinking, which will hopefully make Princeton an influential member of the statistics, machine learning, and data science communities.

**SimplyStats: You are organizing the Tukey conference at Princeton (to be held September 18, [details here](http://csml.princeton.edu/tukey)). Do you think Tukey’s influence will affect your vision for re-building statistics at Princeton?**

JS: Absolutely, Tukey has been and will be a major influence in how we re-build. He made so many important contributions, and his approach was extremely forward thinking and tied into real-world problems. I strongly encourage everyone to read Tukey’s 1962 paper titled [The Future of Data Analysis](https://projecteuclid.org/euclid.aoms/1177704711). Here he’s 50 years into the future, foreseeing the rise of data science. This paper has truly amazing insights, including:

> For a long time I have thought I was a statistician, interested in inferences from the particular to the general. But as I have watched mathematical statistics evolve, I have had cause to wonder and to doubt.
> 
> All in all, I have come to feel that my central interest is in data analysis, which I take to include, among other things: procedures for analyzing data, techniques for interpreting the results of such procedures, ways of planning the gathering of data to make its analysis easier, more precise or more accurate, and all the machinery and results of (mathematical) statistics which apply to analyzing data.
> 
> Data analysis is a larger and more varied field than inference, or incisive procedures, or allocation.
> 
> By and large, the great innovations in statistics have not had correspondingly great effects upon data analysis. . . . Is it not time to seek out novelty in data analysis?

In this regard, another paper that has been influential in how we are re-building is Leo Breiman’s titled [Statistical Modeling: The Two Cultures](http://projecteuclid.org/euclid.ss/1009213726). We’re building something at Princeton that includes both cultures and seamlessly blends them into a bigger picture community concerned with data-driven scientific discovery and technology development.

**SimplyStats: What advice would you give young statisticians getting into the discipline now?**

JS: My most general advice is don’t isolate yourself within statistics. Interact with and learn from other fields. Work on problems that are important to practitioners of science and technology development. I recommend that students should master both “traditional statistics” and at least one of the following: (1) computational and algorithmic approaches to data analysis, especially those more frequently studied in machine learning or data science; (2) a substantive scientific area where data-driven discovery is extremely important (e.g., social sciences, economics, environmental sciences, genomics, neuroscience, etc.). I also recommend that students should consider publishing in scientific journals or computer science conference proceedings, in addition to traditional statistics journals. I agree with a lot of the constructive advice and commentary given on the Simply Statistics blog, such as encouraging students to learn about reproducible research, problem-driven research, software development, improving data analyses in science, and outreach to non-statisticians. These things are very important for the future of statistics.
