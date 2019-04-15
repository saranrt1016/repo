<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:template match="/">
      <html>
        <body>
          <p>Kompaije i osobe sa stalnim adresama: </p>
          <table border="1">
            <tr bgcolor="#42f48c">
              <th>Ime/Naziv</th>
              <th>Srednje ime</th>
              <th>Prezime</th>
              <th>Datum rodjenja</th>
              <th>Adresa</th>
              <th>Telefon</th>
              <th>Email</th>
            </tr>
            <xsl:apply-templates />
          </table>
        </body>
      </html>      
    </xsl:template>

  <xsl:template match="Osoba">
    <xsl:if test="(((Adresa/@tip)='stalna') and ((DatumRodjenja/Godina)>1990)  and ((DatumRodjenja/Godina) &lt; 2005)) ">
      <tr>
        <td>
          <xsl:value-of select="PunoIme/Ime"/>
        </td>
        <td>
          <xsl:value-of select="PunoIme/SrednjeIme"/>
        </td>
        <td>
          <xsl:value-of select="PunoIme/Prezime"/>
        </td>
        <td>
          <xsl:value-of select="DatumRodjenja"/>
        </td>
        <td>
          <xsl:value-of select="Adresa"/>
        </td>
        <td>
          <xsl:value-of select="Telefon"/>
        </td>
        <td>
          <xsl:value-of select="Email"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Kompanija">
    <xsl:if test="(Adresa/@tip)='stalna'">
      <tr>
        <td>
          <xsl:value-of select="Naziv"/>
        </td>
        <td>
          -
        </td>
        <td>
          -
        </td>
        <td>
          -
        </td>
        <td>
          <xsl:value-of select="Adresa"/>
        </td>
        <td>
          <xsl:value-of select="Telefon"/>
        </td>
        <td>
          <xsl:value-of select="Email"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
