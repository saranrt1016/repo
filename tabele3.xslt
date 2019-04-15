<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="/">
    <html>
      <body>
        <p>Osobe cije prezime pocinje sa M i kompanije ciji je naziv preko 6 karaktera: </p>
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
    <xsl:if test="starts-with(PunoIme/Prezime, 'M')">
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
    <xsl:if test="string-length(Naziv)>6">
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
