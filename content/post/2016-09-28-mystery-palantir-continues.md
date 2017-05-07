---
title: The Mystery of Palantir Continues
author: roger
slug: "mystery-palantir-continues"
date: 2016-09-28
---

Palantir, the secretive data science/consulting/software company, continues to be a mystery to most people, but recent reports have not been great. [Reuters reports](http://www.nytimes.com/reuters/2016/09/26/business/26reuters-palantir-tech-discrimination-lawsuit.html?smprod=nytcore-iphone&smid=nytcore-iphone-share&_r=0) that the U.S. Department of Labor is suing it for employment discrimination:

> The lawsuit alleges Palantir routinely eliminated Asian applicants in the resume screening and telephone interview phases, even when they were as qualified as white applicants.

Interestingly, the report indicates a statistical argument:

> In one example cited by the Labor Department, Palantir reviewed a pool of more than 130 qualified applicants for the role of engineering intern. About 73 percent of applicants were Asian. The lawsuit, which covers Palantir's conduct between January 2010 and the present, said the company hired 17 non-Asian applicants and four Asians. "The likelihood that this result occurred according to chance is approximately one in a billion," said the lawsuit, which was filed with the department's Office of Administrative Law Judges.

*Update: Thanks to David Robinson for point out that (a) I read the numbers incorrectly and (b) I should have used the hypergeometric distribution to account for the sampling without replacement. The paragraph below is corrected accordingly.*

Note the use of the phrase "qualified applicants" in reference to the
130. Presumably, there was a screening process that removed
"unqualified applicants" and that led us to 130. Of the 130, 73% were
Asian. Presumably, there was a follow up selection process (interview,
exam) that led to 4 Asians being hired out of 21 (about 19%). Clearly
there's a difference between 19% and 73% but the reasons may not be
nefarious. If you assume the number of Asians hired is proportional to
the number in the qualified pool, then the p-value for the observed
data is about 10^-8, which is not quite "1 in a billion" as the
report claims but it's indeed small. But my guess is the Labor
Department has more than this test of binomial proportions in terms of
evidence if they were to go through with a suit.

Alfred Lee from [The Information](http://go.theinformation.com/r958P12lLdw) reports that a mutual fund run by Valic sold their shares of Palantir for below the recent valuation:

> The Valic fund sold its stake at $4.50 per share, filings show, down from the $11.38 per share at which the company raised money in December. The value of the stake at the sale price was $621,000. Despite the price drop, Valic made money on the deal, as it had acquired stock in preferred fundraisings in 2012 and 2013 at between $3.06 and $3.51 per share.

The valuation suggested in the article by the recent sale is $8 billion. In my [previous post on Palantir](http://simplystatistics.org/2016/05/11/palantir-struggles/), I noted that while other large-scale consulting companies certainly make a lot of money, none have the sky-high valuation that Palantir commands. However, a more "down-to-Earth" valuation of $8 billion might be more or less in line with these other companies. It may be bad news for Palantir, but should the company ever have an IPO, it would be good for the public for market participants to realize the intrinsic value of the company.
