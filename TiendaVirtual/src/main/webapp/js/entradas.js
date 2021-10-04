let usuario = "Edison"
let cedula_usuario = "1015"
let consecutivo_ventas = parseInt("0")

let clientes = [
    {cedula:'123', direccion:'DireccionCliente1', email:'email1@email.com', nombre:'Javier', telefono:'123456'},
    {cedula:'456', direccion:'DireccionCliente2', email:'email2@email.com', nombre:'Claudia', telefono:'741852'},
    {cedula:'789', direccion:'DireccionCliente3', email:'email3@email.com', nombre:'Jose', telefono:'963587'},
]

let productos = [
    {codProducto:"1", producto:"Melocotones", nitProve:"1", precio:"25505", iva:"19", venta:'30351'},
    {codProducto:"2", producto:"Manzanas", nitProve:"3", precio:"18108", iva:"19", venta:'21549'},
    {codProducto:"3", producto:"Plátanos", nitProve:"4", precio:"29681", iva:"19", venta:'35320'},
    {codProducto:"4", producto:"Lechuga", nitProve:"3", precio:"29788", iva:"19", venta:'35448'},
    {codProducto:"5", producto:"Tomates", nitProve:"1", precio:"12739", iva:"19", venta:'15159'},
    {codProducto:"6", producto:"Calabaza", nitProve:"1", precio:"21315", iva:"19", venta:'25365'},
]

/* Modelo JSON para enviar al back
let data = {
    venta: {
        cod_venta:"", 
        cedula_cliente:"",	
        cedula_usuario:"",	
        iva_venta:"",	
        total_venta:"",	
        valor_venta:""
    },
    detallado: [
        {
            cod_detalle_venta:"", 
            cantidad:"",
            cod_producto:"",
            cod_venta:"",
            valor_total:"",
            valor_venta:"",
            valor_iva:""
        },
        {
            cod_detalle_venta:"", 
            cantidad:"",
            cod_producto:"",
            cod_venta:"",
            valor_total:"",
            valor_venta:"",
            valor_iva:""
        }, ...
    }
]*/