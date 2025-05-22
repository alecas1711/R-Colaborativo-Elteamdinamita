

#Funciones transformación

sd_vector <- function(n){
  
  as.vector(n)
  return(sd(n))
  
}

col_con_NA <- c()
NA_col_detector <- function(df){
  
  as.data.frame(df)
  for(i in 1:ncol(df)){
    
    if(any(is.na(df[i]))){
      
      col_con_NA <- c(col_con_NA,colnames((df)[i]))

    }

  }
  return(col_con_NA)
  
}

#Esto con el dataset ya descargado
NA_col_detector(base)
sd_vector(base$edad)




