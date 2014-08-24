# kirby

All you need to get started scraping and cleaning the Jack Kirby bibliography.

Kirby bibliographical data from http://www.marvelmasterworks.com/resources/kirby_chronology.html

# Loading in R

This assumes you've already installed the appropriate version of R for your operating system. If not: http://www.r-project.org/

Then at the console, enter:

    install.packages("devtools")
    library(devtools)
    devtools::install_github("patabongo/kirby")
    library(kirby)

# Procedure

    x <- kirby.scrape()
Scrapes the bibliography web pages and stores in x. You'll probably see a couple of error messages, but it's okay to ignore these.

    y <- kirby.breakdown(x)
Breaks down the data by time period.

    z <- kirby.delimit(y)
Converts the data to tab-delimited form.

At this point, you have the option to output a tab-delimited file to view in your preferred spreadsheet editor by exporting to your working directory using:

      write.table(z, file="kirbyraw.txt", quote=F, row.names=F, col.names=F)

Some amount of hand-cleaning was unavoidable because of the way the data were structured. For example, stories have a title listed whereas covers don't. In addition, while most assignments are given a date in month/year format some aren't -- e.g. the Silver Surfer graphic novel is just "1978 Special" and Fantastic Four Annual #1 is "Summer 1963". I had to assign those to months within the period given in order to make the dates computer-friendly.

If you're following along at home, you can either edit the tab-delimited kirbyraw.txt file yourself or you can skip ahead and use my edited version by loading it using:

      data(kirbywide)

Finally, the data can be converted from wide to long format using:

      kirbylong <- kirby.reshape(kirbywide)

Now you have your own version of the bibliography in long format to play around with as you see fit. To export in spreadsheet-friendly format (I use comma separated values this time):

      write.csv(kirbylong, "kirbylong.csv", row.names=F)

As ever, if you want to get a more in-depth idea of how all this was done, you can browse through the source files.
