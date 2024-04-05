# Listas en Python

Las listas en Python son una de las estructuras de datos más versátiles y ampliamente utilizadas. Permiten almacenar colecciones ordenadas de elementos, los cuales pueden ser de diferentes tipos de datos (enteros, cadenas, objetos, etc.). A continuación, se presentan las propiedades y métodos más importantes de las listas en Python, junto con ejemplos de código.

## Propiedades de las Listas

### 1. Acceso a elementos

Las listas permiten acceder a sus elementos mediante índices numéricos que comienzan desde cero.

```python
frutas = ["manzana", "banana", "naranja"]
print(frutas[0])  # Salida: "manzana"
```

### 2. Mutabilidad

Las listas son mutables, lo que significa que sus elementos pueden ser modificados después de su creación.

```python
numeros = [1, 2, 3, 4, 5]
numeros[2] = 10  # Modifica el elemento en el índice 2
print(numeros)  # Salida: [1, 2, 10, 4, 5]
```

### 3. Longitud

La longitud de una lista (número de elementos) se puede obtener utilizando la función `len()`.

```python
vocales = ["a", "e", "i", "o", "u"]
print(len(vocales))  # Salida: 5
```

## Métodos de las Listas

### 1. `append()`

Agrega un elemento al final de la lista.

```python
numeros = [1, 2, 3]
numeros.append(4)
print(numeros)  # Salida: [1, 2, 3, 4]
```

### 2. `insert()`

Inserta un elemento en una posición específica de la lista.

```python
frutas = ["manzana", "banana", "naranja"]
frutas.insert(1, "kiwi")
print(frutas)  # Salida: ["manzana", "kiwi", "banana", "naranja"]
```

### 3. `remove()`

Elimina la primera ocurrencia de un elemento específico de la lista.

```python
numeros = [1, 2, 3, 2, 4]
numeros.remove(2)
print(numeros)  # Salida: [1, 3, 2, 4]
```

### 4. `pop()`

Elimina y devuelve el elemento en una posición específica de la lista. Si no se proporciona un índice, elimina y devuelve el último elemento.

```python
frutas = ["manzana", "banana", "naranja", "kiwi"]
ultima_fruta = frutas.pop()
print(ultima_fruta)  # Salida: "kiwi"
print(frutas)  # Salida: ["manzana", "banana", "naranja"]
```

### 5. `sort()`

Ordena los elementos de la lista in situ (modifica la lista original).

```python
numeros = [5, 2, 8, 1, 9]
numeros.sort()
print(numeros)  # Salida: [1, 2, 5, 8, 9]
```

### 6. `reverse()`

Invierte el orden de los elementos de la lista in situ.

```python
frutas = ["manzana", "banana", "naranja", "kiwi"]
frutas.reverse()
print(frutas)  # Salida: ["kiwi", "naranja", "banana", "manzana"]
```

Estos son solo algunos de los métodos y propiedades más comunes de las listas en Python. Las listas ofrecen una gran cantidad de funcionalidades adicionales que te permiten manipular y trabajar con colecciones de datos de manera eficiente.
