//
//  Datos.swift
//  Hamburguesas
//
//  Created by Jairman on 29/02/16.
//  Copyright © 2016 Jairman. All rights reserved.
//


/*
Instrucciones

Crea una aplicación que le muestra al usuario las hamburguesas del mundo, con un precio aleatorio.

Instructionsmenos
Crea una aplicación para iPhone que le muestre hamburguesas del mundo al usuario. Durante este reto revisarás los conceptos que hemos trabajado del desarrollo de aplicaciones para iPhone y las bases que revisamos de Swift versión 2.0.

Crea un proyecto nuevo en Xcode que se llame Hamburguesas y desarrolla lo siguiente:

1. Crea un archivo de Swift llamado: Datos.swift, dentro de él declara las siguientes clases:

a. class ColeccionDePaises

b. La clase tiene como atributos un arreglo de países de tipo [String], al menos debes contar con  20 países.

c. La clase define el método:                     func obtenPais( )->String, regresa de manera aleatoria un país del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo países.

2. Dentro del mismo archivo, Datos.swift, crea la clase:

a. class ColeccionDeHamburguesa

b. La clase tiene como atributos un arreglo de hamburguesas de tipo [String], al menos debes contar con  20 hamburguesas al igual que el número de países.

c. La clase define el método:                     func obtenHamburguesa( )->String, regresa de manera aleatoria una hamburquesa del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo de hamburguesas.

3. Dentro de tu interfaz gráfica debes contar con:

a. Una etiqueta para mostrar el nombre del país.

b. Otra etiqueta para mostrar el nombre de la hamburguesa.

c. Un botón, con la leyenda: “Quiero una hamburguesa!”

d. Debes de mostrar los elementos centrados en la interfaz gráfica

4. En la clase ViewController: desarrolla lo siguiente:

a. Una instancia de la clase ColeccionDePaises.

b. Una instancia de la clase ColeccionDeHamburguesas.

c. Un @IBoutlet para la etiqueta de país.

d. Un @IBoutlet para la etiqueta de hamburguesa.

e. Un @IBAction para implementar cambiar de país y de hamburguesa.

5. Al presionar el botón debes cambiar el país y la hamburguesa que se despliegan en las etiquetas, de manera opcional cambia el color de fondo como se realizo en los videos del módulo 5.

Review Criteriamenos
¿El playground se encuentra en GitHub?
¿El playground está hecho en Swift?
¿Se incluye en el proyecto el archivo: Datos.swift?
¿Dentro del archivo Datos.swift se define la clase: ColeccionDePaises con la funcionalidad definida?
¿Dentro del archivo Datos.swift se define la clase: ColeccionDeHamburguesas con la funcionalidad definida?
¿La interfaz gráfica define las dos etiquetas y el botón de: “Quiero una hamburguesa!!!”?
¿Los elementos gráficos se encuentran centrados?
¿La clase ViewController.swift define una instancia de cada una de las siguientes clases ColeccionDePaises,  ColeccionDeHamburguesas?
¿La clase ViewController.swift cuenta con: Un @IBoutlet para la etiqueta de país. Un @IBoutlet para la etiqueta de hamburguesa. Un @IBAction para implementar cambiar de país y de hamburguesa?
¿Al presionar el botón se cambian de manera aleatoria los valores de la etiqueta país y hamburguesa?
Entregamenos
El proyecto deberá estar en la cuenta de GitHub del alumno

*/




import Foundation
import UIKit

struct Colores {
    let colores = [UIColor(red : 210/255.0, green : 90/255.0, blue : 45/255.0, alpha : 1),
        UIColor(red : 40/255.0, green : 170/255.0, blue: 45/255.0, alpha : 1),
        UIColor(red : 3/255.0, green : 180/255.0, blue:90/255.0, alpha : 1),
        UIColor(red : 210/255.0, green : 190/255.0, blue:5/255.0, alpha : 1),
        UIColor(red : 130/255.0, green : 130/255.0, blue:130/255.0, alpha : 1)]
    
    func regresaColoresAleatorio() -> UIColor   {
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
    }
}

class ColeccionDePaises {
    var paises  = ["Holanda","Mexico","USA","Alemania","Grecia","Brasil","Rusia","Puerto Rico","Cuba","Francia",
        "Irak","Sudafrica","Canada","Italia","Inglaterra","China","Japon","Corea","Indonesia","Nigeria"]
    
    
    
    func obtenPais( )->String{
        let posicion = Int (arc4random()) % paises.count
        return paises[posicion]
    }
    
    
}





class ColeccionDeHamburguesa {
    var hamburguesas = ["Sencilla","Doble","Triple","Sencilla con queso","Doble con queso","Triple con queso"
        ,"Sencilla con queso y tocino","Doble con queso  y tocino","Triple con queso  y tocino","De pollo","De sirlon","Srilon con queso", "De camaron","De camaron con queso","Sencilla con Jamon", "Doble con camaron", "Bronto Burger","Burger machina", "Burger Boy","Burger con papas"]
    
    
    
    func obtenHamburguesa( )->String{
        let posicion = Int (arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
    

    
    
}
