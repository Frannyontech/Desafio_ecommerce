Desafio Sistema E-commerce

1. Hacer un diagrama de modelos para cubrir las necesidades del cliente.
    Diagrama creado en 'erd.pdf'
2. Crear la o las relaciones y modelos para manejar los productos y sus variaciones.
    Modificacion de la table de productos para que no haya una repeticion con el modelo Variation, se referencia color and size
3. Crear la o las relaciones y modelos para manejar las tallas y colores de las variaciones.
    Creacion de modelo size y color y se asocia al model variation
4. Implementar la solución para manejar distintos niveles de categorías y asegurarse que no tenga dos padres. También deberás implementar un test unitario para verificar este comportamiento.
    creada category_id
5. Generar un método o scope en las categorías, de tal forma que entregue una lista de cada categoría padre y otro de sus hijos, y los hijos de sus hijos, en todos los niveles.


8. Nuestro cliente, a último minuto nos solicita que nuestro sistema soporte cupones de dos tipos
    Se creo el modelo Coupon donde se le asigna monto, codigo que se aplica a usuario y se le hace descuento