# Connect to our data
myRegressionData <- read.csv("C:/Users/merve/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/03_02/regression-r.csv")
## amac??m??z, broadcast s??tunu ve sat??slar aras??ndaki korelasyonu belirlemeye cal??smak.

# Plot our data (broadcast & sales)
plot(myRegressionData$BROADCAST, myRegressionData$NET.SALES)

# Fit a line. Bir line a fit edecegiz, b??ylece data pointlerin cizgiyle uyumunu g??r??r??z
myLm <- lm(myRegressionData$NET.SALES ~ myRegressionData$BROADCAST)

# Visualize the line. Cizgiyi hesaplad??k simdi de g??rsellestirecegiz
lines(myRegressionData$BROADCAST,myLm$fitted)

# Show our coefficients. Veriler aras??ndaki iliskiyi coefficient ile belirleriz.
# Bu deger bir ??arpand??r(variable&coefficient)
myLm$coefficients # Intercept: 133108.78: net sat??s, 12141.94: slope broadcast media icin katsay??
## broadcast units sat??slar??nda 12141.94 kadarl??k bir art??s var. pozitif bir korelasyon var diyebiliriz.
## B??ylece bu verilerle yat??r??m kararlar?? almaya baslayabiliriz. Her kampanya i??in bunu kullanabiliriz.


