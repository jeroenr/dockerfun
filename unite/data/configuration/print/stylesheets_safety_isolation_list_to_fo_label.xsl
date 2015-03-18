<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [<!ENTITY nbsp "&#160;">]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:java="http://xml.apache.org/xslt/java" exclude-result-prefixes="java"
                xmlns:i18n="xalan://nl.ibanx.xsl.Internationalisation">

    <xsl:import href="stylesheets_page_size.xsl"/>
    <xsl:import href="stylesheets_loto_styles.xsl"/>
    <xsl:import href="stylesheets_artwork.xsl"/>

    <xsl:param name="lang" select="'nl'"/>

    <xsl:template match="/linked-hash-map/entry/isolationList">
        <fo:root>
            <xsl:call-template name="page-size-labels"/>

            <!-- page contents-->
            <fo:page-sequence master-reference="basic">
                <!-- body -->
                <fo:flow flow-name="xsl-region-body">
                    <fo:block-container>
                        <xsl:call-template name="isolationPoints"/>
                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template name="isolationPoints">
        <xsl:apply-templates select="/linked-hash-map/entry/isolationPoint" mode="render"/>
    </xsl:template>

    <xsl:template match="isolationPoint" mode="render">
        <xsl:call-template name="label"/>
    </xsl:template>

    <xsl:template name="label">
        <xsl:call-template name="single-label"/>
    </xsl:template>

    <xsl:template name="single-label">

        <fo:block xsl:use-attribute-sets="label-footer h1" margin-top=".3in">
            <xsl:variable name="state"
                          select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='isolatedState']/../value"/>
            <xsl:call-template name="translatePicklistValue">
                <xsl:with-param name="picklistName">isolatedState</xsl:with-param>
                <xsl:with-param name="valueForLocalization">
                    <xsl:value-of select="$state"/>
                </xsl:with-param>
                <xsl:with-param name="lang">
                    <xsl:value-of select="$lang"/>
                </xsl:with-param>
            </xsl:call-template>
        </fo:block>

        <fo:block height="1.5in" margin-left=".3in">
            <fo:table table-layout="fixed" width="100%">
                <fo:table-column column-width="40%"/>
                <fo:table-column column-width="60%"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:value-of select="/linked-hash-map/entry/isolationList/number"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:value-of select="substring(tag, 0, 15)"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell xsl:use-attribute-sets="bold">
                            <fo:block>
                                <xsl:value-of select="substring(pointNumber,0, 15)"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:value-of
                                        select="i18n:formatDateMedium(java:java.util.Date.new())"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell xsl:use-attribute-sets="bold" number-columns-spanned="2">
                            <fo:block>
                                <xsl:value-of select="substring(name,0, 35)"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="2">
                            <fo:block>
                                <xsl:call-template name="translatePicklistValue">
                                    <xsl:with-param name="picklistName">lotoIsolationMethod</xsl:with-param>
                                    <xsl:with-param name="valueForLocalization">
                                        <xsl:value-of
                                                select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='lotoMethod']/../value"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="lang">
                                        <xsl:value-of select="$lang"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row height=".2in">
                        <fo:table-cell>
                            <fo:block>
                                &nbsp;
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>