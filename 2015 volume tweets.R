library(plyr)
library(ggplot2)

hashtags <- read.csv("C:/Users/Courtney/Desktop/data/hash.csv")
hashtags$Date <- paste(hashtags$theMonth, hashtags$theDay, sep = "-" )
hashtags_2015 <- subset(hashtags, theYear == 2015)
hashtags_post <- subset(hashtags_2015, (theMonth == 10 & theDay >= 27) | (theMonth == 11 & theDay <= 1))


df <- data.frame(hashtags_post$Date,hashtags_post$RoyalsCount, hashtags_post$TakeTheCrownCount)
df <- rename(df, c("hashtags_post.Date"="Date", "hashtags_post.WorldSeriesCount"="#WorldSeries", "hashtags_post.RoyalsCount"="#Royals", "hashtags_post.TakeTheCrownCount"="#TakeTheCrown"))
df <- rename(df, c("hashtags_post.Date"="Date", "hashtags_post.RoyalsCount"="#Royals", "hashtags_post.TakeTheCrownCount"="#TakeTheCrown"))
df_long <- melt(df, id="Date") 

ggplot(df_long, aes(x=Date, y=value, colour=variable, group = 1)) + 
  geom_point() + 
  ylab("Number of Tweets") + ggtitle("Tweet Volume vs. Date")

qplot(hashtags_post$Date, hashtags_post$RoyalsCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #Royals - 2015")
qplot(hashtags_post$Date, hashtags_post$WorldSeriesCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #WorldSeries - 2015")
qplot(hashtags_post$Date, hashtags_post$TakeTheCrownCount, xlab = "Month - Date", ylab="Number of Tweets", main="Volume of Tweets Containing #TakeTheCrown - 2015")


