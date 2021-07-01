
df <- data.frame(Country=Countries_2012_Dataset, Region=Regions_2012_Dataset, Codes=Codes_2012_Dataset)
head(df,4)
summary(df)


merged.df <- merge(data, df, by.x = "Country.Code", by.y = "Codes")

merged.df$Country.Name <- NULL

View(merged.df)

qplot(data=merged.df, x=Internet.users, y=Birth.rate, color=Region, size=I(4))
