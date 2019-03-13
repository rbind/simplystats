---
title: 10 things R can do that might surprise you
author: ~
date: '2019-03-13'
slug: 10-things-r-can-do-that-might-surprise-you
categories: []
tags: []
---

Over the last few weeks I've had a couple of interactions with folks from the computer science world who were pretty disparaging of the R programming language. A lot of the critism focused on perceived limitations of R to statistical analysis. 

It's true, R does have a hugely comprehensive list of analysis packages on [CRAN](https://cran.r-project.org/), [Bioconductor](http://bioconductor.org/), [Neuroconductor](https://neuroconductor.org/), and [ROpenSci](https://ropensci.org/) as well as great package management. As I was having these conversations I realized that R has grown into a multi-purpose connective language for things beyond just data analysis. But that the functionality isn't always as well known outside of the R community. So this post is about some of the ridiculously awesome features of R that may or may not be as widely known. Here are 10 things R can do you might not have known about, building on [Kara's great tweet thread about lighthearted things to do with R](https://twitter.com/kara_woo/status/1100908125396193281).


##  1. You can write reproducible Word or Powerpoint documents from R markdown

The [rmarkdown](https://rmarkdown.rstudio.com/) package lets you [create reproducible Word documents](https://bookdown.org/yihui/rmarkdown/word-document.html) and [reproducible Powerpoint Presentations](https://bookdown.org/yihui/rmarkdown/powerpoint-presentation.html) from your R markdown code just by changing one line in the YAML! 

## 2. You can build and host interactive web apps in just a few lines of code 

In just a few lines of code you can create interactive web apps in R. For example, [in just 36 lines of code](https://gist.github.com/jtleek/3e1baac9a74ea81556c9e6d55743d7ea) you can create an interactive dashboard to explore your BMI in relation to the NHANES sample using the [flexdashboard](https://rmarkdown.rstudio.com/flexdashboard/) package. 

## 3. You can host your web apps in one more line of R code

The other cool thing about building web apps in R is that you can get them up on the web with just another line or two of R code using the [rsconnect](https://cran.r-project.org/web/packages/rsconnect/index.html) package. You can put them up on your own server or, even easier, host them on a cloud server like [shinyapps.io](https://www.shinyapps.io/). 

## 4. You can connect to almost any database under the sun and pull data with dplyr/dbplyr

It is really easy to connect to almost any database (local or remote) using the [dbplyr](https://cran.r-project.org/web/packages/dbplyr/index.html) package. This makes it possible for an R user to work independently pulling data from [almost all common database types](https://cfss.uchicago.edu/distrib001_database.html). You can also use specialized packages like [bigrquery](https://cran.r-project.org/web/packages/bigrquery/index.html) to work directly with BigQuery and other high performance data stores. 



## 5. You can use the same dplyr grammar locally or on data on multiple different data stores

Once you learn how to do basic data tranforms with [dplyr](https://dplyr.tidyverse.org/), you can apply the same code to analyze data locally on your computer or remotely on any of the above databases or data stores. This simplifies and unifies data manipulation across multiple different databases and languages. 


## 6. You can fit deep learning models with keras and Tensorflow

The [keras](https://keras.rstudio.com/) package allows you to fit both pre-trained and denovo deep learning models directly from R. You can also work with the direct [TensorFlow](https://tensorflow.rstudio.com/) interface to fit the same kind of models. 

## 7. You can build APIs and serve them from R

The [plumbr](https://www.rplumber.io/) R package lets you convert R functions to web APIs that can be integrated into downstream applications. If you have Rstudio Connect you can also [deploy them as easily](https://blog.rstudio.com/2017/08/03/rstudio-connect-v1-5-4-plumber/) as you deploy web apps. 

## 8. You can make video game interfaces with R

Not only can you deploy web apps, you can make them into awesome video games in R. The [nessy](https://github.com/ColinFay/nessy) package lets you create NES looking Shiny apps and [deploy them](https://lucy.shinyapps.io/classify/) just like you would any other Shiny app.

## 9. You can analyze data using Spark clusters right from R

Want to fit big, gnarly machine learning models on huge data sets? You can do that right from R using the [sparklyr](https://spark.rstudio.com/) package. You can use spark on your Desktop or a monster Spark cluster. 

## 10. You can build and learn R interactively in R

The [swirl](https://swirlstats.com/) package is an R package that lets you build interactive tutorials for R, right inside R. 


This is by no means a comprehensive list. You can also connect to AWS Polly and write [text to speech synthesis](https://github.com/seankross/ari) software or build Shiny apps that [respond to voice commands](https://yihui.shinyapps.io/voice/) or build apps that let you combine deep learning and accelerometry data to cast [Harry Potter spells](https://jhubiostatistics.shinyapps.io/cast_spells/). The point is that R has become much more than just a data analysis language (although its still good at that!) and being good at R opens the door to lots of practical and cool applications. 
