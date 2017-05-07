---
author: jeff
comments: true
title: How to create a free distributed data collection "app" with R and Google Sheets
slug: "googlesheets"
date: 2016-08-26
---

[Jenny Bryan](http://www.stat.ubc.ca/~jenny/), developer of the [google sheets R package](https://github.com/jennybc/googlesheets),  [gave a talk](https://speakerdeck.com/jennybc/googlesheets-talk-at-user2015) at Use2015 about the package. 

One of the things that got me most excited about the package was an example she gave in her talk of using the Google Sheets package for data collection at ultimate frisbee tournaments. One reason is that I used to play a little ultimate [back in the day](http://www.pbase.com/jmlane/image/76852417). 

Another is that her idea is an amazing one for producing cool public health applications. One of the major issues with public health is being able to do distributed data collection cheaply, easily, and reproducibly. So I decided to write a little tutorial on how one could use [Google Sheets](https://www.google.com/sheets/about/) and R to create a free distributed data collecton "app" for public health (or anything else really). 

### What you will need

* A Google account and access to [Google Sheets](https://www.google.com/sheets/about/)
* [R](https://www.r-project.org/) and the [googlesheets](https://github.com/jennybc/googlesheets) package. 


### The "app"

What we are going to do is collect data in a Google Sheet or sheets. This sheet can be edited by anyone with the link using their computer or a mobile phone. Then we will use the `googlesheets` package to pull the data into R and analyze it. 


### Making the Google Sheet work with googlesheets

After you have a first thing to do is to go to the Google Sheets I suggest bookmarking this page: https://docs.google.com/spreadsheets/u/0/ which skips the annoying splash screen. 

Create a blank sheet and give it an appropriate title for whatever data you will be collecting. 

Next, we need to make the sheet _public on the web_ so that the _googlesheets_ package can read it. This is different from the sharing settings you set with the big button on the right. To make the sheet public on the web, go to the "File" menu and select "Publish to the web...". Like this: 


![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/gs_publishweb.png)

then it will ask you if you want to publish the sheet, just hit publish

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/gs_publish.png)

Copy the link it gives you and you can use it to read in the Google Sheet. If you want to see all the Google Sheets you can read in, you can load the package and use the `gs_ls` function. 


```r
library(googlesheets)
sheets = gs_ls()
sheets[1,]
```

```
## # A tibble: 1 x 10
##   sheet_title author  perm version             updated
##         <chr>  <chr> <chr>   <chr>              <time>
## 1 app_example jtleek    rw     new 2016-08-26 17:48:21
## # ... with 5 more variables: sheet_key <chr>, ws_feed <chr>,
## #   alternate <chr>, self <chr>, alt_key <chr>
```

It will pop up a dialog asking for you to authorize the `googlesheets` package to read from your Google Sheets account. Then you should see a list of spreadsheets you have created. 

In my example I created a sheet called "app_example" so I can load the Google Sheet like this: 


```r
## Identifies the Google Sheet
example_sheet = gs_title("app_example")
```

```
## Sheet successfully identified: "app_example"
```

```r
## Reads the data
dat = gs_read(example_sheet)
```

```
## Accessing worksheet titled 'Sheet1'.
```

```
## No encoding supplied: defaulting to UTF-8.
```

```r
head(dat)
```

```
## # A tibble: 3 x 5
##   who_collected at_work person  time       date
##           <chr>   <chr>  <chr> <chr>      <chr>
## 1          jeff      no   ingo 13:47 08/26/2016
## 2          jeff     yes  roger 13:47 08/26/2016
## 3          jeff     yes  brian 13:47 08/26/2016
```

In this case the data I'm collecting is about who is at work right now as I'm writing this post :). But you could collect whatever you want. 

### Distributing the data collection

Now that you have the data published to the web, you can read it into Google Sheets. Also, anyone with the link will be able to view the Google Sheet. But if you don't change the sharing settings, you are the only one who can edit the sheet. 

This is where you can make your data collection distributed if you want. If you go to the "Share" button, then click on advanced you will get a screen like this and have some options.

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/gs_share_advanced.png)

_Private data collection_

In the example I'm using I haven't changed the sharing settings, so while you can _see_ the sheet, you can't edit it. This is nice if you want to collect some data and allow other people to read it, but you don't want them to edit it. 

_Controlled distributed data collection_ 

If you just enter people's emails then you can open the data collection to just those individuals you have shared the sheet with. Be careful though, if they don't have Google email addresses, then they get a link which they could share with other people and this could lead to open data collection. 

_Uncontrolled distributed data collection_

Another option is to click on "Change" next to "Private - Only you can access". If you click on "On - Anyone with the link" and click on "Can View".

![](https://raw.githubusercontent.com/simplystats/simplystats.github.io/master/_images/gs_can_view.png)

Then you can modify it to say "Can Edit" and hit "Save". Now anyone who has the link can edit the Google Sheet. This means that you can't control who will be editing it (careful!) but you can really widely distribute the data collection. 

### Collecting data

Once you have distributed the link either to your collaborators or more widely it is time to collect data. This is where I think that the "app" part of this is so cool. You can edit the Google Sheet from a Desktop computer, but if you have the (free!) Google Sheets app for your phone then you can also edit the data on the go. There is even an offline mode if the internet connection isn't available where you are working (more on this below).


### Quality control

One of the major issues with distributed data collection is quality control. If possible you want people to input data using (a) a controlled vocubulary/system and (b) the same controlled vocabulary/system. My suggestion here depends on whether you are using a controlled distributed system or an uncontrolled distributed system. 

For the controlled distributed system you are specifically giving access to individual people - you can provide some training or a walk through before giving them access. 

For the uncontrolled distributed system you should create a _very_ detailed set of instructions. For example, for my sheet I would create a set of instructions like: 

1. Every data point must have a label of who collected in in the `who_collected` column. You should pick a username that does not currently appear in the sheet and stick with it. Use all lower case for your username. 
2. You should either report "yes" or "no" in lowercase in the `at_work` column. 
3. You should report the name of the person in all lower case in the `person` column. You should search and make sure that the person you are reporting on doesn't appear before introducing a new name. If the name already exists, use the name spelled exactly as it is in the sheet already. 
4. You should report the `time` in the format hh:mm on a 24 hour clock in the eastern time zone of the United States. 
5. You should report the `date` in the mm/dd/yyyy format. 

You could be much more detailed depending on the case. 

### Offline editing and conflicts

One of the cool things about Google Sheets is that they can even be edited without an internet connection. This is particularly useful if you are collecting data in places where internet connections may be spotty. But that may generate conflicts if you use only one sheet. 

There may be different ways to handle this, but one I thought of is to just create one sheet for each person collecting data (if you are using controlled distributed data collection). Then each person only edits the data in their sheet, avoiding potential conflicts if multiple people are editing offline and non-synchronously. 

### Reading the data

Anyone with the link can now read the most up-to-date data with the following simple code. 


```r
## Identifies the Google Sheet
example_sheet = gs_url("https://docs.google.com/spreadsheets/d/177WyyzWOHGIQ9O5iUY9P9IVwGi7jL3f4XBY4d98CY_o/pubhtml")
```

```
## Sheet-identifying info appears to be a browser URL.
## googlesheets will attempt to extract sheet key from the URL.
```

```
## Putative key: 177WyyzWOHGIQ9O5iUY9P9IVwGi7jL3f4XBY4d98CY_o
```

```
## Sheet successfully identified: "app_example"
```

```r
## Reads the data
dat = gs_read(example_sheet, ws="Sheet1")
```

```
## Accessing worksheet titled 'Sheet1'.
```

```
## No encoding supplied: defaulting to UTF-8.
```

```r
dat
```

```
## # A tibble: 3 x 5
##   who_collected at_work person  time       date
##           <chr>   <chr>  <chr> <chr>      <chr>
## 1          jeff      no   ingo 13:47 08/26/2016
## 2          jeff     yes  roger 13:47 08/26/2016
## 3          jeff     yes  brian 13:47 08/26/2016
```

Here the url is the one I got when I went to the "File" menu and clicked on "Publish to the web...". The argument `ws` in the `gs_read` command is the name of the worksheet. If you have multiple sheets assigned to different people, you can read them in one at a time and then merge them together. 


### Conclusion 

So that's it, its pretty simple. But as I gear up to teach advanced data science here at Hopkins I'm thinking a lot about Sean Taylor's awesome post [Real scientists make their own data](http://seanjtaylor.com/post/41463778912/real-scientists-make-their-own-data)

I think this approach is a super cool/super lightweight system for collecting data either on your own or as a team. As I said I think it could be really useful in public health, but it could also be used for any data collection you want. 
