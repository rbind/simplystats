---
id: 3991
title: Mendelian randomization inspires a randomized trial design for multiple drugs simultaneously
date: 2015-05-07T11:30:09+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_803920602997131
al2fb_facebook_link_time:
  - 2015-05-07T15:30:18+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/05/Slide11-300x224.jpg
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 3744595665
categories:
  - Uncategorized
slug: "mendelian-randomization-inspires-a-randomized-trial-design-for-multiple-drugs-simultaneously"
---
Joe Pickrell has an interesting new paper out about [Mendelian randomization.](http://biorxiv.org/content/early/2015/04/16/018150.full-text.pdf+html) He discusses some of the interesting issues that come up with these studies and performs a mini-review of previously published studies using the technique.

The basic idea behind Mendelian Randomization is the following. In a simple, randomly mating population Mendel's laws tell us that at any genomic locus (a measured spot in the genome) the allele (genetic material you got) you get is assigned at random. At the chromosome level this is very close to true due to properties of meiosis (here is an example of how this looks in very cartoonish form in yeast). A very famous example of this was an experiment performed by Leonid Kruglyak's group where they took two strains of yeast and repeatedly mated them, then measured genetics and gene expression data. The experimental design looked like this:

[<img class="aligncenter wp-image-4009 size-medium" src="http://simplystatistics.org/wp-content/uploads/2015/05/Slide06-300x224.jpg" alt="Slide06" width="300" height="224" srcset="http://simplystatistics.org/wp-content/uploads/2015/05/Slide06-300x224.jpg 300w, http://simplystatistics.org/wp-content/uploads/2015/05/Slide06-260x194.jpg 260w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/05/Slide06.jpg)

&nbsp;

If you look at the allele inherited from the two parental strains (BY, RM)  at two separate genes on different chromsomes in each of the 112 segregants (yeast offspring)  they do appear to be random and independent:

[<img class="aligncenter wp-image-4010 size-medium" src="http://simplystatistics.org/wp-content/uploads/2015/05/Screen-Shot-2015-05-07-at-11.20.46-AM-235x300.png" alt="Screen Shot 2015-05-07 at 11.20.46 AM" width="235" height="300" />](http://simplystatistics.org/wp-content/uploads/2015/05/Screen-Shot-2015-05-07-at-11.20.46-AM.png)

&nbsp;

&nbsp;

So this is a randomized trial in yeast where the yeast were each randomized to many many genetic "treatments" simultaneously. Now this isn't strictly true, since genes on the same chromosomes near each other aren't exactly random and in humans it is definitely not true since there is population structure, non-random mating and a host of other issues. But you can still do cool things to try to infer causality from the genetic "treatments" to downstream things like gene expression ( [and even do a reasonable job in the model organism case](http://genomebiology.com/2007/8/10/r219)).

In my mind this raises a potentially interesting study design for clinical trials. Suppose that there are 10 treatments for a disease that we know about. We design a study where each of the patients in the trial was randomized to receive treatment or placebo for each of the 10 treatments. So on average each person would get 5 treatments.  Then you could try to tease apart the effects using methods developed for the Mendelian randomization case. Of course, this is ignoring potential interactions, side effects of taking multiple drugs simultaneously, etc. But I'm seeing lots of [interesting proposals](http://www.nature.com/news/personalized-medicine-time-for-one-person-trials-1.17411) for new trial designs ([which may or may not work](http://notstatschat.tumblr.com/post/118102423391/precise-answers-but-not-necessarily-to-the-right)), so I thought I'd contribute my own interesting idea.
