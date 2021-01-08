earthquake <- datasets::quakes
earthquake

###Top 10 rows and last 10 rows

head(earthquake,10)
tail(earthquake,10)

###Column

earthquake[,c(3,4)]

###Summary of Data
summary(earthquake[,c(3,4)])
summary(earthquake$depth)
summary(earthquake$mag)

###Plotting

plot(earthquake$depth)
plot(earthquake$mag)

##(Points and Lines) and Labelling X and Y axis and Colour in Plotting

# p: points, l: lines,b: both

plot(earthquake$depth, type = "b")
plot(earthquake$mag, type = "l")

# Labelling with Colour

plot(earthquake$depth, xlab = 'Index', ylab = 'Depth',
     main = 'Magnitude of Earthquake', col = 'red', type = "l")

###Bar Plot

barplot(earthquake$depth, xlab = 'Index', ylab = 'Depth',
        main = 'Depth of Earthquake', col = 'red', horiz = F,
        axes = T)

###Histogram
hist(earthquake$mag)
hist(earthquake$mag, 
     main = 'Magnitude of Earthquake',
     xlab = 'Index', ylab = 'Magnitude', col='blue')

###Box Plot 

##Single box plot
boxplot(earthquake$mag,main="Boxplot")

boxplot.stats(earthquake$mag)$out

## Multiple box plots
boxplot(earthquake[,1:5],main='Multiple Box Plot')

### Plotting all the Insights in one window

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(2,5),mar=c(2,5,2,1),  las=0, bty="o")

plot(earthquake$depth, type = "b")
plot(earthquake$mag, type = "l")
plot(earthquake$depth, type = "b")
plot(earthquake$mag, type = "l")
plot(earthquake$depth, xlab = 'Index', ylab = 'Depth',
     main = 'Magnitude of Earthquake', col = 'red', type = "l")
barplot(earthquake$depth, xlab = 'Index', ylab = 'Depth',
        main = 'Depth of Earthquake', col = 'red', horiz = F,
        axes = T)
hist(earthquake$mag)
hist(earthquake$mag, 
     main = 'Magnitude of Earthquake',
     xlab = 'Index', ylab = 'Magnitude', col='blue')
boxplot(earthquake$mag,main="Boxplot")
boxplot(earthquake[,1:5],main='Multiple Box Plot')

### Variance

var(earthquake$mag, na.rm = T)

### Standard Deviation

sd(earthquake$mag, na.rm = T)

### Skewness And Kurtosis

moments::skewness(earthquake$mag, na.rm = T)
moments::kurtosis(earthquake$mag, na.rm = T)
