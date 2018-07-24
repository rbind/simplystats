---
title: Partitioning the Variation in Data
author: Roger Peng
date: '2018-07-23'
slug: partitioning-the-variation-in-data
---

One of the fundamental questions that we can ask in any data analysis is, "Why do things vary?" Although I think this is fundamental, I’ve found that it’s not explicitly asked as often as I might think. The problem with *not* asking this question is that it can often lead to a lot of pointless and time-consuming work. Taking a moment to ask yourself, “What do *I* know that can explain why this feature or variable varies?” can often make you realize that you actually know more than you think you do. Developing an understanding of the sources of variation in the data is a key goal of exploratory data analysis.

When embarking on a data analysis, ideally *before* you look at the data, it’s useful to *partition the variation* in the data. This can be roughly broken down into to categories of variation: fixed and random. Within each of those categories, there can be a number of sub-categories of things to investigate.

## Fixed variation

Fixed variation in the data is attributable to fixed characteristics in the world. If we were to sample the data again, the variation in the data attributable to fixed characteristics would be *exactly the same*. A classic example of a fixed characteristic is seasonality in time series data. If you were to look at a multi-year time series of mortality in the United States, you would see that mortality tends to be higher in the winter season and lower in the summer season. In a time series of daily ozone air pollution values, you would see that ozone is highest in the summer and lowest in the winter. For each of these examples, the seasonality is consistent pretty much every year. For ozone, the explanation has to do with the nature of atmospheric chemistry; for mortality the explanation is less clear and more complicated (and likely due to a combination of factors).

Data having fixed variation doesn’t imply that it always has the same values every time you sample the data, but rather the general patterns in the data remain the same. If the data are different in each sample, that is likely due to *random variation*, which we discuss in the next section.

Understanding which aspects of the variation in your data are fixed is important because often you can collect data on those fixed characteristics and use them directly in any statistical modeling you might do. For example, season is an easy covariate to include because we already know when the seasons begin and end. Using a covariate representing month or quarter will usually do the trick. 

Explaining the variation in your data by introducing fixed characteristics in a model can reduce uncertainty and improve efficiency or precision. This may require more work though, in the form of going out and collecting more data or retrieving more variables. But doing this work will ultimately be worth it. Attempting to model variation in the data that is inherently fixed is a waste of time and will likely cost you degrees of freedom in the model.

In my experience looking at biomedical data, I have found that a lot of variation in the data can be explained by a few fixed characteristics: age, sex, location, season, temperature, etc. In fact, often so much can be explained that there is little need for explicit models of the random variation. One difficult aspect of this approach though is that it requires a keen understanding of the [context](https://simplystatistics.org/2018/05/24/context-compatibility-in-data-analysis/) surrounding the data as well as having a good [relationship with a subject matter expert](https://simplystatistics.org/2018/04/30/relationships-in-data-analysis/) who can help inform you about the sources of variation. Investing in learning more about the data, before digging into the data itself, can save you a lot of time in the modeling phase of data analysis.

## Random variation

Once we’ve partitioned out all of the variation in the data that can be attributed to fixed characteristics, what’s left is random variation. It is sometimes tempting to look at data and claim that all of the variation is random because then we can model it without collecting data on any more covariates! Developing new and fancy models can be fun and exciting, but let’s face it, we can usually eliminate the need for all that by just collecting a little better data. It’s useful to at least hypothesize about what might be driving that observed variation and collect the extra data that’s needed.

Random variation causes data to look different every time we sample it. While we might be quite sure that ozone is going to be high in the summer (versus the winter), that doesn’t mean that it will always be 90 parts per billion on June 30. It might be 85 ppb one year and 96 ppb another year. Those differences are not easily explainable by fixed phenomena and so it might be reasonable to characterize them as random differences. The key thing to remember about random variation in the data is

> Random variation must be independent of the variation attributable to fixed characteristics

It’s sometimes said that random variation is just “whatever is leftover” that we could not capture with fixed features. However, this is an uncritical way of looking at the data because if there are fixed characteristics that get thrown in the random variation bin, then you could be subjecting your data analysis to hidden bias or confounding. There are some ways to check for this in the modeling stage of data analysis, but it’s better do what you can to figure things out beforehand in the discovery and exploration phases.

One application where random variation is commonly modeled is with financial market data, and for good reason. The [efficient-market hypothesis](https://en.wikipedia.org/wiki/Efficient-market_hypothesis) states that, essentially, if there were any fixed (predictable) variation in the prices of financial assets, then market participants would immediately seize upon that information to profit through arbitrage opportunities. If you knew for example that Apple’s stock price was always low in the winter and high in the summer, you could just buy in the winter and sell in the summer and make money without risk. But if *everyone* did that, then eventually that arbitrage opportunity would go away (as well as the fixed seasonal effect). Any variation in the stock price that is leftover is simply random variation, which is why it can be so difficult to “beat the market”.


## Is it really random?

When I see students present data analyses, and they use a standard linear model that has an outcome (usually labeled *Y*), a predictor (*X*), and random variation or error (*e*), my first question is always about the error component. Usually, there is a little confusion about why I would ask about that since that part is just “random” and uninteresting. But when I try to lead them into a discussion of why there is random variation in the data, often we discover some additional variables that we’d like to have but don’t have data on. 

Usually, there is a very good explanation of why we don’t have those data. My point is not to criticize the student for not having data that they couldn’t get, but to emphasize that those features are potential confounders and are not random. Just because you cannot obtain data about something doesn’t mean you can declare something random by fiat. If data cannot be collected on those features, it might be worth investigating whether a reasonable surrogate can be found. Finding a surrogate may not be ideal, but it can usually give you a sense of whether your model is completely off or not.

One example of using a surrogate involves estimating smoking prevalence in a population. Data about smoking behaviors is available in some surveys in the United States, but comprehensive data across the nation is not. In a [recent study about mortality and air pollution by Zeger et al.](https://www.ncbi.nlm.nih.gov/pubmed/19079710), they used lung cancer as a surrogate. The logic here is that lung cancer is generally caused by smoking, and so although it’s not a perfect indicator of smoking prevalence, it is a rough surrogate for that behavior.

## Summary

Partitioning your data into fixed and random components of variation can be a useful exercise even before you look at the data. It may lead you to discover that there are important features for which you do not have data but that you can go out and collect. Making the effort to collect additional data when it is warranted can save a lot of time and effort trying to model variation as if it were random. More importantly, omitting important fixed effects in a statistical model can lead to hidden bias or confounding. When data on omitted variables cannot be collected, trying to find a surrogate for those variables can be a reasonable alternative.
