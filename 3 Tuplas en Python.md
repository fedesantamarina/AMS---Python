# Tuplas en Python

Las tuplas en Python son una estructura de datos inmutable, lo que significa que sus elementos no pueden ser modificados después de su creación. A continuación, se presentan las propiedades y métodos más importantes de las tuplas en Python, junto con ejemplos de código.

## Propiedades de las Tuplas

### 1. Acceso a elementos

Al igual que las listas, las tuplas permiten acceder a sus elementos mediante índices numéricos que comienzan desde cero.

```python
frutas = ("manzana", "banana", "naranja")
print(frutas[0])  # Salida: "manzana"
```

### 2. Inmutabilidad

Las tuplas son inmutables, lo que significa que sus elementos no pueden ser modificados después de su creación.

```python
numeros = (1, 2, 3, 4, 5)
numeros[2] = 10  # Generará un error: TypeError: 'tuple' object does not support item assignment
```

### 3. Longitud

La longitud de una tupla (número de elementos) se puede obtener utilizando la función `len()`.

```python
vocales = ("a", "e", "i", "o", "u")
print(len(vocales))  # Salida: 5
```

## Métodos de las Tuplas

Las tuplas tienen una cantidad limitada de métodos incorporados debido a su naturaleza inmutable. Algunos de los métodos más importantes son:

### 1. `count()`

Cuenta el número de ocurrencias de un elemento específico en la tupla.

```python
numeros = (1, 2, 3, 2, 4, 2)
contador = numeros.count(2)
print(contador)  # Salida: 3
```

### 2. `index()`

Devuelve el índice de la primera ocurrencia de un elemento específico en la tupla.

```python
frutas = ("manzana", "banana", "naranja", "kiwi")
indice = frutas.index("naranja")
print(indice)  # Salida: 2
```

### 3. Operaciones con Tuplas

Aunque las tuplas son inmutables, se pueden realizar operaciones como concatenación y repetición.

```python
# Concatenación
tupla1 = (1, 2, 3)
tupla2 = (4, 5, 6)
tupla_concatenada = tupla1 + tupla2
print(tupla_concatenada)  # Salida: (1, 2, 3, 4, 5, 6)

# Repetición
numeros = (1, 2)
numeros_repetidos = numeros * 3
print(numeros_repetidos)  # Salida: (1, 2, 1, 2, 1, 2)
```

Las tuplas son útiles cuando se necesita una colección de elementos inmutables y se requiere un rendimiento ligeramente mejor en comparación con las listas. Sin embargo, debido a su inmutabilidad, las tuplas tienen una funcionalidad más limitada que las listas en términos de modificación de sus elementos.