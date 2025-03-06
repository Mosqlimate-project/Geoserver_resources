library(here)
library(sf)

uf <- "ES"

# Caminho para a pasta que contém os shapefiles
pasta_shp <- paste0("Base de Faces de Logradouros - IBGE 2024/", uf)

# Arquivo geopackage
saida_gpkg <- paste0("Base de Faces de Logradouros - IBGE 2024/", uf, 
                     "_faces_de_logradouros_2022.gpkg")

# Lista todos os arquivos .shp da pasta
arquivos_shp <- list.files(pasta_shp, pattern = "\\.shp$", full.names = TRUE)

# Loop para ler cada shapefile e gravar no .gpkg
for (arquivo in arquivos_shp) {
  # Removendo a extensão do nome da camada:
  nome_camada <- sub("\\.shp$", "", basename(arquivo))
  
  # Lendo o shapefile
  shp <- st_read(arquivo, quiet = TRUE)
  
  # Exportando para o geopackage
  st_write(obj = shp, dsn = saida_gpkg, layer = nome_camada, append = TRUE)
}
