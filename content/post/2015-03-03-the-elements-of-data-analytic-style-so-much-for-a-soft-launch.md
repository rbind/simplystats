---
id: 3910
title: 'The elements of data analytic style - so much for a soft launch'
date: 2015-03-03T11:22:28+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_775972959125229
al2fb_facebook_link_time:
  - 2015-03-03T16:22:33+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-02-at-2.14.05-PM-300x202.png
dsq_thread_id:
  - 3563939475
categories:
  - Uncategorized
slug: "the-elements-of-data-analytic-style-so-much-for-a-soft-launch"
---
_Editor's note: I wrote a book called Elements of Data Analytic Style. Buy it on [Leanpub](https://leanpub.com/datastyle) or [Amazon](http://www.amazon.com/Elements-Data-Analytic-Style-ebook/dp/B00U6D80YY/ref=sr_1_1?ie=UTF8&qid=1425397222&sr=8-1&keywords=elements+of+data+analytic+style)! If you buy it on Leanpub, you get all updates (there are likely to be some) for free and you can pay what you want (including zero) but the author would be appreciative if you'd throw a little scratch his way. _

So uh, I was going to soft launch my new book The Elements of Data Analytic Style yesterday. I figured I'd just quietly email my Coursera courses to let them know I created a new reference. It turns out that that wasn't very quiet. First this happened:

<blockquote class="twitter-tweet" width="550">
  <p>
    <a href="https://twitter.com/jtleek">@jtleek</a> <a href="https://twitter.com/albertocairo">@albertocairo</a> <a href="https://twitter.com/simplystats">@simplystats</a> Instabuy. And apparently not just for me: it looks like you just Slashdotted <a href="https://twitter.com/leanpub">@leanpub</a>'s website.
  </p>
  
  <p>
    &mdash; Andrew Janke (@AndrewJanke) <a href="https://twitter.com/AndrewJanke/status/572474567467401216">March 2, 2015</a>
  </p>
</blockquote>



&nbsp;

and sure enough the website was down:

&nbsp;

[<img class="aligncenter wp-image-3919 size-medium" src="http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-02-at-2.14.05-PM-300x202.png" alt="Screen Shot 2015-03-02 at 2.14.05 PM" width="300" height="202" srcset="http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-02-at-2.14.05-PM-300x202.png 300w, http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-02-at-2.14.05-PM-1024x690.png 1024w, http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-02-at-2.14.05-PM-260x175.png 260w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/03/Screen-Shot-2015-03-02-at-2.14.05-PM.png)

&nbsp;

&nbsp;

then overnight it did something like 6,000+ units:

&nbsp;

[<img class="aligncenter wp-image-3920 size-medium" src="http://simplystatistics.org/wp-content/uploads/2015/03/whoacoursera-300x300.png" alt="whoacoursera" width="300" height="300" srcset="http://simplystatistics.org/wp-content/uploads/2015/03/whoacoursera-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2015/03/whoacoursera-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2015/03/whoacoursera.png 480w" sizes="(max-width: 300px) 100vw, 300px" />](http://simplystatistics.org/wp-content/uploads/2015/03/whoacoursera.png)

&nbsp;

&nbsp;

So lesson learned, there is no soft open with Coursera. Here is the post I was going to write though:

&nbsp;

\### Post I was gonna write

I have been doing data analysis for something like 10 years now (gulp!) and teaching data analysis in person for 6+ years. One of the things we do in [my data analysis class at Hopkins](https://github.com/jtleek/jhsph753and4) is to perform a complete data analysis (from raw data to written report) every couple of weeks. Then I grade each assignment for everything from data cleaning to the written report and reproducibility. I've noticed over the course of teaching this class (and classes online) that there are many common elements of data analytic style that I don't often see in textbooks, or when I do, I see them spread across multiple books.

I've posted on some of these issues in some open source guides I've posted to Github like:

  * <a href="http://simplystatistics.org/2014/05/22/10-things-statistics-taught-us-about-big-data-analysis/" target="_self">10 things statistics taught us about big data analysis</a>
  * <a href="https://github.com/jtleek/rpackages" target="_self">The Leek Group Guide to R packages</a>
  * <a href="https://github.com/jtleek/datasharing" target="_self">How to share data with a statistician</a>

But I decided that it might be useful to have a more complete guide to the "art" part of data analysis. One goal is to summarize in a succinct way the most common difficulties encountered by practicing data analysts. It may be a useful guide for peer reviewers who could refer to section numbers when evaluating manuscripts, for instructors who have to grade data analyses, as a supplementary text for a data analysis class, or just as a useful reference. It is modeled loosely in format and aim on the [Elements of Style](http://www.bartleby.com/141/) by William Strunk. Just as with the EoS, both the checklist and my book cover a small fraction of the field of data analysis, but my experience is that once these elements are mastered, data analysts benefit most from hands on experience in their own discipline of application, and that many principles may be non-transferable beyond the basics. But just as with writing, new analysts would do better to follow the rules until they know them well enough to violate them.

  * [Buy EDAS on Leanpub](https://leanpub.com/datastyle/)
  * [Buy EDAS on Amazon](http://www.amazon.com/Elements-Data-Analytic-Style-ebook/dp/B00U6D80YY/ref=sr_1_1?ie=UTF8&qid=1425397222&sr=8-1&keywords=elements+of+data+analytic+style)

The book includes a basic checklist that may be useful as a guide for beginning data analysts or as a rubric for evaluating data analyses. I'm reproducing it here so you can comment/hate/enjoy on it.

&nbsp;

_**The data analysis checklis**t_

This checklist provides a condensed look at the information in this book. It can be used as a guide during the process of a data analysis, as a rubric for grading data analysis projects, or as a way to evaluate the quality of a reported data analysis.
  
**I Answering the question**

1. Did you specify the type of data analytic question (e.g. exploration, assocation causality) before touching the data?
  
2. Did you define the metric for success before beginning?
  
3. Did you understand the context for the question and the scientific or business application?
  
4. Did you record the experimental design?
  
5. Did you consider whether the question could be answered with the available data?

**II Checking the data**

1. Did you plot univariate and multivariate summaries of the data?
  
2. Did you check for outliers?
  
3. Did you identify the missing data code?

**III Tidying the data**

1. Is each variable one column?
  
2. Is each observation one row?
  
3. Do different data types appear in each table?
  
4. Did you record the recipe for moving from raw to tidy data?
  
5. Did you create a code book?
  
6. Did you record all parameters, units, and functions applied to the data?

**IV Exploratory analysis**

1. Did you identify missing values?
  
2. Did you make univariate plots (histograms, density plots, boxplots)?
  
3. Did you consider correlations between variables (scatterplots)?
  
4. Did you check the units of all data points to make sure they are in the right range?
  
5. Did you try to identify any errors or miscoding of variables?
  
6. Did you consider plotting on a log scale?
  
7. Would a scatterplot be more informative?

**V Inference**

1. Did you identify what large population you are trying to describe?
  
2. Did you clearly identify the quantities of interest in your model?
  
3. Did you consider potential confounders?
  
4. Did you identify and model potential sources of correlation such as measurements over time or space?
  
5. Did you calculate a measure of uncertainty for each estimate on the scientific scale?

**VI Prediction**

1. Did you identify in advance your error measure?
  
2. Did you immediately split your data into training and validation?
  
3. Did you use cross validation, resampling, or bootstrapping only on the training data?
  
4. Did you create features using only the training data?
  
5. Did you estimate parameters only on the training data?
  
6. Did you fix all features, parameters, and models before applying to the validation data?
  
7. Did you apply only one final model to the validation data and report the error rate?

**VII Causality**

1. Did you identify whether your study was randomized?
  
2. Did you identify potential reasons that causality may not be appropriate such as confounders, missing data, non-ignorable dropout, or unblinded experiments?
  
2. If not, did you avoid using language that would imply cause and effect?

**VIII Written analyses**

1. Did you describe the question of interest?
  
2. Did you describe the data set, experimental design, and question you are answering?
  
3. Did you specify the type of data analytic question you are answering?
  
4. Did you specify in clear notation the exact model you are fitting?
  
5. Did you explain on the scale of interest what each estimate and measure of uncertainty means?
  
6. Did you report a measure of uncertainty for each estimate on the scientific scale?

**IX Figures**

1. Does each figure communicate an important piece of information or address a question of interest?
  
2. Do all your figures include plain language axis labels?
  
3. Is the font size large enough to read?
  
4. Does every figure have a detailed caption that explains all axes, legends, and trends in the figure?

**X Presentations**

1. Did you lead with a brief, understandable to everyone statement of your problem?
  
2. Did you explain the data, measurement technology, and experimental design before you explained your model?
  
3. Did you explain the features you will use to model data before you explain the model?
  
4. Did you make sure all legends and axes were legible from the back of the room?

**XI Reproducibility**

1. Did you avoid doing calculations manually?
  
2. Did you create a script that reproduces all your analyses?
  
3. Did you save the raw and processed versions of your data?
  
4. Did you record all versions of the software you used to process the data?
  
5. Did you try to have someone else run your analysis code to confirm they got the same answers?

**XI R packages**

1. Did you make your package name "Googleable"
  
2. Did you write unit tests for your functions?
  
3. Did you write help files for all functions?
  
4. Did you write a vignette?
  
5. Did you try to reduce dependencies to actively maintained packages?
  
6. Have you eliminated all errors and warnings from R CMD CHECK?

&nbsp;
