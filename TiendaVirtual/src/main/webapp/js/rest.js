/* Datos iniciales */
// let consecutivo_ventas = 0
// let clientes = [{cedula:'123', direccion:'DireccionCliente1', email:'email1@email.com', nombre:'Javier', telefono:'123456'},...]
//let productos = [{codProducto:"1", producto:"Melocotones", nitProve:"1", precio:"25505", iva:"19", venta:'30351'}, ...]

/*Modelo de datos */
// data =  {venta:{}, detallado:[]}
// venta: {cod_venta:"", cedula_cliente:"", cedula_usuario:"", iva_venta:"", total_venta:"", valor_venta:""}
// detallado -> {cod_detalle_venta:"", cantidad:"", cod_producto:"", cod_venta:"", valor_total:"", valor_venta:"", valor_iva:""}


let data = { 
    venta:{cod_venta:"", cedula_cliente:"", cedula_usuario:"", iva_venta:"", total_venta:"", valor_venta:""}, 
    detallado:[]
}

data.venta.cedula_usuario = cedula_usuario

/* --- Seccion Cliente y Usuario --- */
const consecutivo = document.querySelector("#consecutivo")
console.log('Consecutivo de JAVA ',consecutivo_ventas)
consecutivo_ventas++
consecutivo.innerHTML = `<b>Consecutivo:</b> ${consecutivo_ventas}`
data.venta.cod_venta = consecutivo_ventas


const selectCedulas = document.querySelector("#selectCedulas")
let count = 0
clientes.forEach(element => {
    selectCedulas.innerHTML += `<option value="${count}">${element.cedula}</option>`
    count++
});

const cliente = document.querySelector("#cliente")
selectCedulas.addEventListener('click', () =>{
    if (selectCedulas.value != "null"){
        cliente.innerHTML = `<b>Cliente:</b> ${clientes[selectCedulas.value].nombre}`
        data.venta.cedula_cliente = clientes[selectCedulas.value].cedula
    }
})

/* --- Procesamiento de datos --- */

const listProducts = document.querySelector("#listProducts")
const masProductos = document.querySelector("#masProductos")

/* --- Agregar nuevos productos ---*/
let f_CProducto = document.querySelector("#f_CProducto")
productos.forEach(e => {
    f_CProducto.innerHTML += `<option value="${e.codProducto}">${e.codProducto}</option>`
});
let f_Cantidad

const agregarProducto = (e) => {
    e.preventDefault()
    f_Cantidad = parseInt(document.querySelector("#f_Cantidad").value)
    let codigo_prod = parseInt(f_CProducto.value)
    console.log(codigo_prod)	
    data.detallado.push ({
        cantidad:f_Cantidad, 
        codigo_producto:codigo_prod,
        cod_venta:consecutivo_ventas, 
        valor_total:Math.floor(f_Cantidad * productos[codigo_prod-1].precio), 
        valor_venta:Math.floor(f_Cantidad * productos[codigo_prod-1].venta), 
        valor_iva:Math.floor((f_Cantidad * productos[codigo_prod-1].precio)*(productos[codigo_prod-1].iva/100))
    })
    
    drawProducts()
}

masProductos.addEventListener("click", agregarProducto)


/* --- Dibujar listado de productos --- */

const drawProducts = () => {
    listProducts.innerHTML = ""
    for (let producto of data.detallado){
        listProducts.innerHTML += `<tr class="">
            <td>${producto.codigo_producto}</td>
            <td>${productos[producto.codigo_producto-1].producto}</td>
            <td>${producto.cantidad}</td>
            <td>${producto.valor_total}</td>
            </tr>`
    }

    drawTotal()
}


/* Dibujar seccion total */
const total_section = document.querySelector("#total_section")

const drawTotal = () =>{

    data.venta.total_venta = Math.floor(data.detallado.reduce((total, {valor_total}) => total + valor_total, 0)) || 0

    data.venta.iva_venta =  Math.floor(data.detallado.reduce((total, {valor_iva}) => total + valor_iva, 0)) || 0

    data.venta.valor_venta = Math.floor(data.detallado.reduce((total, {valor_venta}) => total + valor_venta, 0)) || 0

    total_section.innerHTML = `
    <p><b>Total Venta: </b>${data.venta.total_venta}</p>
    <p><b>Total IVA: </b>${data.venta.iva_venta}</p>
    <p><b>Total con IVA: </b>${data.venta.valor_venta}</p>
    `
}



/* Validar data */
function validar() {
    /* Logica de validacion de informacion (Pendiente)*/
    //console.table(data.detallado)
	fetchFunction() // Ejecucion funcion para enviar data al back
}

/* Enviar data -- Fetch process */

async function fetchFunction() {
    await fetch("/ventas", {method: 'post', body:JSON.stringify(data)})
    window.location.href = "";
}