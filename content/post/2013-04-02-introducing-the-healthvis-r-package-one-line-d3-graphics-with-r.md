---
id: 1130
title: 'Introducing the healthvis R package  - one line D3 graphics with R'
date: 2013-04-02T10:00:39+00:00
author: Jeff Leek
dsq_thread_id:
  - 1180666441
al2fb_facebook_exclude:
  - 
al2fb_facebook_exclude_video:
  - 
al2fb_facebook_link_id:
  - 136171103105421_479433478779180
al2fb_facebook_link_time:
  - 2013-04-02T14:00:49+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
categories:
  - Uncategorized
tags:
  - healthvis
  - interactive visualization
  - R
  - shiny
  - visualization
slug: "introducing-the-healthvis-r-package-one-line-d3-graphics-with-r"
---
<p dir="ltr">
  We have been a little slow on the posting for the last couple of months here at Simply Stats. That’s bad news for the blog, but good news for our research programs!
</p>

Today I’m announcing the new <a style="font-size: 16px" href="http://healthvis.org/">healthvis</a> R package that is being developed by my student <a style="font-size: 16px" href="http://www.biostat.jhsph.edu/~prpatil/">Prasad Patil </a>(who needs a website like yesterday), <a style="font-size: 16px" href="http://www.cbcb.umd.edu/~hcorrada/">Hector Corrada Bravo</a>, and myself*. The basic idea is that I have loved <a style="font-size: 16px" href="http://d3js.org/">D3 interactive graphics</a> for a while. But they are hard to create from scratch, since they require knowledge of both Javascript and the D3 library.

Even with those skills, it can take a while to develop a new graphic. On the other hand, I know a lot about R and am often analyzing biomedical data where interactive graphics could be hugely useful. There are a couple of really useful tools for creating interactive graphics in R, most notably <a style="font-size: 16px" href="http://www.rstudio.com/shiny/">Shiny</a>, which is awesome. But these tools still require a bit of development to get right and are designed for “stand alone” tools.

So we created an R package that builds specific graphs that come up commonly in the analysis of health data like survival curves, heatmaps, and <a style="font-size: 16px" href="http://library.mpib-berlin.mpg.de/ft/mg/MG_Using_2009.pdf">icon arrays</a>. For example, here is how you make an interactive survival plot comparing treated to untreated individuals with healthvis:

<pre class="brush: r; title: ; notranslate" title=""># Load libraries

library(healthvis)
library(survival)

# Run a cox proportional hazards regression

cobj &lt;- coxph(Surv(time, status)~trt+age+celltype+prior, data=veteran)

# Plot using healthvis - one line!

survivalVis(cobj, data=veteran, plot.title=&quot;Veteran Survival Data&quot;, group=&quot;trt&quot;, group.names=c(&quot;Treatment&quot;, &quot;No Treatment&quot;), line.col=c(&quot;#E495A5&quot;,&quot;#39BEB1&quot;))

</pre>

The “survivalVis” command above  produces an interactive graphic <a style="font-size: 16px" href="http://healthviz.appspot.com/display/hs_20001">like this</a>. Here it is embedded (you may have to scroll to see the dropdowns on the right - we are working on resizing)


`<p dir="ltr">
  We have been a little slow on the posting for the last couple of months here at Simply Stats. That’s bad news for the blog, but good news for our research programs!
</p>

Today I’m announcing the new <a style="font-size: 16px" href="http://healthvis.org/">healthvis</a> R package that is being developed by my student <a style="font-size: 16px" href="http://www.biostat.jhsph.edu/~prpatil/">Prasad Patil </a>(who needs a website like yesterday), <a style="font-size: 16px" href="http://www.cbcb.umd.edu/~hcorrada/">Hector Corrada Bravo</a>, and myself*. The basic idea is that I have loved <a style="font-size: 16px" href="http://d3js.org/">D3 interactive graphics</a> for a while. But they are hard to create from scratch, since they require knowledge of both Javascript and the D3 library.

Even with those skills, it can take a while to develop a new graphic. On the other hand, I know a lot about R and am often analyzing biomedical data where interactive graphics could be hugely useful. There are a couple of really useful tools for creating interactive graphics in R, most notably <a style="font-size: 16px" href="http://www.rstudio.com/shiny/">Shiny</a>, which is awesome. But these tools still require a bit of development to get right and are designed for “stand alone” tools.

So we created an R package that builds specific graphs that come up commonly in the analysis of health data like survival curves, heatmaps, and <a style="font-size: 16px" href="http://library.mpib-berlin.mpg.de/ft/mg/MG_Using_2009.pdf">icon arrays</a>. For example, here is how you make an interactive survival plot comparing treated to untreated individuals with healthvis:

<pre class="brush: r; title: ; notranslate" title=""># Load libraries

library(healthvis)
library(survival)

# Run a cox proportional hazards regression

cobj &lt;- coxph(Surv(time, status)~trt+age+celltype+prior, data=veteran)

# Plot using healthvis - one line!

survivalVis(cobj, data=veteran, plot.title=&quot;Veteran Survival Data&quot;, group=&quot;trt&quot;, group.names=c(&quot;Treatment&quot;, &quot;No Treatment&quot;), line.col=c(&quot;#E495A5&quot;,&quot;#39BEB1&quot;))

</pre>

The “survivalVis” command above  produces an interactive graphic <a style="font-size: 16px" href="http://healthviz.appspot.com/display/hs_20001">like this</a>. Here it is embedded (you may have to scroll to see the dropdowns on the right - we are working on resizing)


` 

The advantage of this approach is that you can make common graphics interactive without a lot of development time. Here are some other unique features:

  * <p dir="ltr">
      The graphics are hosted on Google App Engine. With one click you can get a permanent link and share it with collaborators.
    </p>

  * <p dir="ltr">
      With another click you can get the code to embed the graphics in your website.
    </p>

  * <p dir="ltr">
      If you have already created D3 graphics it only takes a few minutes to <a href="http://healthvis.wordpress.com/develop/">develop a healthvis version</a> to let R users create their own - email us and we will make it part of the healthvis package!
    </p>

  * <p dir="ltr">
      healthvis is totally general - you can develop graphics that don’t have anything to do with health with our framework. Just email to get in touch if you want to be a developer at <a href="mailto:healthvis@gmail.com">healthvis@gmail.com</a>
    </p>

We have started a blog over at <a style="font-size: 16px" href="http://healthvis.org/">healthvis.org</a> where we will be talking about the tricks we learn while developing D3 graphics, updates to the healthvis package, and generally talking about visualization for new technologies like those developed by the CCNE and individualized health. If you are interested in getting involved as a developer, user or tester, drop us a line and let us know. In the meantime, happy visualizing!

_* This project is supported by the [JHU CCNE](http://ccne.inbt.jhu.edu/) (U54CA151838) and the Johns Hopkins [inHealth initiative](http://web.jhu.edu/administration/provost/initiatives/ihi/)._
