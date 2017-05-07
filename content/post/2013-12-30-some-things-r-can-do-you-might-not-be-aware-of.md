---
id: 2369
title: Some things R can do you might not be aware of
date: 2013-12-30T16:04:24+00:00
author: Jeff Leek
al2fb_facebook_link_id:
  - 136171103105421_588575537864973
al2fb_facebook_link_time:
  - 2013-12-30T21:04:30+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2082484824
categories:
  - Uncategorized
slug: "some-things-r-can-do-you-might-not-be-aware-of"
---
There is a lot of noise around the "R versus Contender X" for Data Science. I think the two main competitors right now that I hear about are Python and Julia. I'm not going to weigh into the debates because I go by the motto: "Why not just use something that works?"

R offers a lot of benefits if you are interested in statistical or predictive modeling. It is basically unrivaled in terms of the breadth of packages for applied statistics.  But I think sometimes it isn't obvious that R can handle some tasks that you used to have to do with other languages. This misconception is particularly common among people who regularly code in a different language and are moving to R. So I thought I'd point out a few cool things that R can do. Please add to the list in the comments if I've missed things that R can do people don't expect.

  1. **R can do regular expressions/text processing:** Check out [stringr](http://cran.r-project.org/web/packages/stringr/index.html), [tm](http://cran.r-project.org/web/packages/tm/index.html), and a large number of other [natural language processing packages](http://cran.r-project.org/web/views/NaturalLanguageProcessing.html).
  2. **R can get data out of a database:** Check out [RMySQL](http://cran.r-project.org/web/packages/RMySQL/index.html), [RMongoDB](http://cran.r-project.org/web/packages/rmongodb/index.html), [rhdf5](http://www.bioconductor.org/packages/release/bioc/html/rhdf5.html), [ROracle](http://cran.r-project.org/web/packages/ROracle/index.html), [MonetDB.R](http://monetr.r-forge.r-project.org/) (via Anthony D.).
  3. **R can process nasty data: **Check out [plyr](http://cran.r-project.org/web/packages/plyr/index.html), [reshape2](http://cran.r-project.org/web/packages/reshape2/index.html), [Hmisc](http://cran.r-project.org/web/packages/Hmisc/index.html)
  4. **R can process images: **[EBImage](http://www.bioconductor.org/packages/2.13/bioc/html/EBImage.html) is a good general purpose tool, but there are also packages for various file types like [jpeg](http://cran.fhcrc.org/web/packages/jpeg/index.html).
  5. **R can handle different data formats: **[XML](http://cran.r-project.org/web/packages/XML/index.html) and [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html) handle two common types, but you can also read from Excel files with [xlsx](http://cran.r-project.org/web/packages/xlsx/index.html) or handle pretty much every common data storage type (you'll have to search [R + data type](http://lmgtfy.com/?q=R+%2B+data+type)) to find the package.
  6. **R can interact with APIs**: Check out [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html) and [httr](http://cran.r-project.org/web/packages/httr/) for general purpose software, or you could try some specific examples like [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html). You can create an api from R code using [yhat](http://yhathq.com/).
  7. **R can build apps/interactive graphics: **Some pretty cool things have already been built with [shiny](http://www.rstudio.com/shiny/), [rCharts](http://rcharts.io/) interfaces with a ton of interactive graphics packages.
  8. **R can create dynamic documents: **Try out [There is a lot of noise around the "R versus Contender X" for Data Science. I think the two main competitors right now that I hear about are Python and Julia. I'm not going to weigh into the debates because I go by the motto: "Why not just use something that works?"

R offers a lot of benefits if you are interested in statistical or predictive modeling. It is basically unrivaled in terms of the breadth of packages for applied statistics.  But I think sometimes it isn't obvious that R can handle some tasks that you used to have to do with other languages. This misconception is particularly common among people who regularly code in a different language and are moving to R. So I thought I'd point out a few cool things that R can do. Please add to the list in the comments if I've missed things that R can do people don't expect.

  1. **R can do regular expressions/text processing:** Check out [stringr](http://cran.r-project.org/web/packages/stringr/index.html), [tm](http://cran.r-project.org/web/packages/tm/index.html), and a large number of other [natural language processing packages](http://cran.r-project.org/web/views/NaturalLanguageProcessing.html).
  2. **R can get data out of a database:** Check out [RMySQL](http://cran.r-project.org/web/packages/RMySQL/index.html), [RMongoDB](http://cran.r-project.org/web/packages/rmongodb/index.html), [rhdf5](http://www.bioconductor.org/packages/release/bioc/html/rhdf5.html), [ROracle](http://cran.r-project.org/web/packages/ROracle/index.html), [MonetDB.R](http://monetr.r-forge.r-project.org/) (via Anthony D.).
  3. **R can process nasty data: **Check out [plyr](http://cran.r-project.org/web/packages/plyr/index.html), [reshape2](http://cran.r-project.org/web/packages/reshape2/index.html), [Hmisc](http://cran.r-project.org/web/packages/Hmisc/index.html)
  4. **R can process images: **[EBImage](http://www.bioconductor.org/packages/2.13/bioc/html/EBImage.html) is a good general purpose tool, but there are also packages for various file types like [jpeg](http://cran.fhcrc.org/web/packages/jpeg/index.html).
  5. **R can handle different data formats: **[XML](http://cran.r-project.org/web/packages/XML/index.html) and [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html) handle two common types, but you can also read from Excel files with [xlsx](http://cran.r-project.org/web/packages/xlsx/index.html) or handle pretty much every common data storage type (you'll have to search [R + data type](http://lmgtfy.com/?q=R+%2B+data+type)) to find the package.
  6. **R can interact with APIs**: Check out [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html) and [httr](http://cran.r-project.org/web/packages/httr/) for general purpose software, or you could try some specific examples like [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html). You can create an api from R code using [yhat](http://yhathq.com/).
  7. **R can build apps/interactive graphics: **Some pretty cool things have already been built with [shiny](http://www.rstudio.com/shiny/), [rCharts](http://rcharts.io/) interfaces with a ton of interactive graphics packages.
  8. **R can create dynamic documents: **Try out](http://yihui.name/knitr/) or [slidify](http://slidify.org/).
  9. **R can play with Hadoop: **Check out the [rhadoop wiki](https://github.com/RevolutionAnalytics/RHadoop/wiki).
 10. **R can create interactive teaching modules:** You can do it in the console with [swirl](http://swirlstats.com/) or on the web with [Datamind](http://www.datacamp.com/).
 11. **R interfaces very nicely with C if you need to be hardcore (also maybe? interfaces with Python): **[Rcpp](http://dirk.eddelbuettel.com/code/rcpp.html), enough said. Also [read the tutorial](http://adv-r.had.co.nz/Rcpp.html). I haven't tried the [rPython](http://cran.r-project.org/web/packages/rPython/rPython.pdf) library, but it looks like a great idea.
