---
id: 2946
title: Correlation does not imply causation (parental involvement edition)
date: 2014-04-17T10:00:24+00:00
author: Rafael Irizarry
al2fb_facebook_link_id:
  - 136171103105421_633700596685800
al2fb_facebook_link_time:
  - 2014-04-17T14:00:34+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
dsq_thread_id:
  - 2618944755
categories:
  - Uncategorized
slug: "correlation-does-not-imply-causation-parental-involvement-edition"
---
The New York Times recently published [an article](http://opinionator.blogs.nytimes.com/2014/04/12/parental-involvement-is-overrated/?rref=opinion&module=ArrowsNav&contentCollection=Opinion&action=keypress&region=FixedLeft&pgtype=Blogs) on education titled "Parental Involvement Is Overrated". Most research in this area supports the opposite view, but the authors claim that "evidence from our research suggests otherwise".  Before you stop helping your children understand long division or correcting their grammar, you should learn about one of the most basic statistical concepts: correlation does not imply causation. The first two chapters of this [very popular text book](http://www.amazon.com/Statistics-4th-Edition-David-Freedman/dp/0393929728) describes the problem and even [Khan Academy](https://www.khanacademy.org/math/probability/regression/regression-correlation/v/correlation-and-causality) has a class on it. As several of the commenters in the  NYT article point out, the authors fail to make this distinction.

To illustrate the problem, imagine you want to know how effective tutoring is for students in a math class you are teaching.  So you compare the test scores of students that received tutoring to those that don't. You find that receiving tutoring is correlated with lower test scores. So do you conclude that tutoring causes lower grades? Of course not!  In this particular case we are confusing cause and effect: students that have trouble with math are much more likely to seek out tutoring and this is what drives the observed correlation. With that example in mind,  consider this quote from the New York Times article:

> When we examined whether regular help with homework had a positive impact on children’s academic performance, we were quite startled by what we found. Regardless of a family’s social class, racial or ethnic background, or a child’s grade level, consistent homework help almost never improved test scores or grades.... Even more surprising to us was that when parents regularly helped with homework, kids usually performed worse.

A first question we would ask here is: how do we know that the children's performance would not have been even worse had they not received help? I imagine the authors made use of c_ontrols: _we compare the group that received the treatment (regular help with homework) to a control group that did not. But this brings up a more difficult question: how do we know that the treatment and control groups are comparable?

In a randomized controlled experiment, we would take a group of kids and randomly assign each one to the treatment group (will be helped with their homework) or control group (no help with homework). By doing this we can use probability calculations to determine the range of differences we expect to see by chance when the treatment has no effect.  Note that by chance one group may end up with a few more "better testers" than the other. However, if we see a big enough difference that can't be explained by chance, then the alternative that the treatment is responsible for the observed differences becomes more believable.

Given all the prior research (and common sense) suggesting that parent involvement, in its many manifestations, is in fact helpful to students, many would consider it unethical to run a randomized controlled trial on this issue (you would knowingly hurt the control group). Therefore, the authors are left with no choice than to use an _observational study _to reach their conclusions. In this case, we have no control over who receives help and who doesn't. Kids that require regular help with their homework are different in many ways to kids that don't, even after correcting for all the factors mentioned. For example, one can envision how kids that have a mediocre teacher or have trouble with tests are more likely to be in the treatment group, while kids who naturally test well or go to schools that offer in-school tutoring are more likely to be in the control group.

I am not an expert on education, but as a statistician I am skeptical of the conclusions of this data-driven article.  In fact, I would  recommend parents actually do get involved early on by, for example, teaching children that correlation does not imply causation.

Note that I am not saying that observational studies are uninformative. If properly analyzed, observational data can be very valuable. For example, the data supporting smoking as a cause of lung cancer is all observational. Furthermore, there is an entire subfield within statistics (referred to as causal inference) that develops methodologies to deal with observational data. But unfortunately, observational data are commonly misinterpreted.
