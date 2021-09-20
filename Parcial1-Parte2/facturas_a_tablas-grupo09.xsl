<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
         doctype-system="http://www.w3.org/TR/html4/loose.dtd" method="html"
         indent="yes" encoding="ISO-8859-1" media-type="text/html" />

  <xsl:template match="factura">
  <xsl:processing-instruction name="xml-stylesheet">href="style.css" type="text/css"</xsl:processing-instruction>
      <html>
          <head>
          <link rel="stylesheet" type="text/css" href="style.css" />
          </head>
          <body>
          <p><xsl:value-of select="responsable"/></p>
            <table>
                <tr> <td colspan="2"> Factura No: <xsl:value-of select="num"/></td> <td colspan="3"> tipo: <xsl:value-of select="@tipo"/></td> </tr>
                <tr>  <td colspan="2">Cliente: </td> <td colspan="3">  </td></tr>
                <tr>  <td colspan="2">Nombre: <xsl:value-of select="cliente/nombre"/></td> <td colspan="3"> Documento: <xsl:value-of select="cliente/documento/dui"/> </td></tr>
                <tr>  <td class="tduno" colspan="2">Telefono: <xsl:value-of select="cliente/telefono"/></td> <td class="tduno" colspan="3">Email: <xsl:value-of select="cliente/email"/></td></tr>
  
                <tr> <td class="tddos">codigo</td><td class="tddetalle">detalle</td> <td class="tddos">cantidad</td><td class="tddos">precio</td><td class="tddos">subtotal</td></tr>
                
            <xsl:apply-templates select="lineafactura"/>
            
            </table>
          <p></p>
          </body>
      </html>    
  </xsl:template>
   
  
   <xsl:template match="lineafactura">
      <tr> <td class="tddos"> <xsl:value-of select="codigo"/> </td><td class="tddos"> <xsl:value-of select="detalle"/> </td><td class="tddos"> <xsl:value-of select="cantidad"/> </td><td class="tddos"> <xsl:value-of select="precio"/> </td><td class="tddos"> <xsl:value-of select="subtotal"/> </td>
     </tr>  
  </xsl:template> 
  
</xsl:stylesheet>