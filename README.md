To import something like a census.gov TIGER shapefile into MySQL:

    docker run -it --rm barryp/gdal_mysql

in the container:

    wget <url>
    unzip <something>.zip
    ogr2ogr -f MySQL MySQL:dbname,user=UUUU,password=PPPP,host=AAA.BBB.CCC <something>.shp
    rm <something>.*

repeat as necessary, <ctrl-d> to exit
