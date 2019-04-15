<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:template match="/">
      <Adresar>
            <xsl:apply-templates />
      </Adresar>
    </xsl:template>

  <xsl:template match="Osoba">
    <Osoba>
      <Adresa>
        <xsl:attribute name="ulica">
          <xsl:value-of select="Adresa/Ulica"/>
        </xsl:attribute>
        <xsl:attribute name="broj">
          <xsl:value-of select="Adresa/Broj"/>
        </xsl:attribute>
        <xsl:attribute name="grad">
          <xsl:value-of select="Adresa/Grad"/>
        </xsl:attribute>
      </Adresa>
    </Osoba>
  </xsl:template>

  <xsl:template match="Kompanija">
    <Kompanija>
      <Adresa>
        <xsl:attribute name="ulica">
          <xsl:value-of select="Adresa/Ulica"/>
        </xsl:attribute>
        <xsl:attribute name="broj">
          <xsl:value-of select="Adresa/Broj"/>
        </xsl:attribute>
        <xsl:attribute name="grad">
          <xsl:value-of select="Adresa/Grad"/>
        </xsl:attribute>
      </Adresa>
    </Kompanija>
  </xsl:template>
</xsl:stylesheet>
