---
title: People vs. Institutions in Data Analysis
date: '2018-06-15'
slug: people-vs-institutions-in-data-analysis
---

In my post about [relationships in data analysis](https://simplystatistics.org/2018/04/30/relationships-in-data-analysis/) I got a little push back regarding whether human relationships would ever *not* be important in data analysis and whether that has anything to do with the "maturity" of the field. I believe human beings will always play a role in data analysis, but it’s possible that over time they will play different roles. I wanted to discuss in this post what I meant about "institutions" and "institutional knowledge" in the context of data analysis and when the specific *person* who does the analysis is critical to how the analysis is done.

## Some lessons from finance

Peter Lynch, the legendary investor and manager of the Fidelity Magellan Fund, [once said](http://buffettfaq.com)

> Invest in businesses any idiot could run because someday one will.

A perhaps more detailed version of this sentiment comes from fellow legendary investor Warren Buffett, in his testimony before the U.S. Financial Crisis Inquiry Commission in 2010,

> I knew nothing about the management of Moody’s [a bond rating agency]. The—I’ve also said many times in reports and elsewhere that when a management with reputation for brilliance gets hooked up with a business with a reputation for bad economics, it’s the reputation of the business that remains intact.

> If you’ve got a good enough business, if you have a monopoly newspaper, if you have a network television station—I’m talking of the past—you know, your idiot nephew could run it. And if you’ve got a really good business, it doesn’t make any difference.

In both cases, they are talking about businesses that are generally thought to be "boring". This is because they are mature, have well-established (good) economics, and are not highly depended on the *people* running the company. In this sense, a business is mature of you don’t care who the CEO is (within reason, of course). Christopher Mims made the [latest version of this argument ($)](https://www.wsj.com/articles/the-age-of-tech-superheroes-must-end-1528387420?emailToken=b6be8f2b54a3953d4991cdb04eb5bffcLZGPd/1/T04rWTjtJZ9b4NBNmsC4JrLquJ9jUfTXXYVaXcN/dZpu4JbBT0S+6AKjfrMLcM+rtQObILto+5G9Fg%3D%3D&reflink=article_copyURL_share) in the Wall Street Journal in reference to tech founder "superheroes" and how they are ultimately bad for business.

I would argue that in data analysis, for better or for worse, you *do* care who is doing your data analysis.



## Maturity of Data Analysis

My thinking along these lines was that mature organizations or countries tend to replace people with institutions with the hope that the organization can continue forward regardless of who is running the institution, as long as the institution itself can keep functioning. Large corporations can replace their CEO and still continue to make money. Many large companies turnover much of their staff every year and continue to grow and profit. If you go to a startup company with three employees and replace the CEO, what you are left with is a completely different company. I believe the field of data analysis is closer to the startup company end of the spectrum than the mature company end. I don’t think we have much "institutional knowledge" about what to do in data analysis, largely because I believe we have a flawed model for what is a data analysis and because we do not have a transparent means of communicating to others what exactly we do in a data analysis. 

Many data analysts have likely had the experience of a collaborator approaching them with some data and telling them something along the lines of, "This is easy, just run the regression on the data." Collaborators like these think of data analysis as having deep institutional knowledge, whereby everyone has the exact same understanding of what it means to "run the regression". But the reality is the regression modeling is a complex task that typically requires iterating repeatedly with collaborators over what should be done. This is because "running the regression" is intricately tied up with the context in which the data were generated and the audience to which the results will be presented. All of this is to say that the *person* doing the analysis is critical to the analysis itself, in part because they will have to manage the relationships with other parties involved. If "running the regression" were in fact as simple as calling the `lm()` function in R and spitting out the summary, then yes, it would hardly matter which person called that function.

By contrast, let’s take a look at a different task: matrix inversion. Matrix inversion is a critical task for any statistical modeling. For one, it lies at the heart of regression modeling! However, most analysts probably don’t think twice about doing it; the `lm()` function just does it for you (buried somewhere down in all that Fortran code). In the past, one might have had to call up the numerical analyst to develop a deep understanding of our design matrices and implement the best possible approach to inverting its cross product. Now we can just call `solve()` (although you should [probably not do that for other reasons!](https://bookdown.org/rdpeng/advstatcomp/textbooks-vs-computers.html)). Knowledge of matrix inversion has gotten to the point where for most cases, and in most reasonable situations, we can do it without much thinking. It is in that sense that we have "institutional knowledge". We can leverage that institutional knowledge and implement it in R code that anyone can call. If someone came to me and say "Hey, invert this matrix,” I would happily push the button to do so. The result would be the same no matter who called the `solve()` function. There are obviously some corner cases in which we might want to talk with a numerical analyst, but the number of those cases is small (and probably shrinking). 

The beauty of linear regression is that it is so general that it can be applied to a myriad of problems and questions. But its generality is what makes it difficult to formalize the "regression modeling" process because every single context in which linear regression is applied is different. Furthermore, regression modeling is typically not a single procedure, but rather a collection of procedures, including visualization, model diagnostics, and uncertainty quantification. It may be possible to automate the process within a very narrow context, it’s unlikely that knowledge gained in that narrow context could be brought over to a different context. 

## The Dream

I’ve [written previously](https://simplystatistics.org/2016/05/11/palantir-struggles/) about how the dream of many companies today is to completely “institutionalize" the process of data analysis (I think I used the word “productize” before). If the process of data analysis were so mature that its critical elements could be coded in software, then yes, I think that could be a money-making idea. But the problem is that we still have much to learn about data analysis. Sure, individual components are well understood, but we are far from being able to push a button and “run the regression”. We will still need people involved in the process for the near future.

*You can hear more from me and the JHU Data Science Lab by subscribing to our weekly newsletter [Monday Morning Data Science](http://jhudatascience.us16.list-manage.com/subscribe?u=5ea551600fcdf84334e5aa6b0&id=26c0b7221a)*.
