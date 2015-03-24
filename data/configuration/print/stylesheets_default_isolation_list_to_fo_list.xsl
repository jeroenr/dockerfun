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
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <xsl:call-template name="page-size-a4-landscape"/>

            <!-- page contents -->
            <fo:page-sequence master-reference="basic">

                <!-- footer -->
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block>
                        <fo:inline>
                            <xsl:value-of select="i18n:get($lang, 'loto', 'historyTimestamp')"/>
                            &nbsp;
                            <xsl:value-of
                                    select="i18n:formatDateTimeMedium(java:java.util.Date.new())"/>
                            &nbsp;
                        </fo:inline>
                        <fo:inline>
                            <xsl:value-of select="i18n:get($lang, 'IsolationList', 'objectName')"/>
                            &nbsp;
                            <xsl:value-of select="number"/>
                            &nbsp;
                        </fo:inline>
                        <fo:inline>
                            <xsl:value-of select="i18n:get($lang, 'default', 'page')"/>&nbsp;
                            <fo:page-number/>
                            &nbsp; / &nbsp;
                            <fo:page-number-citation ref-id="last-page"/>
                        </fo:inline>
                    </fo:block>
                </fo:static-content>
                <!-- body -->
                <fo:flow flow-name="xsl-region-body">
                    <fo:block-container>

                        <fo:block-container xsl:use-attribute-sets="logo">
                            <fo:block>
                                <fo:inline vertical-align="top">
                                    <fo:external-graphic src='url("stylesheets_logo.png")'/>
                                </fo:inline>
                            </fo:block>
                        </fo:block-container>

                        <fo:block-container xsl:use-attribute-sets="normal-right">
                            <fo:block>
                                &nbsp; <!-- spacer -->
                            </fo:block>
                        </fo:block-container>

                        <fo:block xsl:use-attribute-sets="h1">
                            <xsl:value-of select="i18n:get($lang, 'IsolationList', 'objectName')"/>&nbsp;
                            <xsl:value-of select="number"/>&nbsp;
                            <xsl:value-of select="tag"/>
                        </fo:block>
                        <fo:table xsl:use-attribute-sets="detail" table-layout="fixed" width="100%">
                            <fo:table-column column-width="10%"/>
                            <fo:table-column column-width="40%"/>
                            <fo:table-column column-width="10%"/>
                            <fo:table-column column-width="40%"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'loto', 'workOrderNr')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of select="workOrderNr"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'IsolationList', 'lockboxNr')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="allAbstractAttributes//ibanx.loto.IsolationListAbstractAttribute/name[text()='lockboxNr']/../value"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'loto', 'funcLevelTwo')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of select="funcLevelTwo"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="i18n:get($lang, 'IsolationList', 'lockNrProduction')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="allAbstractAttributes//ibanx.loto.IsolationListAbstractAttribute/name[text()='lockNrProduction']/../value"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'loto', 'funcLevelThree')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of select="funcLevelThree"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'IsolationList', 'lockNrEI')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="allAbstractAttributes//ibanx.loto.IsolationListAbstractAttribute/name[text()='lockNrEI']/../value"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'loto', 'tag')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of select="tag"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="i18n:get($lang, 'IsolationList', 'lockNrMechanical')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="allAbstractAttributes//ibanx.loto.IsolationListAbstractAttribute/name[text()='lockNrMechanical']/../value"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'IsolationList', 'remarks')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th" number-columns-spanned="3">
                                        <fo:block>
                                            <xsl:value-of select="remarks"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell xsl:use-attribute-sets="normal-td">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'loto', 'documentReference')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell xsl:use-attribute-sets="normal-th" number-columns-spanned="3">
                                        <fo:block>
                                            <xsl:value-of
                                                    select="allAbstractAttributes//ibanx.loto.IsolationListAbstractAttribute/name[text()='documentReference']/../value"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>

                        <xsl:if test="string-length(/linked-hash-map/entry/isolationActivity[name='ISOLATION_ACTIVITY'])!=0">
                            <fo:block xsl:use-attribute-sets="h2">
                                <xsl:value-of select="i18n:get($lang, 'loto', 'isolation')"/>
                            </fo:block>
                            <xsl:call-template name="isolationActivities">
                                <xsl:with-param name="bot" select="'ISOLATION_ACTIVITY'"/>
                            </xsl:call-template>
                        </xsl:if>
                        <xsl:if test="string-length(/linked-hash-map/entry/isolationActivity[name='DE_ISOLATION_ACTIVITY'])!=0">
                            <fo:block xsl:use-attribute-sets="h2">
                                <xsl:value-of select="i18n:get($lang, 'loto', 'deisolation')"/>
                            </fo:block>
                            <xsl:call-template name="isolationActivities">
                                <xsl:with-param name="bot" select="'DE_ISOLATION_ACTIVITY'"/>
                            </xsl:call-template>
                        </xsl:if>

                        <xsl:if test="string-length(/linked-hash-map/entry/isolationPoint[number='MECHANICAL_ISOLATION_POINT'])!=0">
                            <fo:block xsl:use-attribute-sets="h2">
                                <xsl:value-of select="i18n:get($lang, 'default', 'MECHANICAL_ISOLATION_POINT')"/>
                            </fo:block>
                            <xsl:call-template name="mechanicalIsolationPoints">
                                <xsl:with-param name="pointType" select="'MECHANICAL_ISOLATION_POINT'"/>
                            </xsl:call-template>
                        </xsl:if>
                        <xsl:if test="string-length(/linked-hash-map/entry/isolationPoint[number='EI_ISOLATION_POINT'])!=0">
                            <fo:block xsl:use-attribute-sets="h2">
                                <xsl:value-of select="i18n:get($lang, 'default', 'EI_ISOLATION_POINT')"/>
                            </fo:block>
                            <xsl:call-template name="electricalAndSafetyPoint">
                                <xsl:with-param name="pointType" select="'EI_ISOLATION_POINT'"/>
                            </xsl:call-template>
                        </xsl:if>
                        <xsl:if test="string-length(/linked-hash-map/entry/isolationPoint[number='SAFETY_ISOLATION_POINT'])!=0">
                            <fo:block xsl:use-attribute-sets="h2">
                                <xsl:value-of select="i18n:get($lang, 'default', 'SAFETY_ISOLATION_POINT')"/>
                            </fo:block>
                            <xsl:call-template name="electricalAndSafetyPoint">
                                <xsl:with-param name="pointType" select="'SAFETY_ISOLATION_POINT'"/>
                            </xsl:call-template>
                        </xsl:if>

                    </fo:block-container>
                    <fo:block id="last-page"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template name="isolationActivities">
        <xsl:param name="bot"/>
        <fo:block>
            <fo:table xsl:use-attribute-sets="detail" table-layout="fixed" width="100%">
                <fo:table-column column-width="4%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="17%"/>
                <fo:table-column column-width="9%"/>
                <fo:table-column column-width="15%"/>
                <fo:table-column column-width="13%"/>
                <fo:table-column column-width="11%"/>
                <fo:table-column column-width="6%"/>
                <fo:table-column column-width="15%"/>

                <fo:table-header>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>#</fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationActivity', 'discipline')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'default', 'title')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'subType')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationActivity', 'pointNumber')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'pointName')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of
                                    select="i18n:get($lang, 'IsolationActivity', concat($bot, '_', 'pointState'))"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationActivity', 'otherListPoint')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="50%"/>
                                <fo:table-column column-width="50%"/>
                                <fo:table-header>
                                    <fo:table-cell number-columns-spanned="2">
                                        <fo:block>
                                            <xsl:value-of select="i18n:get($lang, 'loto', 'executed')"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-header>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell>
                                            <fo:block>
                                                <xsl:value-of select="i18n:get($lang, 'default', 'date')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block>
                                                <xsl:value-of select="i18n:get($lang, 'default', 'signInformation')"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-header>

                <fo:table-body>
                    <xsl:apply-templates select="/linked-hash-map/entry/isolationActivity[name=$bot]" mode="render"/>
                </fo:table-body>

            </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template name="electricalAndSafetyPoint">
        <xsl:param name="pointType"/>
        <fo:block>
            <fo:table xsl:use-attribute-sets="detail" table-layout="fixed" width="100%">
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>
                <fo:table-column column-width="10%"/>

                <fo:table-header>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'discipline')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'subType')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'pointNumber')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'name')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'isolatedState')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'operationalState')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'tryOut')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'otherListPoint')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'insulationPresent')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'scaffoldingReq')"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-header>
                <fo:table-body>
                    <xsl:apply-templates select="/linked-hash-map/entry/isolationPoint[number=$pointType]"
                                         mode="electricalAndSafetyPointData"/>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template name="mechanicalIsolationPoints">
        <xsl:param name="pointType"/>
        <fo:block>
            <fo:table xsl:use-attribute-sets="detail" table-layout="fixed" width="100%">
                <fo:table-column column-width="7%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="9%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="8%"/>
                <fo:table-column column-width="7%"/>
                <fo:table-column column-width="7%"/>
                <fo:table-column column-width="7%"/>
                <fo:table-column column-width="7%"/>

                <fo:table-header>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'discipline')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'subType')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims" text-align="left">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'pointNumber')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'name')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'isolatedState')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'operationalState')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'tryOut')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'otherListPoint')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'insulationPresent')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'scaffoldingReq')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'diameter')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'pressureClass')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell xsl:use-attribute-sets="normal-th-claims">
                        <fo:block>
                            <xsl:value-of select="i18n:get($lang, 'IsolationPoint', 'gasketType')"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-header>
                <fo:table-body>
                    <xsl:apply-templates select="/linked-hash-map/entry/isolationPoint[number=$pointType]"
                                         mode="mechanicalPointData"/>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <xsl:template match="isolationActivity">
    </xsl:template>

    <xsl:template match="isolationActivity" mode="render">
        <xsl:call-template name="activity"/>
    </xsl:template>

    <xsl:template match="isolationPoint" mode="electricalAndSafetyPointData">
        <xsl:call-template name="electricalAndSafetyPointData"/>
    </xsl:template>

    <xsl:template match="isolationPoint" mode="mechanicalPointData">
        <xsl:call-template name="mechanicalPointData"/>
    </xsl:template>

    <xsl:template name="activity">
        <fo:table-row>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:value-of select="step"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoDiscipline</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationActivityAbstractAttribute/name[text()='discipline']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <xsl:if test="./*[text()='ISOLATION_ACTIVITY']">
                    <fo:block>
                        <xsl:call-template name="translatePicklistValue">
                            <xsl:with-param name="picklistName">lotoIsolationMethod</xsl:with-param>
                            <xsl:with-param name="valueForLocalization">
                                <xsl:value-of select="description"/>
                            </xsl:with-param>
                            <xsl:with-param name="lang">
                                <xsl:value-of select="$lang"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </fo:block>
                </xsl:if>
                <xsl:if test="./*[text()='DE_ISOLATION_ACTIVITY']">
                    <fo:block>
                        <xsl:call-template name="translatePicklistValue">
                            <xsl:with-param name="picklistName">lotoDeIsolationMethod</xsl:with-param>
                            <xsl:with-param name="valueForLocalization">
                                <xsl:value-of select="description"/>
                            </xsl:with-param>
                            <xsl:with-param name="lang">
                                <xsl:value-of select="$lang"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </fo:block>
                </xsl:if>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoSubType</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationActivityAbstractAttribute/name[text()='subType']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:value-of
                            select="allAbstractAttributes//ibanx.loto.IsolationActivityAbstractAttribute/name[text()='pointNumber']/../value"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:variable name="activityDescription"
                                  select="allAbstractAttributes//ibanx.loto.IsolationActivityAbstractAttribute/name[text()='pointName']/../value"/>
                    <xsl:call-template name="textWrap">
                        <xsl:with-param name="wrapIndex">
                            <xsl:value-of select="25"/>
                        </xsl:with-param>
                        <xsl:with-param name="textForWrapping">
                            <xsl:value-of select="$activityDescription"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">isolatedState</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of select="allAbstractAttributes//ibanx.loto.IsolationActivityAbstractAttribute/name[text()='pointState']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:value-of
                            select="allAbstractAttributes//ibanx.loto.IsolationActivityAbstractAttribute/name[text()='isolationListNumbers']/../value"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="50%"/>
                        <fo:table-column column-width="50%"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell border-right-style="solid">
                                    <fo:block>
                                        &nbsp;
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>
                                        &nbsp;
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

    <xsl:template name="electricalAndSafetyPointData">
        <fo:table-row>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoDiscipline</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='discipline']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoSubType</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='subType']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="textWrap">
                        <xsl:with-param name="wrapIndex">
                            <xsl:value-of select="17"/>
                        </xsl:with-param>
                        <xsl:with-param name="textForWrapping">
                            <xsl:value-of select="pointNumber"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="textWrap">
                        <xsl:with-param name="wrapIndex">
                            <xsl:value-of select="17"/>
                        </xsl:with-param>
                        <xsl:with-param name="textForWrapping">
                            <xsl:value-of select="name"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">isolatedState</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='isolatedState']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">operationalState</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of select="operationalState"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:variable name="tryOut"
                                  select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='tryOut']/../value"/>
                    <xsl:variable name="localizedValue" select="i18n:get($lang, 'IsolationPoint', $tryOut)"/>
                    <xsl:choose>
                        <xsl:when test="starts-with($localizedValue, '[[')">
                            <xsl:value-of select="$tryOut"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$localizedValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:value-of
                            select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='isolationListNumbers']/../value"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:variable name="insulationPresent"
                                  select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='insulationPresent']/../value"/>
                    <xsl:variable name="localizedValue" select="i18n:get($lang, 'IsolationPoint', $insulationPresent)"/>
                    <xsl:choose>
                        <xsl:when test="starts-with($localizedValue, '[[')">
                            <xsl:value-of select="$insulationPresent"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$localizedValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:variable name="scaffoldingReq"
                                  select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='scaffoldingReq']/../value"/>
                    <xsl:variable name="localizedValue" select="i18n:get($lang, 'IsolationPoint', $scaffoldingReq)"/>
                    <xsl:choose>
                        <xsl:when test="starts-with($localizedValue, '[[')">
                            <xsl:value-of select="$scaffoldingReq"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$localizedValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

    <xsl:template name="mechanicalPointData">
        <fo:table-row>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoDiscipline</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='discipline']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoSubType</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='subType']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="textWrap">
                        <xsl:with-param name="wrapIndex">
                            <xsl:value-of select="11"/>
                        </xsl:with-param>
                        <xsl:with-param name="textForWrapping">
                            <xsl:value-of select="pointNumber"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:call-template name="textWrap">
                        <xsl:with-param name="wrapIndex">
                            <xsl:value-of select="17"/>
                        </xsl:with-param>
                        <xsl:with-param name="textForWrapping">
                            <xsl:value-of select="name"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">isolatedState</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='isolatedState']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">operationalState</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of select="operationalState"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center" >
                <fo:block>
                    <xsl:variable name="tryOut"
                                  select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='tryOut']/../value"/>
                    <xsl:variable name="localizedValue" select="i18n:get($lang, 'IsolationPoint', $tryOut)"/>
                    <xsl:choose>
                        <xsl:when test="starts-with($localizedValue, '[[')">
                            <xsl:value-of select="$tryOut"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$localizedValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point">
                <fo:block>
                    <xsl:value-of
                            select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='isolationListNumbers']/../value"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:variable name="insulationPresent"
                                  select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='insulationPresent']/../value"/>
                    <xsl:variable name="localizedValue" select="i18n:get($lang, 'IsolationPoint', $insulationPresent)"/>
                    <xsl:choose>
                        <xsl:when test="starts-with($localizedValue, '[[')">
                            <xsl:value-of select="$insulationPresent"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$localizedValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:variable name="scaffoldingReq"
                                  select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='scaffoldingReq']/../value"/>
                    <xsl:variable name="localizedValue" select="i18n:get($lang, 'IsolationPoint', $scaffoldingReq)"/>
                    <xsl:choose>
                        <xsl:when test="starts-with($localizedValue, '[[')">
                            <xsl:value-of select="$scaffoldingReq"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$localizedValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoDiameter</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='diameter']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoPressureClass</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='pressureClass']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell xsl:use-attribute-sets="normal-td-point" text-align="center">
                <fo:block>
                    <xsl:call-template name="translatePicklistValue">
                        <xsl:with-param name="picklistName">lotoGasketType</xsl:with-param>
                        <xsl:with-param name="valueForLocalization">
                            <xsl:value-of
                                    select="allAbstractAttributes//ibanx.loto.IsolationPointAbstractAttribute/name[text()='gasketType']/../value"/>
                        </xsl:with-param>
                        <xsl:with-param name="lang">
                            <xsl:value-of select="$lang"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

</xsl:stylesheet>
