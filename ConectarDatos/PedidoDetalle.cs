//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConectarDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class PedidoDetalle
    {
        public int idPedidoDT { get; set; }
        public int idPedido { get; set; }
        public Nullable<System.DateTime> fechaPedido { get; set; }
        public double totalP { get; set; }
    
        public virtual Pedido Pedido { get; set; }
    }
}