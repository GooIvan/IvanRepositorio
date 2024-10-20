Inicio
    leer "Cantidad de estudiantes", numEst
    para i = 1 hasta numEst
        nombreEst = cells (i, 1)
        reves = ""
    
        para j = len(nombreEst) hasta 1 Step -1
            reves = reves + substr(nombreEst, j, 1)
        fin para
    cells(i, 4) = reves
    fin para
Fin