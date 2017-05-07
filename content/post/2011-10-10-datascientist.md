---
id: 419
title: An R function to determine if you are a data scientist
date: 2011-10-10T13:05:54+00:00
author: admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/11271228367/datascientist
tumblr_simplystatistics_id:
  - 11271228367
dsq_thread_id:
  - 934766231
categories:
  - Uncategorized
tags:
  - diy
  - fun
  - R
slug: "datascientist"
---
&#8220;Data scientist&#8221; is one of the buzzwords in the running for rebranding applied statistics mixed with some computing. David Champagne, over at Revolution Analytics, <a href="http://tdwi.org/articles/2011/01/05/Rise-of-Data-Science.aspx" target="_blank">described</a> the skills for being a data scientist with a Venn Diagram. Just for fun, I wrote a little R function for determining where you land on the data science Venn Diagram. Here is an example of a plot the function makes using the Simply Statistics bloggers as examples. 

![](http://www.biostat.jhsph.edu/~jleek/datascience2.png)

The code can be found <a href="http://biostat.jhsph.edu/~jleek/code/dataScientist.R" target="_blank">here</a>. You will need the <a href="http://cran.r-project.org/web/packages/png/index.html" target="_blank">png</a> and <a href="http://cran.r-project.org/web/packages/klaR/index.html" target="_blank">klaR</a> R packages to run the script. You also need to either download the file <a href="http://biostat.jhsph.edu/~jleek/datascience.png" target="_blank">datascience.png</a> or be connected to the internet. 

Here is the function definition:

dataScientist(names=c(&#8220;D. Scientist&#8221;),skills=matrix(rep(1/3,3),nrow=1), addSS=TRUE, just=NULL)

  * names = a character vector of the names of the people to plot
  * addSS = if TRUE will add the blog authors to the plot
  * just = whether to write the name on the right or the left of the point, just = &#8220;left&#8221; prints on the left and just =&#8221;right&#8221; prints on the right. If just=NULL, then all names will print to the right. 
  * skills = a matrix with one row for each person you are plotting, the first column corresponds to &#8220;hacking&#8221;, the second column is &#8220;substantive expertise&#8221;, and the third column is &#8220;math and statistics knowledge&#8221;

So how do you define your skills? Here is how it works:

**If you are an academic**

You calculate your skills by adding papers in journals. The classification scheme is the following:

  * Hacking = sum of papers in journals that are primarily dedicated to software/computation/methods for very specific problems. Examples are: Bioinformatics, Journal of Statistical Software, IEEE Computing in Science and Engineering, or a software article in Genome Biology.
  * Substantive  = sum of papers in journals that primarily publish scientific results such as JAMA, New England Journal of Medicine, Cell, Sleep, Circulation
  * Math and Statistics = sum of papers in primarily statistical journals including Biostatistics, Biometrics, JASA, JRSSB, Annals of Statistics

Some journals are general, like Nature, Science, the Nature sub-journals, PNAS, and PLoS One. For papers in those journals, assess which of the areas the paper falls in by determining the main contribution of the paper in terms of the non-academic classification below. 

**If you are a non-academic**

Since papers aren&#8217;t involved, determine the percent of your time you spend on the following things:

  * Hacking = downloading/transferring data, cleaning data, writing software, combining previously used software
  * Substantive = time you spend learning about the scientific problem, discussing with scientists, working in the lab/field.
  * Math and Statistics = time you spend formalizing a problem in mathematical notation, time you spend developing new mathematical/statistical theory, time you spend developing general method.

Enjoy!
