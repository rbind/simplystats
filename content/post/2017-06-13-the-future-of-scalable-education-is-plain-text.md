---
title: The future of education is plain text
author: Jeff Leek
date: '2017-06-13'
slug: the-future-of-education-is-plain-text
categories:
  - Education
tags:
  - moocs
---

I was recently at a National Academy meeting on [Envisioning the Data Science Curriculum](http://sites.nationalacademies.org/CSTB/CurrentProjects/CSTB_175246). It was a fun meeting and one of the questions that came up was what kind of infrastructure do we need to enable shared curricula, compatibility across schools, and not reinventing the wheel. My answer to this question was that we need lecture notes stored in plain text files (like [rmarkdown](http://rmarkdown.rstudio.com/) files) and data stored in [csv files](https://simplystatistics.org/2016/04/20/data-repositories/) with direct links. 

I am not nearly the first person to make this argument. [Lorena Barba](https://www.class-central.com/report/why-my-mooc-is-not-built-on-video/) explained why her MOOC doesn't use video almost two years ago now. More recently a blog post pointed out some advantages of plain text code files for [data analysis](http://minimaxir.com/2017/06/r-notebooks/). I'm sure there are more that I don't know about. 

I think that the future of education is in plain text documents (not just for data science) and that the future of data storage is in simple csvs for all but the most complicated data sets. Why? 

* __Plain text is always compatible__ Every single operating system has a plain text editor and they are all compatible up to the encoding of the text. This means that if you develop your lecture notes on a Mac and I develop them on a PC then we can still easily share - no worrying if you have the right software. 
* __Plain text is easy to mix and match__ If your lecture materials are in a simple plain text format like markdown you can copy and paste the materials from one lecture into another and when the document is compiled make all the formatting/colors/etc. match. No more looking at hodgepodges of borrowed slides some with one ppt format and some with another. 
* __Plain text is easy to maintain__ We mostly work on scalable education here at the JHU [Data Science Lab](http://jhudatascience.org/). We often think of scalable education in terms of the number of students, but here we have also run into the problem of scaling the number of courses/instructor. I  am currently the lead instructor on more than half a dozen classes running all the time. Every time I have to re-record a video it takes set up time, recording time, editing time. If I have an error in a markdown file it is a quick edit to a text file. 
* __Plain text is lightweight__ Images can be stored online and the lecture notes themselves are small. This might not matter where internet access is good, but in places with limited resources or wifi, this can be the difference from easily accessible lecture notes and bad ones. 
* __Plain text is always forward compatible__ Regardless of the next platform, if we have all of our knowledge/lecture notes stored in plain text it will be easy to extact them. When you switch platform, or compiling software, or style, there isn't a worry about the files not working appropriately. 


We believe in this so much that we are working on ways to make course videos generatable from [plain text files](https://github.com/seankross/ari) and more recently trying to figure out ways to make the puppets move [from plain text files alone](https://youtu.be/f3Th86Yz9IM). 

![](https://user-images.githubusercontent.com/1571674/27088881-e9f9f62a-5026-11e7-8b75-4826d95fcf7c.png)


So if people are looking for infrastructure to fund - places to make it easier to edit/host/share plain text and plain csv files!