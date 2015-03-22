<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:attribute-set name="h1">
        <xsl:attribute name="font-size">16pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="margin-bottom">.5em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="h2">
        <xsl:attribute name="margin-top">.3em</xsl:attribute>
        <xsl:attribute name="font-size">13pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="margin-bottom">.3em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="header">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="master">
        <xsl:attribute name="margin-bottom">1em</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="detail">
        <xsl:attribute name="margin-bottom">1em</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="normal-td-point">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="padding">2pt</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="normal-td">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="padding">2pt</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="normal-right">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="padding">2pt</xsl:attribute>
        <xsl:attribute name="text-align">right</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="normal-th">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">9pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding">2pt</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="normal-th-claims">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">9pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding">6pt</xsl:attribute>
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="border">1pt solid black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="small">
        <xsl:attribute name="font-family">sans-serif</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="small-td">
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="padding">2pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="logo">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">84%</xsl:attribute>
        <xsl:attribute name="top">.5cm</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="th">
        <xsl:attribute name="text-align">right</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-container">
        <xsl:attribute name="height">33.3%</xsl:attribute>
        <xsl:attribute name="width">100%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label">
        <xsl:attribute name="height">100%</xsl:attribute>
        <xsl:attribute name="width">100%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-right">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">50%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="single-line">
        <xsl:attribute name="height">1.5em</xsl:attribute>
        <xsl:attribute name="margin">.3em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="double-line">
        <xsl:attribute name="height">2em</xsl:attribute>
        <xsl:attribute name="margin">.3em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-1nd">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">0</xsl:attribute>
        <xsl:attribute name="width">54%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-2nd">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">50%</xsl:attribute>
        <xsl:attribute name="width">54%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-1rd">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">0</xsl:attribute>
        <xsl:attribute name="width">32%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-2rd">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">33%</xsl:attribute>
        <xsl:attribute name="width">32%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-3rd">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">66%</xsl:attribute>
        <xsl:attribute name="width">32%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-footer">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <!--<xsl:attribute name="top">1.5in</xsl:attribute>-->
        <xsl:attribute name="height">.5in</xsl:attribute>
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="label-logo">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <!--<xsl:attribute name="top">1.5in</xsl:attribute>-->
        <xsl:attribute name="height">.5in</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="red">
        <xsl:attribute name="background-color">#f00</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="green">
        <xsl:attribute name="background-color">#0f0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="yellow">
        <xsl:attribute name="background-color">#ff0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="bold">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>