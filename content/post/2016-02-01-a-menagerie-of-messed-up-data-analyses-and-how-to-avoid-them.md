---
id: 4612
title: A menagerie of messed up data analyses and how to avoid them
date: 2016-02-01T13:39:57+00:00
author: Jeff Leek
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_917945058261351
al2fb_facebook_link_time:
  - 2016-02-01T18:40:06+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png
dsq_thread_id:
  - 4542608532
categories:
  - Uncategorized
slug: "a-menagerie-of-messed-up-data-analyses-and-how-to-avoid-them"
---
_Update: I realize this may seem like I'm picking on people. I really don't mean to, I have for sure made all of these mistakes and many more. I can give many examples, but the one I always remember is the time Rafa saved me from "I got a big one here" when I made a huge mistake as a first year assistant professor._

In any introductory statistics or data analysis class they might teach you the basics, how to load a data set, how to munge it, how to do t-tests, maybe how to write a report. But there are a whole bunch of ways that a data analysis can be screwed up that often get skipped over. Here is my first crack at creating a "menagerie" of messed up data analyses and how you can avoid them. Depending on interest I could probably list a ton more, but as always I'm doing the non-comprehensive list :).

&nbsp;

&nbsp;

<span style="text-decoration: underline;"><strong>Outco<img class="alignleft wp-image-4613" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png" alt="direction411" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction411-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png 256w" sizes="(max-width: 125px) 100vw, 125px" />me switching</strong></span>

_What it is: _Outcome switching is where you collect data looking at say, the relationship between exercise and blood pressure. Once you have the data, you realize that blood pressure isn't really related to exercise. So you change the outcome and ask if HDL levels are related to exercise and you find a relationship. It turns out that when you do this kind of switch you have now biased your analysis because you would have just stopped if you found the original relationship.

<p style="text-align: left;">
  <em>An example: </em><a href="http://www.vox.com/2015/12/29/10654056/ben-goldacre-compare-trials">In this article</a> they discuss how Paxil, an anti-depressant, was originally studied for several main outcomes, none of which showed an effect - but some of the secondary outcomes did. So they switched the outcome of the trial and used this result to market the drug.
</p>

<p style="text-align: left;">
  <em>What you can do: </em>Pre-specify your analysis plan, including which outcomes you want to look at. Then very clearly state when you are analyzing a primary outcome or a secondary analysis. That way people know to take the secondary analyses with a grain of salt. You can even get paid $$ to pre-specify with the OSF's <a href="https://cos.io/prereg/">pre-registration challenge</a>.
</p>

<img class="alignleft wp-image-4618" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png" alt="direction398" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398.png 512w" sizes="(max-width: 125px) 100vw, 125px" />

<span style="text-decoration: underline;"><strong>Garden of forking paths</strong></span>

_What it is: _In this case you may or may not have specified your outcome and stuck with it. Let's assume you have, so you are still looking at blood pressure and exercise. But it turns out a bunch of people had apparently erroneous measures of blood pressure. So you dropped those measurements and did the analysis with the remaining values. This is a totally sensible thing to do, but if you didn't specify in advance how you would handle bad measurements, you can make a bunch of different choices here (the forking paths). You could drop them, impute them, multiply impute them, weight them, etc. Each of these gives a different result and you can accidentally pick the one that works best even if you are being "sensible"

_An example_: [This article](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) gives several examples of the forking paths. One is where authors report that at peak fertility women are more likely to wear red or pink shirts. They made several inclusion/exclusion choices (which women to include in which comparison group) for who to include that could easily have gone a different direction or were against stated rules.

_What you can do: _Pre-specify every part of your analysis plan, down to which observations you are going to drop, transform, etc. To be honest this is super hard to do because almost every data set is messy in a unique way. So the best thing here is to point out steps in your analysis where you made a choice that wasn't pre-specified and you could have made differently. Or, even better, try some of the different choices and make sure your results aren't dramatically different.

&nbsp;

**<img class="alignleft wp-image-4621" src="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png" alt="emoticon149" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">P-hacking</span>**

_What it is: _The nefarious cousin of the garden of forking paths. Basically here the person outcome switches, uses the garden of forking paths, intentionally doesn't correct for multiple testing, or uses any of these other means to cheat and get a result that they like.

_An example:_ This one gets talked about a lot and there is [some evidence that it happens](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002106). But it is usually pretty hard to ascribe purely evil intentions to people and I'd rather not point the finger here. I think that often the garden of forking paths results in just as bad an outcome without people having to try.

_What to do:_ Know how to do an analysis well and don't cheat.

_Update: _ Some [_Update: I realize this may seem like I'm picking on people. I really don't mean to, I have for sure made all of these mistakes and many more. I can give many examples, but the one I always remember is the time Rafa saved me from "I got a big one here" when I made a huge mistake as a first year assistant professor._

In any introductory statistics or data analysis class they might teach you the basics, how to load a data set, how to munge it, how to do t-tests, maybe how to write a report. But there are a whole bunch of ways that a data analysis can be screwed up that often get skipped over. Here is my first crack at creating a "menagerie" of messed up data analyses and how you can avoid them. Depending on interest I could probably list a ton more, but as always I'm doing the non-comprehensive list :).

&nbsp;

&nbsp;

<span style="text-decoration: underline;"><strong>Outco<img class="alignleft wp-image-4613" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png" alt="direction411" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction411-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png 256w" sizes="(max-width: 125px) 100vw, 125px" />me switching</strong></span>

_What it is: _Outcome switching is where you collect data looking at say, the relationship between exercise and blood pressure. Once you have the data, you realize that blood pressure isn't really related to exercise. So you change the outcome and ask if HDL levels are related to exercise and you find a relationship. It turns out that when you do this kind of switch you have now biased your analysis because you would have just stopped if you found the original relationship.

<p style="text-align: left;">
  <em>An example: </em><a href="http://www.vox.com/2015/12/29/10654056/ben-goldacre-compare-trials">In this article</a> they discuss how Paxil, an anti-depressant, was originally studied for several main outcomes, none of which showed an effect - but some of the secondary outcomes did. So they switched the outcome of the trial and used this result to market the drug.
</p>

<p style="text-align: left;">
  <em>What you can do: </em>Pre-specify your analysis plan, including which outcomes you want to look at. Then very clearly state when you are analyzing a primary outcome or a secondary analysis. That way people know to take the secondary analyses with a grain of salt. You can even get paid $$ to pre-specify with the OSF's <a href="https://cos.io/prereg/">pre-registration challenge</a>.
</p>

<img class="alignleft wp-image-4618" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png" alt="direction398" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398.png 512w" sizes="(max-width: 125px) 100vw, 125px" />

<span style="text-decoration: underline;"><strong>Garden of forking paths</strong></span>

_What it is: _In this case you may or may not have specified your outcome and stuck with it. Let's assume you have, so you are still looking at blood pressure and exercise. But it turns out a bunch of people had apparently erroneous measures of blood pressure. So you dropped those measurements and did the analysis with the remaining values. This is a totally sensible thing to do, but if you didn't specify in advance how you would handle bad measurements, you can make a bunch of different choices here (the forking paths). You could drop them, impute them, multiply impute them, weight them, etc. Each of these gives a different result and you can accidentally pick the one that works best even if you are being "sensible"

_An example_: [This article](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) gives several examples of the forking paths. One is where authors report that at peak fertility women are more likely to wear red or pink shirts. They made several inclusion/exclusion choices (which women to include in which comparison group) for who to include that could easily have gone a different direction or were against stated rules.

_What you can do: _Pre-specify every part of your analysis plan, down to which observations you are going to drop, transform, etc. To be honest this is super hard to do because almost every data set is messy in a unique way. So the best thing here is to point out steps in your analysis where you made a choice that wasn't pre-specified and you could have made differently. Or, even better, try some of the different choices and make sure your results aren't dramatically different.

&nbsp;

**<img class="alignleft wp-image-4621" src="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png" alt="emoticon149" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">P-hacking</span>**

_What it is: _The nefarious cousin of the garden of forking paths. Basically here the person outcome switches, uses the garden of forking paths, intentionally doesn't correct for multiple testing, or uses any of these other means to cheat and get a result that they like.

_An example:_ This one gets talked about a lot and there is [some evidence that it happens](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002106). But it is usually pretty hard to ascribe purely evil intentions to people and I'd rather not point the finger here. I think that often the garden of forking paths results in just as bad an outcome without people having to try.

_What to do:_ Know how to do an analysis well and don't cheat.

_Update: _ Some](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2649230) "when honest researchers face ambiguity about what analyses to run, and convince themselves those leading to better results are the correct ones (see e.g., Gelman & Loken, 2014; John, Loewenstein, & Prelec, 2012; Simmons, Nelson, & Simonsohn, 2011; Vazire, 2015)." This coincides with the definition of "garden of forking paths". I have been asked to point this out [on Twitter.](https://twitter.com/talyarkoni/status/694576205089996800) It was never my intention to accuse anyone of accusing people of fraud. That being said, I still think that the connotation that many people think of when they think "p-hacking" corresponds to my definition above, although I agree with folks that isn't helpful - which is why I prefer we call the non-nefarious version the garden of forking paths.

&nbsp;

**<img class="alignleft wp-image-4623" src="http://simplystatistics.org/wp-content/uploads/2016/02/paypal15.png" alt="paypal15" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/paypal15-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/paypal15.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">Uncorrected multiple testing </span>**

_What it is: _This one is related to the garden of forking paths and outcome switching. Most statistical methods for measuring the potential for error assume you are only evaluating one hypothesis at a time. But in reality you might be measuring a ton either on purpose (in a big genomics or neuroimaging study) or accidentally (because you consider a bunch of outcomes). In either case, the expected error rate changes a lot if you consider many hypotheses.

_An example: _ The [most famous example](http://users.stat.umn.edu/~corbett/classes/5303/Bennett-Salmon-2009.pdf) is when someone did an fMRI on a dead fish and showed that there were a bunch of significant regions at the P < 0.05 level. The reason is that there is natural variation in the background of these measurements and if you consider each pixel independently ignoring that you are looking at a bunch of them, a few will have P < 0.05 just by chance.

_What you can do_: Correct for multiple testing. When you calculate a large number of p-values make sure you [know what their distribution](http://varianceexplained.org/statistics/interpreting-pvalue-histogram/) is expected to be and you use a method like Bonferroni, Benjamini-Hochberg, or q-value to correct for multiple testing.

&nbsp;

**<img class="alignleft wp-image-4625" src="http://simplystatistics.org/wp-content/uploads/2016/02/animal162.png" alt="animal162" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/animal162-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/animal162.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">I got a big one here</span>**

_What it is:_ One of the most painful experiences for all new data analysts. You collect data and discover a huge effect. You are super excited so you write it up and submit it to one of the best journals or convince your boss to be the farm. The problem is that huge effects are incredibly rare and are usually due to some combination of experimental artifacts and biases or mistakes in the analysis. Almost no effects you detect with statistics are huge. Even the relationship between smoking and cancer is relatively weak in observational studies and requires very careful calibration and analysis.

_An example:_ [In a paper](http://www.ncbi.nlm.nih.gov/pubmed/17206142) authors claimed that 78% of genes were differentially expressed between Asians and Europeans. But it turns out that most of the Asian samples were measured in one sample and the Europeans in another. [_Update: I realize this may seem like I'm picking on people. I really don't mean to, I have for sure made all of these mistakes and many more. I can give many examples, but the one I always remember is the time Rafa saved me from "I got a big one here" when I made a huge mistake as a first year assistant professor._

In any introductory statistics or data analysis class they might teach you the basics, how to load a data set, how to munge it, how to do t-tests, maybe how to write a report. But there are a whole bunch of ways that a data analysis can be screwed up that often get skipped over. Here is my first crack at creating a "menagerie" of messed up data analyses and how you can avoid them. Depending on interest I could probably list a ton more, but as always I'm doing the non-comprehensive list :).

&nbsp;

&nbsp;

<span style="text-decoration: underline;"><strong>Outco<img class="alignleft wp-image-4613" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png" alt="direction411" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction411-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png 256w" sizes="(max-width: 125px) 100vw, 125px" />me switching</strong></span>

_What it is: _Outcome switching is where you collect data looking at say, the relationship between exercise and blood pressure. Once you have the data, you realize that blood pressure isn't really related to exercise. So you change the outcome and ask if HDL levels are related to exercise and you find a relationship. It turns out that when you do this kind of switch you have now biased your analysis because you would have just stopped if you found the original relationship.

<p style="text-align: left;">
  <em>An example: </em><a href="http://www.vox.com/2015/12/29/10654056/ben-goldacre-compare-trials">In this article</a> they discuss how Paxil, an anti-depressant, was originally studied for several main outcomes, none of which showed an effect - but some of the secondary outcomes did. So they switched the outcome of the trial and used this result to market the drug.
</p>

<p style="text-align: left;">
  <em>What you can do: </em>Pre-specify your analysis plan, including which outcomes you want to look at. Then very clearly state when you are analyzing a primary outcome or a secondary analysis. That way people know to take the secondary analyses with a grain of salt. You can even get paid $$ to pre-specify with the OSF's <a href="https://cos.io/prereg/">pre-registration challenge</a>.
</p>

<img class="alignleft wp-image-4618" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png" alt="direction398" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398.png 512w" sizes="(max-width: 125px) 100vw, 125px" />

<span style="text-decoration: underline;"><strong>Garden of forking paths</strong></span>

_What it is: _In this case you may or may not have specified your outcome and stuck with it. Let's assume you have, so you are still looking at blood pressure and exercise. But it turns out a bunch of people had apparently erroneous measures of blood pressure. So you dropped those measurements and did the analysis with the remaining values. This is a totally sensible thing to do, but if you didn't specify in advance how you would handle bad measurements, you can make a bunch of different choices here (the forking paths). You could drop them, impute them, multiply impute them, weight them, etc. Each of these gives a different result and you can accidentally pick the one that works best even if you are being "sensible"

_An example_: [This article](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) gives several examples of the forking paths. One is where authors report that at peak fertility women are more likely to wear red or pink shirts. They made several inclusion/exclusion choices (which women to include in which comparison group) for who to include that could easily have gone a different direction or were against stated rules.

_What you can do: _Pre-specify every part of your analysis plan, down to which observations you are going to drop, transform, etc. To be honest this is super hard to do because almost every data set is messy in a unique way. So the best thing here is to point out steps in your analysis where you made a choice that wasn't pre-specified and you could have made differently. Or, even better, try some of the different choices and make sure your results aren't dramatically different.

&nbsp;

**<img class="alignleft wp-image-4621" src="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png" alt="emoticon149" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">P-hacking</span>**

_What it is: _The nefarious cousin of the garden of forking paths. Basically here the person outcome switches, uses the garden of forking paths, intentionally doesn't correct for multiple testing, or uses any of these other means to cheat and get a result that they like.

_An example:_ This one gets talked about a lot and there is [some evidence that it happens](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002106). But it is usually pretty hard to ascribe purely evil intentions to people and I'd rather not point the finger here. I think that often the garden of forking paths results in just as bad an outcome without people having to try.

_What to do:_ Know how to do an analysis well and don't cheat.

_Update: _ Some [_Update: I realize this may seem like I'm picking on people. I really don't mean to, I have for sure made all of these mistakes and many more. I can give many examples, but the one I always remember is the time Rafa saved me from "I got a big one here" when I made a huge mistake as a first year assistant professor._

In any introductory statistics or data analysis class they might teach you the basics, how to load a data set, how to munge it, how to do t-tests, maybe how to write a report. But there are a whole bunch of ways that a data analysis can be screwed up that often get skipped over. Here is my first crack at creating a "menagerie" of messed up data analyses and how you can avoid them. Depending on interest I could probably list a ton more, but as always I'm doing the non-comprehensive list :).

&nbsp;

&nbsp;

<span style="text-decoration: underline;"><strong>Outco<img class="alignleft wp-image-4613" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png" alt="direction411" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction411-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction411.png 256w" sizes="(max-width: 125px) 100vw, 125px" />me switching</strong></span>

_What it is: _Outcome switching is where you collect data looking at say, the relationship between exercise and blood pressure. Once you have the data, you realize that blood pressure isn't really related to exercise. So you change the outcome and ask if HDL levels are related to exercise and you find a relationship. It turns out that when you do this kind of switch you have now biased your analysis because you would have just stopped if you found the original relationship.

<p style="text-align: left;">
  <em>An example: </em><a href="http://www.vox.com/2015/12/29/10654056/ben-goldacre-compare-trials">In this article</a> they discuss how Paxil, an anti-depressant, was originally studied for several main outcomes, none of which showed an effect - but some of the secondary outcomes did. So they switched the outcome of the trial and used this result to market the drug.
</p>

<p style="text-align: left;">
  <em>What you can do: </em>Pre-specify your analysis plan, including which outcomes you want to look at. Then very clearly state when you are analyzing a primary outcome or a secondary analysis. That way people know to take the secondary analyses with a grain of salt. You can even get paid $$ to pre-specify with the OSF's <a href="https://cos.io/prereg/">pre-registration challenge</a>.
</p>

<img class="alignleft wp-image-4618" src="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png" alt="direction398" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/direction398-300x300.png 300w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/direction398.png 512w" sizes="(max-width: 125px) 100vw, 125px" />

<span style="text-decoration: underline;"><strong>Garden of forking paths</strong></span>

_What it is: _In this case you may or may not have specified your outcome and stuck with it. Let's assume you have, so you are still looking at blood pressure and exercise. But it turns out a bunch of people had apparently erroneous measures of blood pressure. So you dropped those measurements and did the analysis with the remaining values. This is a totally sensible thing to do, but if you didn't specify in advance how you would handle bad measurements, you can make a bunch of different choices here (the forking paths). You could drop them, impute them, multiply impute them, weight them, etc. Each of these gives a different result and you can accidentally pick the one that works best even if you are being "sensible"

_An example_: [This article](http://www.stat.columbia.edu/~gelman/research/unpublished/p_hacking.pdf) gives several examples of the forking paths. One is where authors report that at peak fertility women are more likely to wear red or pink shirts. They made several inclusion/exclusion choices (which women to include in which comparison group) for who to include that could easily have gone a different direction or were against stated rules.

_What you can do: _Pre-specify every part of your analysis plan, down to which observations you are going to drop, transform, etc. To be honest this is super hard to do because almost every data set is messy in a unique way. So the best thing here is to point out steps in your analysis where you made a choice that wasn't pre-specified and you could have made differently. Or, even better, try some of the different choices and make sure your results aren't dramatically different.

&nbsp;

**<img class="alignleft wp-image-4621" src="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png" alt="emoticon149" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/emoticon149.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">P-hacking</span>**

_What it is: _The nefarious cousin of the garden of forking paths. Basically here the person outcome switches, uses the garden of forking paths, intentionally doesn't correct for multiple testing, or uses any of these other means to cheat and get a result that they like.

_An example:_ This one gets talked about a lot and there is [some evidence that it happens](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002106). But it is usually pretty hard to ascribe purely evil intentions to people and I'd rather not point the finger here. I think that often the garden of forking paths results in just as bad an outcome without people having to try.

_What to do:_ Know how to do an analysis well and don't cheat.

_Update: _ Some](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2649230) "when honest researchers face ambiguity about what analyses to run, and convince themselves those leading to better results are the correct ones (see e.g., Gelman & Loken, 2014; John, Loewenstein, & Prelec, 2012; Simmons, Nelson, & Simonsohn, 2011; Vazire, 2015)." This coincides with the definition of "garden of forking paths". I have been asked to point this out [on Twitter.](https://twitter.com/talyarkoni/status/694576205089996800) It was never my intention to accuse anyone of accusing people of fraud. That being said, I still think that the connotation that many people think of when they think "p-hacking" corresponds to my definition above, although I agree with folks that isn't helpful - which is why I prefer we call the non-nefarious version the garden of forking paths.

&nbsp;

**<img class="alignleft wp-image-4623" src="http://simplystatistics.org/wp-content/uploads/2016/02/paypal15.png" alt="paypal15" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/paypal15-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/paypal15.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">Uncorrected multiple testing </span>**

_What it is: _This one is related to the garden of forking paths and outcome switching. Most statistical methods for measuring the potential for error assume you are only evaluating one hypothesis at a time. But in reality you might be measuring a ton either on purpose (in a big genomics or neuroimaging study) or accidentally (because you consider a bunch of outcomes). In either case, the expected error rate changes a lot if you consider many hypotheses.

_An example: _ The [most famous example](http://users.stat.umn.edu/~corbett/classes/5303/Bennett-Salmon-2009.pdf) is when someone did an fMRI on a dead fish and showed that there were a bunch of significant regions at the P < 0.05 level. The reason is that there is natural variation in the background of these measurements and if you consider each pixel independently ignoring that you are looking at a bunch of them, a few will have P < 0.05 just by chance.

_What you can do_: Correct for multiple testing. When you calculate a large number of p-values make sure you [know what their distribution](http://varianceexplained.org/statistics/interpreting-pvalue-histogram/) is expected to be and you use a method like Bonferroni, Benjamini-Hochberg, or q-value to correct for multiple testing.

&nbsp;

**<img class="alignleft wp-image-4625" src="http://simplystatistics.org/wp-content/uploads/2016/02/animal162.png" alt="animal162" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/animal162-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/animal162.png 256w" sizes="(max-width: 125px) 100vw, 125px" /><span style="text-decoration: underline;">I got a big one here</span>**

_What it is:_ One of the most painful experiences for all new data analysts. You collect data and discover a huge effect. You are super excited so you write it up and submit it to one of the best journals or convince your boss to be the farm. The problem is that huge effects are incredibly rare and are usually due to some combination of experimental artifacts and biases or mistakes in the analysis. Almost no effects you detect with statistics are huge. Even the relationship between smoking and cancer is relatively weak in observational studies and requires very careful calibration and analysis.

_An example:_ [In a paper](http://www.ncbi.nlm.nih.gov/pubmed/17206142) authors claimed that 78% of genes were differentially expressed between Asians and Europeans. But it turns out that most of the Asian samples were measured in one sample and the Europeans in another.](http://www.ncbi.nlm.nih.gov/pubmed/17597765) a large fraction of these differences.

_What you can do_: Be deeply suspicious of big effects in data analysis. If you find something huge and counterintuitive, especially in a well established research area, spend _a lot_ of time trying to figure out why it could be a mistake. If you don't, others definitely will, and you might be embarrassed.

<span style="text-decoration: underline;"><strong><img class="alignleft wp-image-4632" src="http://simplystatistics.org/wp-content/uploads/2016/02/man298.png" alt="man298" width="125" height="125" srcset="http://simplystatistics.org/wp-content/uploads/2016/02/man298-200x200.png 200w, http://simplystatistics.org/wp-content/uploads/2016/02/man298.png 256w" sizes="(max-width: 125px) 100vw, 125px" />Double complication</strong></span>

_What it is_: When faced with a large and complicated data set, beginning analysts often feel compelled to use a big complicated method. Imagine you have collected data on thousands of genes or hundreds of thousands of voxels and you want to use this data to predict some health outcome. There is a severe temptation to use deep learning or blend random forests, boosting, and five other methods to perform the prediction. The problem is that complicated methods fail for complicated reasons, which will be extra hard to diagnose if you have a really big, complicated data set.

_An example:_ There are a large number of examples where people use very small training sets and complicated methods. One example (there were many other problems with this analysis, too) is when people [tried to use complicated prediction algorithms](http://www.nature.com/nm/journal/v12/n11/full/nm1491.html) to predict which chemotherapy would work best using genomics. Ultimately this paper was retracted for may problems, but the complication of the methods plus the complication of the data made it hard to detect.

_What you can do:_ When faced with a big, messy data set, try simple things first. Use linear regression, make simple scatterplots, check to see if there are obvious flaws with the data. If you must use a really complicated method, ask yourself if there is a reason it is outperforming the simple methods because often with large data sets [even simple things work](http://arxiv.org/pdf/math/0606441.pdf).

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

<span style="text-decoration: underline;"><strong>Image credits:</strong></span>

  * Outcome switching. Icon made by [Hanan](http://hananonblog.wordpress.com "Hanan") from [www.flaticon.com](http://www.flaticon.com "Flaticon") is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/ "Creative Commons BY 3.0")
  * Forking paths. Icon made by [Popcic](http://iconalone.com "Popcic") from [www.flaticon.com](http://www.flaticon.com "Flaticon") is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/ "Creative Commons BY 3.0")
  * P-hacking.Icon made by [Icomoon](http://www.icomoon.io "Icomoon") from [www.flaticon.com](http://www.flaticon.com "Flaticon") is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/ "Creative Commons BY 3.0")
  * Uncorrected multiple testing.Icon made by [Freepik](http://www.freepik.com "Freepik") from [www.flaticon.com](http://www.flaticon.com "Flaticon") is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/ "Creative Commons BY 3.0")
  * Big one here. Icon made by [Freepik](http://www.freepik.com "Freepik") from [www.flaticon.com](http://www.flaticon.com "Flaticon") is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/ "Creative Commons BY 3.0")
  * Double complication. Icon made by [Freepik](http://www.freepik.com "Freepik") from [www.flaticon.com](http://www.flaticon.com "Flaticon") is licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/ "Creative Commons BY 3.0")
