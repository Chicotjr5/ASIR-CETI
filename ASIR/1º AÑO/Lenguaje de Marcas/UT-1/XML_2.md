## Crear una estructura XML sin DTD o Schema que represente un libro de tres capítulos, en el que el primero y el último sólo tienen un título y el segundo tiene un titulo y dos subcapítulos. Cada subcapítulo tendrá un título.


```bash
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<libro>
    <capítulos>
      <capítulo Título="Captitulo uno"/>
      <capítulo Título="Capitulo dos"/>
        <Subcapítulo Título="Subcapitulo uno"/>
        <Subcapitulo Titulo="Subcapitulodos"/>
      <capítulo Título="Capitulo tres"/>
    </capítulos>
</libro>
```
