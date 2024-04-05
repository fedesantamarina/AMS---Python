# Problema: Administración de notas de estudiantes

En una clase, se tienen las notas de los estudiantes en una lista llamada `notas`. Cada elemento de la lista es una sublista que contiene el nombre del estudiante y sus notas. Se requiere realizar las siguientes tareas:

1. Calcular el promedio de notas de cada estudiante.
2. Encontrar la nota más alta y la nota más baja de la clase.
3. Contar cuántos estudiantes tienen un promedio mayor o igual a 7.0.
4. Crear una nueva lista con los nombres de los estudiantes que tienen un promedio mayor o igual a 7.0.

```python
# Datos iniciales
notas = [
    ["Juan", 8.5, 7.0, 9.0, 6.5],
    ["María", 9.0, 8.5, 7.5, 8.0],
    ["Pedro", 7.0, 6.5, 8.0, 7.5],
    ["Ana", 6.0, 7.0, 8.5, 9.0],
    ["Luis", 8.0, 7.5, 6.5, 7.0]
]

# Función para calcular el promedio de notas de un estudiante
def calcular_promedio(notas_estudiante):
    # --- Completar el código aquí ---
    pass

# Calcular el promedio de notas de cada estudiante
promedios = []
for estudiante in notas:
    # --- Completar el código aquí ---
    pass

print("Promedios de notas:")
for i in range(len(notas)):
    print(f"{notas[i][0]}: {promedios[i]}")

# Encontrar la nota más alta y la nota más baja de la clase
nota_max = 0
nota_min = 10
for estudiante in notas:
    # --- Completar el código aquí ---
    pass

print(f"Nota más alta: {nota_max}")
print(f"Nota más baja: {nota_min}")

# Contar cuántos estudiantes tienen un promedio mayor o igual a 7.0
count_aprobados = 0
for promedio in promedios:
    # --- Completar el código aquí ---
    pass

print(f"Cantidad de estudiantes con promedio mayor o igual a 7.0: {count_aprobados}")

# Crear una nueva lista con los nombres de los estudiantes que tienen un promedio mayor o igual a 7.0
estudiantes_aprobados = []
for i in range(len(notas)):
    # --- Completar el código aquí ---
    pass

print("Estudiantes con promedio mayor o igual a 7.0:")
print(estudiantes_aprobados)

# Pruebas
assert len(promedios) == len(notas)
assert nota_max == 9.0
assert nota_min == 6.0
assert count_aprobados == 3
assert estudiantes_aprobados == ["Juan", "María", "Pedro"]
print("Todas las pruebas pasaron.")
```

Solución:

```python
# Datos iniciales
notas = [
    ["Juan", 8.5, 7.0, 9.0, 6.5],
    ["María", 9.0, 8.5, 7.5, 8.0],
    ["Pedro", 7.0, 6.5, 8.0, 7.5],
    ["Ana", 6.0, 7.0, 8.5, 9.0],
    ["Luis", 8.0, 7.5, 6.5, 7.0]
]

# Función para calcular el promedio de notas de un estudiante
def calcular_promedio(notas_estudiante):
    return sum(notas_estudiante[1:]) / len(notas_estudiante[1:])

# Calcular el promedio de notas de cada estudiante
promedios = []
for estudiante in notas:
    promedio = calcular_promedio(estudiante)
    promedios.append(promedio)

print("Promedios de notas:")
for i in range(len(notas)):
    print(f"{notas[i][0]}: {promedios[i]}")

# Encontrar la nota más alta y la nota más baja de la clase
nota_max = 0
nota_min = 10
for estudiante in notas:
    nota_max = max(nota_max, max(estudiante[1:]))
    nota_min = min(nota_min, min(estudiante[1:]))

print(f"Nota más alta: {nota_max}")
print(f"Nota más baja: {nota_min}")

# Contar cuántos estudiantes tienen un promedio mayor o igual a 7.0
count_aprobados = 0
for promedio in promedios:
    if promedio >= 7.0:
        count_aprobados += 1

print(f"Cantidad de estudiantes con promedio mayor o igual a 7.0: {count_aprobados}")

# Crear una nueva lista con los nombres de los estudiantes que tienen un promedio mayor o igual a 7.0
estudiantes_aprobados = []
for i in range(len(notas)):
    if promedios[i] >= 7.0:
        estudiantes_aprobados.append(notas[i][0])

print("Estudiantes con promedio mayor o igual a 7.0:")
print(estudiantes_aprobados)

# Pruebas
assert len(promedios) == len(notas)
assert nota_max == 9.0
assert nota_min == 6.0
assert count_aprobados == 3
assert estudiantes_aprobados == ["Juan", "María", "Pedro"]
print("Todas las pruebas pasaron.")
```
