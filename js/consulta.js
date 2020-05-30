(function() {
    const boton = document.getElementById('boton');
    const resultado = document.getElementById('resultado');
    const tabla = document.createElement('table');
    const tbody = document.createElement('tbody');

    const client = new HttpClient();

    const consultar = () => {
        resultado.innerHTML = "Espere...";
        client.get(location.href + "/consultas/consulta.php", ponerDatos, ponerTexto);
    };

    const ponerDatos = (texto) => {
        const data = JSON.parse(texto);

        resultado.innerHTML = "Espere...";
        tbody.innerHTML = '';

        data.forEach(x =>  {
            const tr = document.createElement('tr');
            const text = `
                <td>${x.codigo}</td>
                <td>${x.titulo}</td>
                <td>${x.autor}</td>
                <td>${x.genero}</td>
                <td>${x.year}</td>
                <td>${x.fecha}</td>`;
            tr.innerHTML = text;
            tbody.append(tr);
        });

        resultado.innerHTML = "";
        resultado.append(tabla);
    };

    const ponerTexto = (texto) => {
        resultado.innerHTML = texto;
    };

    const ponerTabla = () => {
        const thead = document.createElement('thead');
        const tr = document.createElement('tr');

        const columnas = [ "Código", "Título", "Autor", "Género", "Año", "Fecha de subido" ];

        for (let i = 0; i < columnas.length; i++) {
            const th = document.createElement('th');
            th.textContent = columnas[i];
            tr.append(th);
        }

        thead.append(tr);
        tabla.append(thead);
        tabla.append(tbody);
    };

    boton.addEventListener('click', consultar);
    ponerTabla();
    consultar();
})();