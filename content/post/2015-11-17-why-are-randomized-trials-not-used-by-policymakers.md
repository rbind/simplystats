---
id: 4429
title: Given the history of medicine, why are randomized trials not used for social policy?
date: 2015-11-17T10:42:24+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
dsq_thread_id:
  - 4322497486
al2fb_facebook_link_id:
  - 136171103105421_884302531625604
al2fb_facebook_link_time:
  - 2015-11-17T15:42:35+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/?al2fb_image=1
categories:
  - Uncategorized
slug: "why-are-randomized-trials-not-used-by-policymakers"
---
Policy changes can have substantial societal effects. For example, clean water and  hygiene policies have saved millions, if not billions, of lives. But effects are not always positive. For example, [prohibition](https://en.wikipedia.org/wiki/Prohibition_in_the_United_States), or the "noble experiment", boosted organized crime, slowed economic growth and increased deaths caused by tainted liquor. Good intentions do not guarantee desirable outcomes.

The medical establishment is well aware of the danger of basing decisions on the good intentions of doctors or biomedical researchers. For this reason, randomized controlled trials (RCTs) are the standard approach to determining if a new treatment is safe and effective. In these trials an objective assessment is achieved by assigning patients at random to a treatment or control group, and then comparing the outcomes in these two groups. Probability calculations are used to summarize the evidence in favor or against the new treatment. Modern RCTs are considered [one of the greatest medical advances of the 20th century](http://abcnews.go.com/Health/TenWays/story?id=3605442&page=1).

Despite their unprecedented success in medicine, RCTs have not been fully adopted outside of scientific fields. In [this post](http://www.badscience.net/2011/05/we-should-so-blatantly-do-more-randomised-trials-on-policy/), Ben Goldcare advocates for politicians to learn from scientists and base policy decisions on RCTs. He provides several examples in which results contradicted conventional wisdom. In [this TED talk](https://www.ted.com/talks/esther_duflo_social_experiments_to_fight_poverty?language=en) Esther Duflo convincingly argues that RCTs should be used to determine what interventions are best at fighting poverty. Although some RCTs  are being conducted, they are still rare and oftentimes ignored by policymakers. For example, despite at least [two](http://peabody.vanderbilt.edu/research/pri/VPKthrough3rd_final_withcover.pdf) [RCT](http://www.acf.hhs.gov/sites/default/files/opre/executive_summary_final.pdf)s finding that universal pre-K programs are not effective, polymakers in New York [are implementing a $400 million a year program](http://www.npr.org/sections/ed/2015/09/08/438584249/new-york-city-mayor-goes-all-in-on-free-preschool). Supporters of this noble endeavor defend their decision by pointing to observational studies and "expert" opinion that support their preconceived views. Before the 1950s, indifference to RCTs was common among medical doctors as well, and the outcomes were at times devastating.

Today, when we [compare conclusions from non-RCT studies to RCTs](http://www.ncbi.nlm.nih.gov/pubmed/7058834), we note the unintended strong effects that preconceived notions can have. The first chapter in [this book](http://www.amazon.com/Statistics-4th-Edition-David-Freedman/dp/0393929728) provides a summary and some examples. One example comes from [a study](http://www.jameslindlibrary.org/grace-nd-muench-h-chalmers-tc-1966/) of 51 studies on the effectiveness of the portacaval shunt. Here is table summarizing the conclusions of the 51 studies:

<table>
  <tr>
    <td>
      Design
    </td>
    
    <td>
      Marked Improvement
    </td>
    
    <td>
      Moderate Improvement
    </td>
    
    <td>
      None
    </td>
  </tr>
  
  <tr>
    <td>
      No control
    </td>
    
    <td>
      24
    </td>
    
    <td>
      7
    </td>
    
    <td>
      1
    </td>
  </tr>
  
  <tr>
    <td>
      Controls; but no randomized
    </td>
    
    <td>
      10
    </td>
    
    <td>
      3
    </td>
    
    <td>
      2
    </td>
  </tr>
  
  <tr>
    <td>
      Randomized
    </td>
    
    <td>
    </td>
    
    <td>
      1
    </td>
    
    <td>
      3
    </td>
  </tr>
</table>

Compare the first and last column to appreciate the importance of the randomized trials.

A particularly troubling example relates to the studies on Diethylstilbestrol (DES). DES is a drug that was used to prevent spontaneous abortions. Five out of five studies using historical controls found the drug to be effective, yet all three randomized trials found the opposite. Before the randomized trials convinced doctors to stop using this drug , it was given to thousands of women. This turned out to be a tragedy as later studies showed DES has [terrible side effects](http://diethylstilbestrol.co.uk/des-side-effects/). Despite the doctors having the best intentions in mind, ignoring the randomized trials resulted in unintended consequences.

Well meaning experts are regularly implementing policies without really testing their effects. Although randomized trials are not always possible, it seems that they are rarely considered, in particular when the intentions are noble. <span style="line-height: 1.5;">Just like well-meaning turn-of-the-20th-century doctors, convinced that they were doing good, put their patients at risk by providing ineffective treatments, well intentioned policies may end up hurting society.</span>

**Update: **A reader pointed me to [these](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2534811) [preprints](http://eml.berkeley.edu//~crwalters/papers/kline_walters.pdf) which point out that the control group in [one of the cited](http://www.acf.hhs.gov/sites/default/files/opre/executive_summary_final.pdf) early education RCTs included children that receive care in a range of different settings, not just staying at home. This implies that the signal is attenuated if what we want to know is if the program is effective for children that would otherwise stay at home. In [this preprint](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2534811) they use statistical methodology (principal stratification framework) to obtain separate estimates: the effect for children that would otherwise go to other center-based care and the effect for children that would otherwise stay at home. They find no effect for the former group but a significant effect for the latter. Note that in this analysis the effect being estimated is no longer based on groups assigned at random. Instead, model assumptions are used to infer the two effects. To avoid dependence on these assumptions we will have to perform an RCT with better defined controls. Also note that the<span style="line-height: 1.5;"> RCT data facilitated the principal stratification framework analysis. I also want to restate what <a href="http://simplystatistics.org/2014/04/17/correlation-does-not-imply-causation-parental-involvement-edition/">I've posted before</a>, "I am not saying that observational studies are uninformative. If properly analyzed, observational data can be very valuable. For example, the data supporting smoking as a cause of lung cancer is all observational. Furthermore, there is an entire subfield within statistics (referred to as causal inference) that develops methodologies to deal with observational data. But unfortunately, observational data are commonly misinterpreted."</span>
