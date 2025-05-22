resultados = list()

for (i in names(dataset)) {
  if(is.numeric(dataset[[i]])){
    media = mean(dataset[[i]], na.rm=TRUE)
    conteo = sum(dataset[[i]]>media, na.rm = TRUE)
    condicion = conteo > 10
    
    resultados[[i]] = data.frame(
      Columna =i,
      Media = media,
      conteo = conteo,
      Condicion = condicion
    )
  }
}

df= do.call(rbind, resultados)
print(df)
total = sum(df$Condicion)
print(total)

#Dataframe
write.csv(
  df,
  file = "C:/Users/altai/Documents/GitHub/R-Colaborativo-Elteamdinamita/resultados/resultados.csv",
  row.names = FALSE
)


