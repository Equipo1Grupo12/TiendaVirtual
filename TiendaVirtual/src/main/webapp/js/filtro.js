/**
 * let usuarios -> lista de usuarios
 * Usuarios_info_table -> id tbody en html
 * formulario -> id input text buscador
 * Buscar -> id boton buscar
**/
const formulario = document.querySelector("#formulario")
const boton = document.querySelector("#Buscar")
const tabla_usuarios = document.querySelector("#Usuarios_info_table")


const filtrar = () => {
    tabla_usuarios.innerHTML = ""
    const texto = formulario.value.toLowerCase()    
    if (usuarios.length === 0)
        tabla_usuarios.innerHTML = "<h4>No existen usuarios</h4>"
    else {
        for(let usuario of usuarios) {
            let nombre = usuario.nombre.toLowerCase()
            if (nombre.indexOf(texto) != -1){
                tabla_usuarios.innerHTML += `<tr class="tablas">
                        <td>${usuario.id}</td>
                        <td>${usuario.cedula}</td>
                        <td>${usuario.nombre}</td>
                        <td>${usuario.email}</td>
                        <td>${usuario.usuario}</td>
                        <td>
                            <a href= "usuarios/${usuario.cedula}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
                            <a href="usuarios/del/${usuario.cedula}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
                        </td>
                    </tr>`
            }
        }
        if (tabla_usuarios.innerHTML == "")
            tabla_usuarios.innerHTML = "<h4>Usuario no encontrado</h4>"
    }
    
}

const userID = () => {
	let count = 0
	for(let usuario of usuarios) {
		usuario.id = count + 1
		count += 1
	}
	filtrar()
}

userID()
formulario.addEventListener('keyup', filtrar)