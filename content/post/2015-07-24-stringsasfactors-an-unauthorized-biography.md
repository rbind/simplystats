---
id: 4151
title: 'stringsAsFactors: An unauthorized biography'
date: 2015-07-24T11:04:20+00:00
author: Roger Peng
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_836227039766487
al2fb_facebook_link_time:
  - 2015-07-24T15:04:28+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 3966706260
categories:
  - Uncategorized
slug: "stringsasfactors-an-unauthorized-biography"
---
Recently, I was listening in on the conversation of some colleagues who were discussing a bug in their R code. The bug was ultimately traced back to the well-known phenomenon that functions like 'read.table()' and 'read.csv()' in R convert columns that are detected to be character/strings to be factor variables. This lead to the spontaneous outcry from one colleague of

> Why does stringsAsFactors not default to FALSE????

The argument 'stringsAsFactors' is an argument to the 'data.frame()' function in R. It is a logical that indicates whether strings in a data frame should be treated as factor variables or as just plain strings. The argument also appears in 'read.table()' and related functions because of the role these functions play in reading in table data and converting them to data frames. By default, 'stringsAsFactors' is set to TRUE.

This argument dates back to May 20, 2006 when it was originally introduced into R as the 'charToFactor' argument to 'data.frame()'. Soon afterwards, on May 24, 2006, it was changed to 'stringsAsFactors' to be compatible with S-PLUS by request from Bill Dunlap.

Most people I talk to today who use R are completely befuddled by the fact that 'stringsAsFactors' is set to TRUE by default. First of all, it should be noted that before the 'stringsAsFactors' argument even existed, the behavior of R was to coerce all character strings to be factors in a data frame. If you didn't want this behavior, you had to manually coerce each column to be character.

So here's the story:

In the old days, when R was primarily being used by statisticians and statistical types, this setting strings to be factors made total sense. In most tabular data, if there were a column of the table that was non-numeric, it almost certainly encoded a categorical variable. Think sex (male/female), country (U.S./other), region (east/west), etc. In R, categorical variables are represented by 'factor' vectors and so character columns got converted factor.

Why do we need factor variables to begin with? Because of modeling functions like 'lm()' and 'glm()'. Modeling functions need to treat expand categorical variables into individual dummy variables, so that a categorical variable with 5 levels will be expanded into 4 different columns in your modeling matrix. There's no way for R to know it should do this unless it has some extra information in the form of the factor class. From this point of view, setting 'stringsAsFactors = TRUE' when reading in tabular data makes total sense. If the data is just going to go into a regression model, then R is doing the right thing.

There's also a more obscure reason. Factor variables are encoded as integers in their underlying representation. So a variable like "disease" and "non-disease" will be encoded as 1 and 2 in the underlying representation. Roughly speaking, since integers only require 4 bytes on most systems, the conversion from string to integer actually saved some space for long strings. All that had to be stored was the integer levels and the labels. That way you didn't have to repeat the strings "disease" and "non-disease" for as many observations that you had, which would have been wasteful.

Around June of 2007, R introduced hashing of CHARSXP elements in the underlying C code thanks to Seth Falcon. What this meant was that effectively, character strings were hashed to an integer representation and stored in a global table in R. Anytime a given string was needed in R, it could be referenced by its underlying integer. This effectively put in place, globally, the factor encoding behavior of strings from before. Once this was implemented, there was little to be gained from an efficiency standpoint by encoding character variables as factor. Of course, you still needed to use 'factors' for the modeling functions.

The difference nowadays is that R is being used a by a very wide variety of people doing all kinds of things the creators of R never envisioned. This is, of course, wonderful, but it introduces lots of use cases that were not originally planned for. I find that most often, the people complaining about 'stringsAsFactors' not being FALSE are people who are doing things that are not the traditional statistical modeling things (things that old-time statisticians like me used to do). In fact, I would argue that if you're upset about 'stringsAsFactors = TRUE', then it's a pretty good indicator that you're either not a statistician by training, or you're doing non-traditional statistical things.

For example, in genomics, you might have the names of the genes in one column of data. It really doesn't make sense to encode these as factors because they won't be used in any modeling function. They're just labels, essentially. And because of CHARSXP hashing, you don't gain anything from an efficiency standpoint by converting them to factors either.

But of course, given the long-standing behavior of R, many people depend on the default conversion of characters to factors when reading in tabular data. Changing this default would likely result in an equal number of people complaining about 'stringsAsFactors'.

I fully expect that this blog post will now make all R users happy. If you think I've missed something from this unauthorized biography, please let me know on Twitter (@rdpeng).
