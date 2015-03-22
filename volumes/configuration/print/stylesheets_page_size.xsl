<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- page setup -->
    <xsl:template name="page-size-a4-portrait">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="basic" page-height="297mm" page-width="210mm" margin-top="1cm"
                                   margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
                <fo:region-body margin-top=".5cm"/>
                <fo:region-before extent="1.5cm"/>
                <fo:region-after extent="1.5cm"/>
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:template>

    <xsl:template name="page-size-a4-landscape">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="basic" page-height="210mm" page-width="297mm" margin-top="1cm"
                                   margin-bottom="1cm" margin-left="1cm" margin-right="1cm">
                <fo:region-body margin-bottom=".4cm"/>
                <fo:region-after extent=".4cm"/>
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:template>

    <xsl:template name="page-size-labels">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="basic" page-height="2in" page-width="4in" margin-top="0"
                                   margin-bottom="0" margin-left="0" margin-right="0">
                <fo:region-body/>
                <fo:region-before extent="0"/>
                <fo:region-after extent="0"/>
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:template>

</xsl:stylesheet>