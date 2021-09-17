<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
         doctype-system="http://www.w3.org/TR/html4/loose.dtd" method="html"
         indent="yes" encoding="ISO-8859-1" media-type="text/html" />
  <xsl:template match="factura">
      <html>
          <head></head>
          <body>
            <table border="1">
                <tr> <td colspan="2"> Factura No: <xsl:value-of select="num"/></td> <td colspan="3"> tipo: <xsl:value-of select="@tipo"/></td> </tr>
     	        <tr>  <td colspan="2">Cliente: </td> <td colspan="3">  </td></tr>
            	<tr>  <td colspan="2">Nombre: <xsl:value-of select="cliente/nombre"/></td> <td colspan="3"> Documento: <xsl:value-of select="cliente/documento/dui"/> </td></tr>
            	<tr>  <td colspan="2">Telefono: <xsl:value-of select="cliente/telefono"/></td> <td colspan="3">Email: <xsl:value-of select="cliente/email"/></td></tr>
  
              <tr> <td>codigo</td><td>detalle</td> <td>cantidad</td><td>precio</td><td>subtotal</td></tr>
            <xsl:apply-templates select="lineafactura"/>
            
            </table>
          <p></p>
          </body>
      </html>    
  </xsl:template>
   
  
   <xsl:template match="lineafactura">
    <tr> <td> <xsl:value-of select="codigo"/> </td><td> <xsl:value-of select="detalle"/> </td><td> <xsl:value-of select="cantidad"/> </td><td> <xsl:value-of select="precio"/> </td><td> <xsl:value-of select="subtotal"/> </td>
     </tr>  
  </xsl:template> 
  
</xsl:stylesheet>
