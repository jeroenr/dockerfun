<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:java="http://xml.apache.org/xslt/java" exclude-result-prefixes="java"
                xmlns:i18n="xalan://nl.ibanx.xsl.Internationalisation">

    <!--
                    http://www.carto.net/papers/svg/gui/checkbox_and_radiobutton/index.svg
            -->

    <!--
                    http://www.alanwood.net/unicode/miscellaneous_symbols.html for Unicode
                    dingbats
            -->

    <!--  (*)  or  ( )  U+26AB U+26AA -->
    <xsl:template name="radiobox">
        <xsl:param name="checked"/>
        <xsl:choose>
            <xsl:when test="$checked='true'">
                <fo:external-graphic src="url('stylesheets_radioon.svg')"/>
            </xsl:when>
            <xsl:otherwise>
                <fo:external-graphic src="url('stylesheets_radiooff.svg')"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="textWrap">
        <xsl:param name="wrapIndex"/>
        <xsl:param name="textForWrapping"/>
        <xsl:choose>
            <xsl:when test="string-length($textForWrapping) > 0 and string-length($textForWrapping)>$wrapIndex">
                <xsl:value-of
                        select="concat(substring($textForWrapping,1,$wrapIndex), ' ', substring($textForWrapping,($wrapIndex+1),string-length($textForWrapping)))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$textForWrapping"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="translatePicklistValue">
        <xsl:param name="picklistName"/>
        <xsl:param name="valueForLocalization"/>
        <xsl:param name="lang"/>
        <xsl:variable name="localizedValue"
                      select="i18n:get($lang, 'ibanx.object.ValueItemIF', concat($picklistName, '.', $valueForLocalization))"/>
        <xsl:choose>
            <xsl:when test="starts-with($localizedValue, '[[')">
                <xsl:value-of select="$valueForLocalization"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$localizedValue"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>