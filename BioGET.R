 n<-50
X<-runif(n)
a<-2
 b<-3
sigma<-1/2
Y<-a*X+b+rnorm(n,sd=sigma)

# Modele lineaire
(modele<-lm(X~Y))
plot(X~Y)
abline(a=modele$coefficients[1], b=modele$coefficients[2],col="red")

# ggplot
library("tidyverse")
data.frame(X,Y) %>%
  ggplot(aes(x=X, y=Y))+
  geom_point()+
  geom_smooth(method = lm)
