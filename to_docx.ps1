# Obtener la lista de archivos .md en el directorio actual
$markdownFiles = Get-ChildItem -Filter "*.md"

# Iterar sobre cada archivo .md
foreach ($file in $markdownFiles) {
    # Obtener el nombre del archivo sin la extensión
    $baseName = $file.BaseName
    
    # Construir la ruta completa del archivo de salida .docx
    $outputFile = Join-Path -Path $PWD -ChildPath "$baseName.docx"
    
    # Ejecutar Pandoc para convertir el archivo .md a .docx
    pandoc $file.FullName -f markdown -t docx -o $outputFile
    
    Write-Host "Convertido: $($file.Name) -> $($outputFile)"
}