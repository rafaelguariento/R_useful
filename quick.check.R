quick.check <- function(mod) 
  
{            
  par(mfrow=c(1,2), mar= c(5,4,2,2))
  
  plot(resid(mod) ~ fitted(mod), xlab = "Fitted values", ylab ="Residuals")
  
  abline(h=0)
  
  abline(lm(resid(mod)~fitted(mod)), col= "red")        
  
  qqnorm(resid(mod), ylab="Residuals")
  
  qqline(resid(mod))
  
  plot(density(resid(mod)))
  
  rug(resid(mod))
  
  qqnorm(fitted(mod), main = "QQ plot fitted")
  
  qqline(fitted(mod))
  
  print(anova(lm(fitted(mod)~resid(mod))))}
