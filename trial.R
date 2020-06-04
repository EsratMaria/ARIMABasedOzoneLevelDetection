> ozone = airquality
> library(forecast)
> ptime <- ts(ozone, frequency=12, start=c(2007,1))

> plot(ptime[,1:4])

> ozone = na.omit(ozone)
> ptime <- ts(ozone, frequency=12, start=c(2007,1))
> plot(ptime[,1:4])

> arima_fit = auto.arima(airTS[,3])
> tsdiag(arima_fit)
> arima_fit = auto.arima(ptime[,3])
> tsdiag(arima_fit)
> summary(arima_fit)
Series: ptime[, 3] 
ARIMA(1,0,0) with non-zero mean 

Coefficients:
         ar1    mean
      0.2254  9.9371
s.e.  0.0923  0.4216

sigma^2 estimated as 12.12:  log likelihood=-294.97
AIC=595.94   AICc=596.17   BIC=604.07

Training set error measures:
                      ME     RMSE      MAE       MPE     MAPE      MASE
Training set 0.005737414 3.449467 2.738685 -15.93358 35.10801 0.6955613
                    ACF1
Training set -0.01072183
> Box.test(arima_fit$residuals,lag=1)

        Box-Pierce test

data:  arima_fit$residuals
X-squared = 0.01276, df = 1, p-value = 0.9101


> acf(ptime)

> acf(ptime[,3])
> pacf(ptime[,3])

> tsdiag(auto.arima(ptime[,2]))
> tsdiag(auto.arima(ptime[,1]))
> tsdiag(auto.arima(ptime[,4]))
> tsdiag(auto.arima(ptime[,5]))

> tsdiag(auto.arima(ptime[,6]))

> head(ptime)
         Ozone Solar.R Wind Temp Month Day
Jan 2007    41     190  7.4   67     5   1
Feb 2007    36     118  8.0   72     5   2
Mar 2007    12     149 12.6   74     5   3
Apr 2007    18     313 11.5   62     5   4
May 2007    23     299  8.6   65     5   7
Jun 2007    19      99 13.8   59     5   8
> tsdiag(auto.arima(ptime[,4]))
> library(tseries)

    ‘tseries’ version: 0.10-47

    ‘tseries’ is a package for time series analysis and computational
    finance.

    See ‘library(help="tseries")’ for details.


> Box.test(arima_fit$residuals,lag=1)

        Box-Pierce test

data:  arima_fit$residuals
X-squared = 0.01276, df = 1, p-value = 0.9101

> adf.test(arima_fit)
Error in as.vector(x, mode = "double") : 
  'list' object cannot be coerced to type 'double'
> 
> 
> predict(arima(lh, order = c(1,0,0)), n.ahead = 3)
$pred
Time Series:
Start = 49 
End = 51 
Frequency = 1 
[1] 2.692626 2.573609 2.505301

$se
Time Series:
Start = 49 
End = 51 
Frequency = 1 
[1] 0.4443979 0.5123881 0.5328878


> arima_forecast = forecast(arima_fit, h = 10)
> plot(arima_forecast)
> ts.plot(arima_forecast)
> ts.plot(arima_forecast)
> plot(arima_forecast)



> pairs(airquality, panel = panel.smooth, main = "Air Quality Data")
> par(mfrow = c(1,2))
> acf(ptime)
> pacf(ptime[,3])

> ice.ts <- ts(airquality$Ozone, start = c(1951, 3), end = c(1953, 6), frequency = 52/4)

> airquality = na.omit(airquality)
> ice.ts <- ts(airquality$Ozone, start = c(1951, 3), end = c(1953, 6), frequency = 52/4)
> plot(decompose(ice.ts))
> ice.ts <- ts(airquality$Ozone, start = c(1951, 3), end = c(1953, 6), frequency = 52/4)
> acf(ice.ts)
> plot(airquality$Ozone)
> adf.test(airquality$Ozone)
