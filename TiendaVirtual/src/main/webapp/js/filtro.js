	/**
	 * let elementos -> lista de elementos
	 * info_table -> id tbody en html
	 * formulario -> id input text buscador
	**/

	const formulario = document.querySelector("#formulario") // Barra de busqueda
	const tabla_elementos = document.querySelector("#info_table") //tbody de elementos
	
	
	const filtrarUsuarios = () => {
        tabla_elementos.innerHTML = ""
        const texto = formulario.value.toLowerCase()    
        if (elementos.length === 0)
            tabla_elementos.innerHTML = "<h4>No existen usuarios</h4>"
        else {
            for(let elemento of elementos) {
                let usuario = elemento.usuario.toLowerCase()
                if (usuario.indexOf(texto) != -1){
					if (elemento.usuario == "admininicial"){
						tabla_elementos.innerHTML += `<tr class="tablas">
	                            <td>${elemento.id}</td>
								<td>${elemento.usuario}</td>                            
								<td>${elemento.cedula}</td>
								<td>${elemento.nombre}</td>
	                            <td>${elemento.email}</td>
	                        </tr>`
					} else {
	                    tabla_elementos.innerHTML += `<tr class="tablas">
	                            <td>${elemento.id}</td>
								<td>${elemento.usuario}</td>                            
								<td>${elemento.cedula}</td>
								<td>${elemento.nombre}</td>
	                            <td>${elemento.email}</td>
	                            <td class="botones_acciones">
	                                <a href= "usuarios/${elemento.cedula}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
	                                <a href="usuarios/del/${elemento.cedula}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
	                            </td>
	                        </tr>`
					}
                }
            }
            if (tabla_elementos.innerHTML == "")
                tabla_elementos.innerHTML = "<h4>Usuario no encontrado</h4>"
        }
	}

    const filtrarClientes = () => {
        tabla_elementos.innerHTML = ""
        const texto = formulario.value.toLowerCase()    
        if (elementos.length === 0)
            tabla_elementos.innerHTML = "<h4>No existen clientes</h4>"
        else {
            for(let elemento of elementos) {
                let nombre = elemento.nombre.toLowerCase()
                if (nombre.indexOf(texto) != -1){
                    tabla_elementos.innerHTML += `<tr class="tablas">
                            <td>${elemento.id}</td>
                            <td>${elemento.cedula}</td>
                            <td>${elemento.nombre}</td>
                            <td>${elemento.email}</td>
                            <td>${elemento.telefono}</td>
                            <td>${elemento.direccion}</td>
                            <td class="botones_acciones">
                                <a href= "clientes/${elemento.cedula}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
                                <a href="clientes/del/${elemento.cedula}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
                            </td>
                        </tr>`
                }
            }
            if (tabla_elementos.innerHTML == "")
                tabla_elementos.innerHTML = "<h4>Cliente no encontrado</h4>"
        }
	}

    
    const filtrarProveedores = () => {
        tabla_elementos.innerHTML = ""
        const texto = formulario.value.toLowerCase()    
        if (elementos.length === 0)
            tabla_elementos.innerHTML = "<h4>No existen Proveedores</h4>"
        else {
            for(let elemento of elementos) {
                let nombre = elemento.nombre.toLowerCase()
                if (nombre.indexOf(texto) != -1){
                    tabla_elementos.innerHTML += `<tr class="tablas">
                            <td>${elemento.id}</td>
							<td>${elemento.nit}</td>
                            <td>${elemento.nombre}</td>
                            <td>${elemento.direccion}</td>
                            <td>${elemento.telefono}</td>
                            <td>${elemento.ciudad}</td>
                            <td class="botones_acciones">
                                <a href= "proveedores/${elemento.nit}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
                                <a href="proveedores/del/${elemento.nit}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
                            </td>
                        </tr>`
                }
            }
            if (tabla_elementos.innerHTML == "")
                tabla_elementos.innerHTML = "<h4>Proveedor no encontrado</h4>"
        }
	}
	
    const filtro = {
        usuario: filtrarUsuarios,
        cliente: filtrarClientes,
        proveedor: filtrarProveedores,
    }

	const userID = () => {
		let count = 0
		for(let elemento of elementos) {
			elemento.id = count + 1
			count += 1
		}
        filtro[tipo]()
	}
	
	userID()
	formulario.addEventListener('keyup', filtro[tipo])