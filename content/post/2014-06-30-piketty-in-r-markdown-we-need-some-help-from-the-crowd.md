---
id: 3188
title: 'Piketty in R markdown - we need some help from the crowd'
date: 2014-06-30T09:45:02+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_666403583415501
al2fb_facebook_link_time:
  - 2014-06-30T13:45:08+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/06/fig11.png
dsq_thread_id:
  - 2806941420
categories:
  - Uncategorized
slug: "piketty-in-r-markdown-we-need-some-help-from-the-crowd"
---
Thomas Piketty's book [Capital in the 21st Century](http://www.amazon.com/Capital-Twenty-First-Century-Thomas-Piketty/dp/067443000X) was a surprise best seller and the subject of intense scrutiny. A few weeks ago the [Financial Times claimed](http://www.ft.com/cms/s/2/e1f343ca-e281-11e3-89fd-00144feabdc0.html#axzz33PSo6ySt) that the analysis was riddled with errors, leading to a firestorm of discussion. A few days ago the [London School of economics posted](http://blogs.lse.ac.uk/impactofsocialsciences/2014/05/22/thomas-piketty-data-make-it-open/) a similar call to make the data open and machine readable saying.

> None of this data is explicitly open for everyone to reuse, clearly licenced and in machine-readable formats.

A few friends of Simply Stats  had started on a project to translate his work from the excel files where the [original analysis resides](http://piketty.pse.ens.fr/en/capital21c2) into R. The people that helped were [Alyssa Frazee](http://alyssafrazee.com/), [Aaron Fisher](http://aaronjfisher.wordpress.com/), [Bruce Swihart](http://www.biostat.jhsph.edu/~bswihart/), [Abhinav Nellore](http://www.biostat.jhsph.edu/people/postdocs/nellore.shtml), [Hector Corrada Bravo](http://www.cbcb.umd.edu/~hcorrada/), [John Muschelli](http://biostat.jhsph.edu/~jmuschel/) * [Hector Corrada Bravo](http://www.cbcb.umd.edu/~hcor), and me. We haven't finished translating all chapters, so we are asking anyone who is interested to help contribute to translating the book's technical appendices into R markdown documents. If you are interested, please send pull requests to the [gh-pages branch of this Github repo](https://github.com/jtleek/capitalIn21stCenturyinR/tree/gh-pages).

As a way to entice you to participate, here is one interesting thing we found. We don't know enough economics to know if what we are finding is "right" or not, but one interesting thing I found is that the x-axes in the excel files are really distorted. For example here is Figure 1.1 from the Excel files where the ticks on the x-axis are separated by 20, 50, 43, 37, 20, 20, and 22 years.

<p style="text-align: center;">
  <a href="http://simplystatistics.org/2014/06/30/piketty-in-r-markdown-we-need-some-help-from-the-crowd/fig11/" rel="attachment wp-att-3189"><img class=" wp-image-3189 aligncenter" alt="fig11" src="http://simplystatistics.org/wp-content/uploads/2014/06/fig11.png" width="503" height="346" srcset="http://simplystatistics.org/wp-content/uploads/2014/06/fig11-300x206.png 300w, http://simplystatistics.org/wp-content/uploads/2014/06/fig11-1024x704.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/06/fig11.png 1396w" sizes="(max-width: 503px) 100vw, 503px" /></a>
</p>

&nbsp;

Here is the same plot with an equally spaced x-axis.

<p style="text-align: center;">
  <a href="http://simplystatistics.org/2014/06/30/piketty-in-r-markdown-we-need-some-help-from-the-crowd/f11-us/" rel="attachment wp-att-3190"><img class=" wp-image-3190 aligncenter" alt="f11-us" src="http://simplystatistics.org/wp-content/uploads/2014/06/f11-us.png" width="450" height="393" srcset="http://simplystatistics.org/wp-content/uploads/2014/06/f11-us-300x262.png 300w, http://simplystatistics.org/wp-content/uploads/2014/06/f11-us.png 576w" sizes="(max-width: 450px) 100vw, 450px" /></a>
</p>

<p style="text-align: center;">
  <p style="text-align: left;">
    I'm not sure if it makes any difference but it is interesting. It sounds like on measure, the Piketty analysis <a href="http://simplystatistics.org/2014/06/03/post-piketty-lessons/">was mostly reproducible and reasonable</a>.  But having the data available in a more readily analyzable format will allow for more concrete discussion based on the data. So consider c<a href="https://github.com/jtleek/capitalIn21stCenturyinR/tree/gh-pages">ontributing to our github repo</a>.
  </p>
