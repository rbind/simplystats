---
id: 3552
title: Data Science Students Predict the Midterm Election Results
date: 2014-11-12T13:37:36+00:00
author: Rafael Irizarry
pe_theme_meta:
  - 'O:8:"stdClass":2:{s:7:"gallery";O:8:"stdClass":3:{s:2:"id";s:2:"-1";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:5:"video";O:8:"stdClass":1:{s:2:"id";s:2:"-1";}}'
al2fb_facebook_link_id:
  - 136171103105421_724474887608370
al2fb_facebook_link_time:
  - 2014-11-12T18:37:44+00:00
al2fb_facebook_link_picture:
  - post=http://simplystatistics.org/wp-content/uploads/2014/11/Rplot.png
dsq_thread_id:
  - 3218197866
categories:
  - Uncategorized
slug: "data-science-students-predict-the-midterm-election-results"
---
As explained in an [earlier post](http://simplystatistics.org/2014/11/04/538-election-forecasts-made-simple/), one of the homework assignments of my [CS109](http://cs109.github.io/2014/) class was to predict the results of the midterm election. We created a competition in which 49 students entered. The most interesting challenge was to provide intervals for the republican - democrat difference in each of the 35 senate races. Anybody missing more than 2 was eliminated. The average size of the intervals was the tie breaker.

The main teaching objective here was to get students thinking about how to evaluate prediction strategies when chance is involved. To a naive observer, a biased strategy that favored democrats and correctly called, say, Virginia may look good in comparison to strategies that called it a toss-up.  However, a look at the other 34 states would reveal the weakness of this biased strategy. I wanted students to think of procedures that can help distinguish lucky guesses from strategies that universally perform well.

One of the concepts we discussed in class was the systematic bias of polls which we modeled as a random effect. One can't infer this bias from polls until after the election passes. By studying previous elections students were able to estimate the SE of this random effect and incorporate it into the calculation of intervals. The realization of this random effect was [very large](http://fivethirtyeight.com/features/the-polls-were-skewed-toward-democrats/) in these elections (about +4 for the democrats) which clearly showed the importance of modeling this source of variability. Strategies that restricted standard error measures to sample estimates from this year's polls did very poorly. The [90% credible intervals](http://fivethirtyeight.com/interactives/senate-forecast/) provided by 538, which I believe does incorporate this, missed 8 of the 35 races (23%). This suggests that they underestimated the variance.  Several of our students compared favorably to 538:

<div class="table-responsive">
  <table  style="width:100%; "  class="easy-table easy-table-default " border="0">
    <tr>
      <th >
        name
      </th>
      
      <th >
        avg bias
      </th>
      
      <th >
        MSE
      </th>
      
      <th >
        avg interval size
      </th>
      
      <th >
        # missed
      </th>
    </tr>
    
    <tr>
      <td >
        Manuel Andere
      </td>
      
      <td >
        -3.9
      </td>
      
      <td >
        6.9
      </td>
      
      <td >
        24.1
      </td>
      
      <td >
        3
      </td>
    </tr>
    
    <tr>
      <td >
        Richard Lopez
      </td>
      
      <td >
        -5.0
      </td>
      
      <td >
        7.4
      </td>
      
      <td >
        26.9
      </td>
      
      <td >
        3
      </td>
    </tr>
    
    <tr>
      <td >
        Daniel Sokol
      </td>
      
      <td >
        -4.5
      </td>
      
      <td >
        6.4
      </td>
      
      <td >
        24.1
      </td>
      
      <td >
        4
      </td>
    </tr>
    
    <tr>
      <td >
        Isabella Chiu
      </td>
      
      <td >
        -5.3
      </td>
      
      <td >
        9.6
      </td>
      
      <td >
        26.9
      </td>
      
      <td >
        6
      </td>
    </tr>
    
    <tr>
      <td >
        Denver Mosigisi Ogaro
      </td>
      
      <td >
        -3.2
      </td>
      
      <td >
        6.6
      </td>
      
      <td >
        18.9
      </td>
      
      <td >
        7
      </td>
    </tr>
    
    <tr>
      <td >
        Yu Jiang
      </td>
      
      <td >
        -5.6
      </td>
      
      <td >
        9.6
      </td>
      
      <td >
        22.6
      </td>
      
      <td >
        7
      </td>
    </tr>
    
    <tr>
      <td >
        David Dowey
      </td>
      
      <td >
        -3.5
      </td>
      
      <td >
        6.2
      </td>
      
      <td >
        16.3
      </td>
      
      <td >
        8
      </td>
    </tr>
    
    <tr>
      <td >
        Nate Silver
      </td>
      
      <td >
        -4.2
      </td>
      
      <td >
        6.6
      </td>
      
      <td >
        16.4
      </td>
      
      <td >
        8
      </td>
    </tr>
    
    <tr>
      <td >
        Filip Piasevoli
      </td>
      
      <td >
        -3.5
      </td>
      
      <td >
        7.4
      </td>
      
      <td >
        22.1
      </td>
      
      <td >
        8
      </td>
    </tr>
    
    <tr>
      <td >
        Yapeng Lu
      </td>
      
      <td >
        -6.5
      </td>
      
      <td >
        8.2
      </td>
      
      <td >
        16.5
      </td>
      
      <td >
        10
      </td>
    </tr>
    
    <tr>
      <td >
        David Jacob Lieb
      </td>
      
      <td >
        -3.7
      </td>
      
      <td >
        7.2
      </td>
      
      <td >
        17.1
      </td>
      
      <td >
        10
      </td>
    </tr>
    
    <tr>
      <td >
        Vincent Nguyen
      </td>
      
      <td >
        -3.8
      </td>
      
      <td >
        5.9
      </td>
      
      <td >
        11.1
      </td>
      
      <td >
        14
      </td>
    </tr>
  </table>
</div>

It is important to note that 538 would have probably increased their interval size had they actively participated in a competition requiring 95% of the intervals to cover. But all in all, students did very well. The majority correctly predicted the republican take over. The median mean square error across all 49 participantes was 8.2 which was not much worse that 538's 6.6. Other example of strategies that I think helped some of these students perform well was the use of creative weighting schemes (based on previous elections) to average poll and the use of splines to estimate trends, which in this particular election were going in the republican's favor.

Here are some plots showing results from two of our top performers:

[<img class="alignnone wp-image-3560" src="http://simplystatistics.org/wp-content/uploads/2014/11/Rplot.png" alt="Rplot" width="714" height="233" srcset="http://simplystatistics.org/wp-content/uploads/2014/11/Rplot-300x98.png 300w, http://simplystatistics.org/wp-content/uploads/2014/11/Rplot-1024x334.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/11/Rplot.png 1674w" sizes="(max-width: 714px) 100vw, 714px" />](http://simplystatistics.org/wp-content/uploads/2014/11/Rplot.png) [<img class="alignnone  wp-image-3561" src="http://simplystatistics.org/wp-content/uploads/2014/11/Rplot01.png" alt="Rplot01" width="714" height="233" srcset="http://simplystatistics.org/wp-content/uploads/2014/11/Rplot01-300x98.png 300w, http://simplystatistics.org/wp-content/uploads/2014/11/Rplot01-1024x334.png 1024w, http://simplystatistics.org/wp-content/uploads/2014/11/Rplot01.png 1674w" sizes="(max-width: 714px) 100vw, 714px" />](http://simplystatistics.org/wp-content/uploads/2014/11/Rplot01.png)

I hope this exercise helped students realize that data science can be both fun and useful. I can't wait to do this again in 2016.

&nbsp;

&nbsp;

&nbsp;
