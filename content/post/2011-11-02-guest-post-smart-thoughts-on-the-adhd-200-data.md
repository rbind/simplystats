---
id: 391
title: 'Guest Post: SMART thoughts on the ADHD 200 Data Analysis Competition'
date: 2011-11-02T15:37:42+00:00
author: Admin
tumblr_simplystatistics_permalink:
  - http://simplystatistics.tumblr.com/post/12242790356/guest-post-smart-thoughts-on-the-adhd-200-data
tumblr_simplystatistics_id:
  - 12242790356
dsq_thread_id:
  - 934141091
categories:
  - Uncategorized
tags:
  - ADHD
  - adhd 200
  - caffo
  - competition
  - neuroimaging
  - SMART
slug: "guest-post-smart-thoughts-on-the-adhd-200-data"
---
**Note**: _This is a guest post by our colleagues <span id="internal-source-marker_0.8358260081149638">Brian Caffo, </span>Ani Eloyan, Fang Han, Han Liu,John Muschelli, Mary Beth Nebel, Tuo Zhao and Ciprian Crainiceanu. They <a href="http://fcon_1000.projects.nitrc.org/indi/adhd200/results.html" target="_blank">won</a> the <a href="http://fcon_1000.projects.nitrc.org/indi/adhd200/" target="_blank">ADHD 200</a> imaging data analysis competition. There has been <a href="http://www.reddit.com/r/cogsci/comments/lblqs/the_adhd200_competition_was_intended_to_exhibit/" target="_blank">some</a> <a href="http://www.talyarkoni.org/blog/2011/10/12/brain-based-prediction-of-adhd-now-with-100-fewer-brains/" target="_blank">controversy</a> around the results because one team obtained a higher score without using any of the imaging data. Our colleagues have put together a very clear discussion of the issues raised by the competition so we are publishing it here to contribute to the discussion. Questions about this post should be directed to the Hopkins team leader <a href="http://www.bcaffo.com/home/contacts" target="_blank">Brian Caffo</a> _  
<span> </span>

<span><strong>Background</strong></span>

<span id="internal-source-marker_0.8358260081149638">Below we share some thoughts about the ADHD 200 competition, a landmark competition using functional and structural brain imaging data to predict ADHD status. </span>

<span id="internal-source-marker_0.8358260081149638"> </span>

<!-- more -->

Note, we’re calling these “SMART thoughts” to draw attention to our working group, “Statistical Methods and Applications for Research in Technology” (<a href="http://www.smart-stats.org/" target="_blank"><a href="http://www.smart-stats.org" target="_blank">www.smart-stats.org</a></a>), though hopefully the acronym applies in the non-intended sense as well.

<span> </span>  
<span>Our team was declared the official winners of the competition. However, a team from the University of Alberta scored a higher number of competition points, but was disqualified for not having used imaging data. We have been in email contact with a representative of that team and have enjoyed the discussion. We found those team members to be gracious and to embody an energy and scientific spirit that are refreshing to encounter. </span>  
<span> </span>  
<span>We mentioned our sympathy to them, in that the process seemed unfair, especially given the vagueness of what qualifies as use of the imaging data. More on this thought below.  </span>  
<span> </span>  
<span>This brings us to the point of this note, concern over the narrative surrounding the competition based on our reading of web pages, social media and water cooler discussions.</span>  
<span> </span>  
<span>We are foremost concerned with the unwarranted conclusion that because the team with the highest competition point total did not use imaging data, the overall scientific validity of using (f)MRI imaging data to study ADHD is now in greater doubt. </span>  
<span> </span>  
<span>We stipulate that, like many others, we are skeptical of the utility of MRI data for tasks such as ADHD diagnoses. We are not arguing against such skepticism. </span>  
<span> </span>  
<span>Instead we are arguing against using the competition results as if they were strong evidence for such skepticism.</span>  
<span> </span>  
<span>We raise four points to argue against overreacting to the competition outcome with respect to the use of structural and functional MRI in the study of ADHD.</span>

### **Point 1. The competition points are not an accurate measure of performance and scientific value.**

<span>Because the majority of the training, and hence presumably the test, sets in the competition were typically developing, the competition points favored specificity. </span>  
<span> </span>  
<span>In addition, a correct label of TD yielded 1 point, while a correct ADHD diagnosis with incorrect subtype yielded .5 points. </span>  
<span></span>  
<span>These facts suggest a classifier that declares everyone as TD as a starting point. For example, if 60% of the 197 test subjects are controls, this algorithm would yield 118 competition points, better than all but a few entrants. In fact, if 64.5% or higher of the test set is TD, this algorithm wins over Alberta (and hence everyone else).</span>  
<span></span>  
<span>In addition, competition points are variables possessing randomness.  </span><span>It is human nature to interpret the anecdotal rankings of competitions as definitive evidence of superiority. This works fine as long as rankings are reasonably deterministic. But is riddled with logical flaws when rankings are stochastic. Variability in rankings has a huge effect on the result of competitions, especially when highly tuned prediction methods from expert teams are compared. Indeed, in such cases the confidence intervals of the AUCs (or other competition criteria) overlap. </span><span>The 5th or 10th place team may actually have had the most scientifically informative algorithm.</span>

### **Point 2. Biologically valueless predictors were important.**

<span>Most importantly, contributing location (aka site), was a key determinant of prediction performance. Site is a proxy for many things: the demographics of the ADHD population in the site’s PI’s studies, the policies by which a PI chose to include data, scanner type, IQ measure, missing data patterns, data quality and so on. </span>  
<span></span>  
<span>In addition to site, missing data existence and data quality also held potentially important information about prediction, despite being (biologically) unrelated to ADHD. The likely causality, if existent, would point in the reverse direction (i.e. that presence of ADHD would result in a greater propensity for missing data and lower data quality, perhaps due to movement in the scanner).</span>  
<span></span>  
<span>This is a general fact regarding prediction algorithms, which do not intrinsically account for causal directions or biological significance.</span>

### **Point 3. The majority of the imaging data is not prognostic.**

<span>Likely every entrant, and the competition organizers, were aware that the majority of the imaging data is not useful for predicting ADHD. (Here we use the term “imaging data” loosely, meaning raw and/or processed data.)   In addition, the imaging data are noisy. Therefore, use of these data introduced tens of billions of unnecessary numbers to predict 197 diagnoses. </span>  
<span></span>  
<span>As such, even if extremely important variables are embedded in the imaging data, (non-trivial) use of all of the imaging data could degrade performance, regardless of the ultimate value of the data. </span>  
<span></span>  
<span>To put this in other words, suppose all entrants were offered an additional 10 billion numbers, say genomic data, known to be noisy and, in aggregate, not predictive of disease. However, suppose that some unknown function of a small collection of variables was very meaningful for prediction, as is presumably the case with genomic data. If the competition did not require its use, a reasonable strategy would be to avoid using these data altogether. </span>  
<span></span>  
<span>Thus, in a scientific sense, we are sympathetic to the organizers’ choice to eliminate the Alberta team, since a primary motivation of the competition was to encourage a large set of eyes to sift through a large collection of very noisy imaging data. </span>  
<span></span>  
<span>Of course, as stated above, we believe that what constitutes a sufficient use of the imaging data is too vague to be an adequate rule to eliminate a team in a competition. </span>  
<span></span>  
<span>Thus our scientifically motivated support of the organizers conflicts with our procedural dispute of the decision made to eliminate the Alberta team.</span><span></span>

### **Point 4. Accurate prediction of a response is neither necessary nor sufficient for a covariate to be biologically meaningful.**

<span>Accurate prediction of a response is an extremely high bar for a variable of interest. Consider drug development for ADHD. A drug </span><span>does not</span> <span>have to demonstrate that its application to a collection of symptomatic individuals would predict </span><span>with high accuracy</span> <span>a later abatement of symptoms.  Instead, a successful drug would have to demonstrate a mild</span> <span>averaged</span> <span>improvement over a placebo or standard therapy when randomized. </span>  
<span></span>  
<span>As an example, consider randomly administering such a drug to 50 of 100 subjects who have ADHD at baseline.  Suppose data are collected at 6 and 12 months. Further suppose that 8 out of 50 of those receiving the drug had no ADHD symptoms at 12 months, while 1 out of 50 of those receiving placebo had no ADHD symptoms at 12 months. The Fisher’s exact test P-value is .03, by the way.  </span>  
<span></span>  
<span>The statistical evidence points to the drug being effective. Knowledge of drug status, however, would do little to improve prediction accuracy. That is, given a new data set of subjects with ADHD at baseline and knowledge of drug status, the most accurate classification for every subject would be to guess that they will continue to have ADHD symptoms at 12 months.  Of course, our confidence in that prediction would be slightly lower for those having received the drug.</span>  
<span></span>  
<span>However, consider using ADHD status at 6 months as a predictor. This would be enormously effective at locating those subjects who have an abatement of symptoms whether they received the drug or not. In this thought experiment, one predictor (symptoms at 6 months) is highly predictive, but not meaningful (it simply suggests that Y is a good predictor of Y), while the other (presence of drug at baseline) is only mildly predictive, but is statistically and biologically significant.</span>  
<span></span>  
<span>As another example, consider the ADHD200 data set. Suppose that a small structural region is highly impacted in an unknown subclass of ADHD. Some kind of investigation of morphometry or volumetrics might detect an association with disease status. The association would likely be weak, given absence of a-priori knowledge of this region or the subclass. This weak association would not be useful in a prediction algorithm. However, digging into this association could potentially inform the biological basis of the disease and further refine the ADHD phenotype.</span>  
<span></span>  
<span>Thus, we argue that it is important to differentiate the ultimate goals of obtaining high prediction accuracy with that of biological discovery of complex mechanisms in the presence of high dimensional data. </span>

### **Conclusions**

_We urge caution in over-interpretation of the scientific impact of the University of Alberta’s strongest performance in the competition.  _  
<span></span>  
<span>Ultimately, what Alberta’s having the highest point total established is that they are fantastic people to talk to if you want to achieve high prediction accuracy. (Looking over their work, this appears to have already been established prior to the competition :-).</span>  
<span></span>  
<span>It was not established that brain structure or resting state function, as measured by MRI, is a blind alley in the scientific exploration of ADHD.</span>

<span><strong>Related Posts: </strong>Roger on &#8220;<a href="http://simplystatistics.tumblr.com/post/11611102993/caffo-ninjas-awesome" target="_blank">Caffo + Ninjas = Awesome&#8221;</a>, Rafa on the &#8220;<a href="http://simplystatistics.tumblr.com/post/11732716036/the-self-assessment-trap" target="_blank">Self Assessment Trap</a>&#8221;, Roger on &#8220;<a href="http://simplystatistics.tumblr.com/post/10441403664/private-health-insurers-to-release-data" target="_blank">Private health insurers to release data</a>&#8221;</span>
