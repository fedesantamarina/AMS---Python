# Problema: Filtrado de candidatos

En un proceso de reclutamiento, se tiene un diccionario con los datos de los candidatos. Cada clave del diccionario representa el nombre del candidato, y el valor asociado es otro diccionario con la siguiente información:

- `'edad'`: Edad del candidato (entero).
- `'experiencia'`: Años de experiencia del candidato (entero).
- `'lenguajes'`: Lista de lenguajes de programación que conoce el candidato.
- `'nivel_educativo'`: Nivel educativo del candidato (cadena).

Tu tarea es implementar una función `filtrar_candidatos` que reciba el diccionario de candidatos y devuelva un nuevo diccionario con los candidatos que cumplan con los siguientes criterios:

- Tener al menos 3 años de experiencia.
- Conocer al menos 2 lenguajes de programación.
- Tener un nivel educativo de "Licenciatura" o superior.

```python
# Datos de los candidatos
candidatos = {
    'Juan': {'edad': 28, 'experiencia': 4, 'lenguajes': ['Python', 'Java'], 'nivel_educativo': 'Licenciatura'},
    'María': {'edad': 35, 'experiencia': 2, 'lenguajes': ['JavaScript'], 'nivel_educativo': 'Maestría'},
    'Pedro': {'edad': 24, 'experiencia': 1, 'lenguajes': ['Python'], 'nivel_educativo': 'Bachillerato'},
    'Ana': {'edad': 31, 'experiencia': 6, 'lenguajes': ['Python', 'Java', 'C++'], 'nivel_educativo': 'Doctorado'},
    'Luis': {'edad': 27, 'experiencia': 3, 'lenguajes': ['Python', 'JavaScript'], 'nivel_educativo': 'Licenciatura'}
}

def filtrar_candidatos(candidatos):
    # Escribe tu código aquí
    # ...
    # ...
    pass

# Pruebas
candidatos_filtrados = filtrar_candidatos(candidatos)
print(candidatos_filtrados)

assert len(candidatos_filtrados) == 3
assert 'Juan' in candidatos_filtrados
assert 'Ana' in candidatos_filtrados
assert 'Luis' in candidatos_filtrados
print("Todas las pruebas pasaron")
```

## Solución

```python
def filtrar_candidatos(candidatos):
    candidatos_filtrados = {}
    for nombre, datos in candidatos.items():
        if datos['experiencia'] >= 3 and len(datos['lenguajes']) >= 2 and datos['nivel_educativo'] in ['Licenciatura', 'Maestría', 'Doctorado']:
            candidatos_filtrados[nombre] = datos
    return candidatos_filtrados
```

En esta solución, se itera sobre cada candidato en el diccionario `candidatos` utilizando el método `items()`, que devuelve una tupla con la clave (nombre) y el valor (datos) de cada elemento del diccionario.

Luego, se verifica si el candidato cumple con los criterios especificados:

- Se comprueba si la experiencia del candidato es mayor o igual a 3 años (`datos['experiencia'] >= 3`).
- Se verifica si el candidato conoce al menos 2 lenguajes de programación (`len(datos['lenguajes']) >= 2`).
- Se verifica si el nivel educativo del candidato es "Licenciatura", "Maestría" o "Doctorado" (`datos['nivel_educativo'] in ['Licenciatura', 'Maestría', 'Doctorado']`).

Si el candidato cumple con todos los criterios, se agrega su nombre y datos al diccionario `candidatos_filtrados`.

Finalmente, se devuelve el diccionario `candidatos_filtrados` con los candidatos que cumplen con los criterios especificados.