<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:java="http://xml.apache.org/xslt/java" exclude-result-prefixes="java"
                xmlns:i18n="xalan://nl.ibanx.xsl.Internationalisation">

    <xsl:param name="lang" select="'nl'"/>

    <xsl:template match="/">
        <fo:root>
            <xsl:call-template name="page-size-a4-landscape"/>
            <fo:page-sequence master-reference="basic">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block-container xsl:use-attribute-sets="logo">
                        <fo:block>
                            <!--<fo:external-graphic src='url("tra/tra-logo.png")' />-->
                        </fo:block>
                    </fo:block-container>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block-container>
                        <xsl:apply-templates select="jsa"/>
                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template name="page-size-a4-landscape">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="basic" page-height="210mm" page-width="297mm" margin-top="1cm"
                                   margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
                <fo:region-body margin-top=".5cm"/>
                <fo:region-before extent="1cm"/>
                <fo:region-after extent="1.5cm"/>
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:template>

    <xsl:template match="jsa">
        <fo:block xsl:use-attribute-sets="h1">
            <xsl:value-of select="i18n:get($lang, 'tra', 'objectName')"/>
            <xsl:value-of select="number"/>
        </fo:block>
        <fo:block xsl:use-attribute-sets="h2">
            <xsl:value-of select="i18n:get($lang, 'tra', 'LABEL_SECTION_PROPERTIES')"/>
        </fo:block>
        <xsl:call-template name="properties"/>
        <fo:block xsl:use-attribute-sets="h2">
            <xsl:value-of select="i18n:get($lang, 'tra', 'LABEL_SECTION_TRATASKSTEPS')"/>
        </fo:block>
        <xsl:call-template name="step-hazard-measure"/>
        <xsl:apply-templates select="step"/>
        <fo:block xsl:use-attribute-sets="h2">
            <xsl:value-of select="i18n:get($lang, 'tra', 'LABEL_SECTION_SIGNATURES')"/>
        </fo:block>
        <xsl:apply-templates select="signature"/>
    </xsl:template>

    <xsl:template name="properties">
        <fo:table xsl:use-attribute-sets="properties" table-layout="fixed" width="100%">
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="30%"/>
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="30%"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="geoLevelThree/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="geoLevelThree/@value"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="number/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="number/@value"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="tag/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="tag/@value"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="status/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="status/@value"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="workDescription/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="workDescription/@value"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="permitNumber/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="permitNumber/@value"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="author/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="author/@value"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="date/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="i18n:reformatDateMedium(string(date/@value))"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="holder/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="holder/@value"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="producers/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="producers/@value"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="remarks/@name"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:inline>
                                <xsl:value-of select="remarks/@value"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template name="step-hazard-measure">
        <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="24%"/>
            <fo:table-column column-width="56%"/>
            <fo:table-header font-weight="bold">
                <fo:table-cell>
                    <fo:block>
                        <xsl:value-of select="i18n:get($lang, 'tra', 'traTaskStep')"/>
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block>
                        <xsl:value-of select="i18n:get($lang, 'tra', 'traRisk')"/>
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block>
                        <xsl:value-of select="i18n:get($lang, 'tra', 'traMeasure')"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-header>
            <fo:table-body>
                <fo:table-cell>
                    <fo:block></fo:block>
                </fo:table-cell>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template match="step">
        <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="20%"/>
            <fo:table-column column-width="80%"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block xsl:use-attribute-sets="border">
                            <fo:inline>
                                <xsl:value-of select="position()"/>
                                <xsl:text>&nbsp;</xsl:text>
                                <xsl:value-of select="title"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:apply-templates select="hazard"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template match="hazard">
        <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="30%"/>
            <fo:table-column column-width="70%"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block xsl:use-attribute-sets="border">
                            <fo:inline>
                                <xsl:value-of select="count(../preceding-sibling::step) + 1"/>
                                <xsl:text>.</xsl:text>
                                <xsl:value-of select="position()"/>
                                <xsl:text>&nbsp;</xsl:text>
                                <xsl:value-of select="title"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:apply-templates select="measure"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template match="measure">
        <fo:table table-layout="fixed" width="100%">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block xsl:use-attribute-sets="border">
                            <fo:inline>
                                <xsl:value-of select="count(../..//preceding-sibling::step) + 1"/>
                                <xsl:text>.</xsl:text>
                                <xsl:value-of select="count(../preceding-sibling::hazard) + 1"/>
                                <xsl:text>.</xsl:text>
                                <xsl:value-of select="position()"/>
                                <xsl:text>&nbsp;</xsl:text>
                                <xsl:value-of select="title"/>
                            </fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>

    <xsl:template match="signature">
        <fo:block xsl:use-attribute-sets="border">
            <xsl:value-of select="i18n:get($lang, 'tra', 'traSignature')"/>
            &nbsp;
            <fo:inline xsl:use-attribute-sets="em">
                <xsl:value-of select="principal"/>
            </fo:inline>
            &nbsp;
            <xsl:value-of select="i18n:get($lang, 'tra', 'traSignedOn')"/>
            &nbsp;
            <fo:inline xsl:use-attribute-sets="em">
                <xsl:value-of select="i18n:reformatDateMedium(date)"/>
            </fo:inline>
        </fo:block>
    </xsl:template>

    <xsl:attribute-set name="h1">
        <xsl:attribute name="font-size">16pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="margin-bottom">1em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="h2">
        <xsl:attribute name="font-size">14pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="margin-top">1em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="em">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="logo">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">85%</xsl:attribute>
        <xsl:attribute name="top">0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="properties">
        <xsl:attribute name="margin-bottom">1em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="td">
        <xsl:attribute name="margin-top">2pt</xsl:attribute>
        <xsl:attribute name="margin-bottom">2pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="border">
        <xsl:attribute name="border">thick solid black</xsl:attribute>
        <xsl:attribute name="margin">2pt</xsl:attribute>
        <xsl:attribute name="padding">2pt</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>