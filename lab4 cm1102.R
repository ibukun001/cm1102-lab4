library(ggplot2)
data(diamonds)
#show the diamond prices, grouped by cut using boxplots
ggplot(diamonds, aes(x =cut, y = price)) +geom_boxplot() + labs(x = "cut", y = "price")
#apply colours to the boxes and their outline
ggplot(diamonds, aes(x =cut, y = price)) +geom_boxplot(fill = "turquoise",colour = "magenta")
#change cut by reorder(cut,price,meadean)in the plot aesthetics
ggplot(diamonds, aes(reorder(cut,price,median),price))+ geom_boxplot(fill = "turquoise",colour = "magenta")
# add geom_jitter(size=0.1,alpha=0.3)
ggplot(diamonds, aes(reorder(cut,price,median),price))+ geom_boxplot(fill = "turquoise",colour = "magenta")+ geom_jitter(size=0.1,alpha=0.3)
#plot a box plot of price which is grouped by cut
ggplot(diamonds, aes(x =cut, y = price)) +geom_boxplot(fill = "light blue")+labs (y="price", x="cut", tittle="box plot of price,grouped by cut")
#plot a box plot of price which is grouped by color
ggplot(diamonds, aes(x =cut, y = price)) +geom_boxplot(fill = "violet")+labs (y="price", x="color", tittle="box plot of price,grouped by cut")
#plot a box with chat which is grouped by charity
ggplot(diamonds, aes(x =cut, y = price)) +geom_boxplot(fill = "light green")+labs (y="price", x="charity", tittle="box plot of price,grouped by cut")


#plot histogram of all the diamond prices
ggplot(diamonds, aes(price)) +geom_histogram()
#create histogam of diamond prices for diffrent cuts,using faceting
ggplot(diamonds, aes(price)) +geom_histogram() +facet_wrap(~cut)
#add suitable argument to geom_histogam to add black outlines around the bars
ggplot(diamonds, aes(price)) +geom_histogram(color="green") +facet_wrap(~cut)
#add width to bars using the control binwidth with a geom_histogram()
ggplot(diamonds, aes(price)) +geom_histogram(binwidth=5)
#plot histogram of price with the plot of diamond
ggplot(diamonds, aes(x =price, fill = cut)) +geom_histogram() + labs (y="count", x="price", tittle= "price with cut of diamond")
#plot histogam of price the the clarity of diamond
ggplot(diamonds, aes(x =price, fill = clarity)) +geom_histogram() + labs (y="count", x="price", tittle= "price with clarity of diamond")
#plot histogram of vaues for price of diamond
ggplot(diamonds, aes(x =price)) +geom_histogram(fill="yellow",color="blue")+ labs (tittle= "histogam of price values")
#plot histogam to represent the lenght of diamond
ggplot(diamonds, aes(x =depth)) +geom_histogram(fill="purple")



#plopt a bar chart of diamond cuts
ggplot(diamonds, aes(cut)) +geom_bar()  
#set diff colors to the bar by adding a fill argument to the geom_bar
ggplot(diamonds, aes(cut)) +geom_bar(fill=c("blue","green","yellow","brown","red"))  
#decrese the width of the bar using the coltrol bar width
ggplot(diamonds, aes(cut,fill = cut)) +geom_bar(width = 0.2) 
#plot a stacked bar chart of diamond cuts by adding fill = clarity
ggplot(diamonds, aes(cut,fill =clarity)) +geom_bar()
#now add position-dodge to geom_bar to obtain groupd bar chart
ggplot(diamonds, aes(cut,fill = clarity)) +geom_bar(position="dodge")
#flip the coordinate system by generating a horizontal bar plot using coord_flip
ggplot(diamonds, aes(cut)) +geom_bar()+coord_flip()
#plot the quality of diamonds
ggplot(diamonds, aes(x =cut,fill = cut)) +geom_bar()
#plot the color of diamonds
ggplot(diamonds, aes(x =color,fill = color)) +geom_bar()+ labs (y="color of diamonds", x="diamond counts", tittle= "color of the diamonds")
#plot the clarity of the diamond
ggplot(diamonds, aes(x =clarity,fill =clarity)) +geom_bar()+ labs (y="clarity of diamonds", x="diamond counts", tittle= "clarity of the diamonds")
#plot the quality of diamond with clarity
ggplot(diamonds, aes(x =cut,fill =clarity)) +geom_bar()+ labs (y="quality of diamonds", x="diamond counts", tittle= "quality of the diamonds with clarity")
#plot quality of diamond with color
ggplot(diamonds, aes(x =cut,fill =color)) +geom_bar()+ labs (y="clarity of diamonds", x="diamond counts", tittle= "clarity of the diamonds with color")
