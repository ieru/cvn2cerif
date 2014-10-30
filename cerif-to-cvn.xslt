<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:cerif="urn:xmlns:org:eurocris:cerif-1.5-1"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output
        method="xml"
        indent="yes"
        omit-xml-declaration="no"
        encoding="utf-8"/>
    
    <xsl:template match="/">
        
    <tns:CVN xsi:schemaLocation="http://cv.normalizado.org/cvn CVN.xsd" xmlns:tns="http://cv.normalizado.org/cvn" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <xsl:for-each select="//cerif:cfPers">
            <Agent>
                <Identification>
                    <PersonalIdentification>
                        <GivenName code="000.010.000.020" multiplicity="false" obligatory="true">
                            <Item><xsl:value-of select="cerif:cfPersName/cerif:cfFirstNames"/></Item>
                        </GivenName>
                        <FirstFamilyName code="000.010.000.010" obligatory="true">
                            <Item><xsl:value-of select="substring-before(cerif:cfPersName/cerif:cfFamilyNames, ' ')"/></Item>
                        </FirstFamilyName>
                        <SecondFamilyName code="000.010.000.010" obligatory="true">
                            <Item><xsl:value-of select="substring-after(cerif:cfPersName/cerif:cfFamilyNames, ' ')"/></Item>
                        </SecondFamilyName>
                        <BirthDate code="000.010.000.050" obligatory="true">
                            <Item><xsl:value-of select="substring-before(cerif:cfBirthDate, 'T')"/></Item>
                        </BirthDate>
                        <BirthCountry code="000.010.000.060" obligatory="true">
                            <Item>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AF'"><xsl:value-of select="'004'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AX'"><xsl:value-of select="'248'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AL'"><xsl:value-of select="'008'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='DE'"><xsl:value-of select="'276'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AD'"><xsl:value-of select="'020'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AO'"><xsl:value-of select="'024'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AI'"><xsl:value-of select="'660'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AQ'"><xsl:value-of select="'010'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AG'"><xsl:value-of select="'028'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SA'"><xsl:value-of select="'682'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='DZ'"><xsl:value-of select="'012'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AR'"><xsl:value-of select="'032'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AM'"><xsl:value-of select="'051'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AW'"><xsl:value-of select="'533'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AU'"><xsl:value-of select="'036'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AT'"><xsl:value-of select="'040'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AZ'"><xsl:value-of select="'031'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BS'"><xsl:value-of select="'044'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BD'"><xsl:value-of select="'050'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BB'"><xsl:value-of select="'052'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BH'"><xsl:value-of select="'048'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BE'"><xsl:value-of select="'056'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BZ'"><xsl:value-of select="'084'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BJ'"><xsl:value-of select="'204'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BM'"><xsl:value-of select="'060'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BY'"><xsl:value-of select="'112'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MM'"><xsl:value-of select="'104'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BO'"><xsl:value-of select="'068'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BA'"><xsl:value-of select="'070'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BW'"><xsl:value-of select="'072'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BR'"><xsl:value-of select="'076'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BN'"><xsl:value-of select="'096'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BG'"><xsl:value-of select="'100'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BF'"><xsl:value-of select="'854'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BI'"><xsl:value-of select="'108'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BT'"><xsl:value-of select="'064'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CV'"><xsl:value-of select="'132'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KH'"><xsl:value-of select="'116'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CM'"><xsl:value-of select="'120'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CA'"><xsl:value-of select="'124'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='QA'"><xsl:value-of select="'634'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BQ'"><xsl:value-of select="'535'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TD'"><xsl:value-of select="'148'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AF'"><xsl:value-of select="'004'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CL'"><xsl:value-of select="'152'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CN'"><xsl:value-of select="'156'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CY'"><xsl:value-of select="'196'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CO'"><xsl:value-of select="'170'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KM'"><xsl:value-of select="'174'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KP'"><xsl:value-of select="'408'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KR'"><xsl:value-of select="'410'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CI'"><xsl:value-of select="'384'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CR'"><xsl:value-of select="'188'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='HR'"><xsl:value-of select="'191'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CU'"><xsl:value-of select="'192'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CW'"><xsl:value-of select="'531'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='DL'"><xsl:value-of select="'208'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='DM'"><xsl:value-of select="'212'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='EC'"><xsl:value-of select="'218'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='EG'"><xsl:value-of select="'818'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SV'"><xsl:value-of select="'222'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AE'"><xsl:value-of select="'784'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ER'"><xsl:value-of select="'232'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SK'"><xsl:value-of select="'703'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SI'"><xsl:value-of select="'705'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ES'"><xsl:value-of select="'724'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='US'"><xsl:value-of select="'840'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='EE'"><xsl:value-of select="'233'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ET'"><xsl:value-of select="'231'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PH'"><xsl:value-of select="'608'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='FI'"><xsl:value-of select="'246'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='FJ'"><xsl:value-of select="'242'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='FR'"><xsl:value-of select="'250'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GA'"><xsl:value-of select="'266'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GM'"><xsl:value-of select="'270'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GE'"><xsl:value-of select="'268'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GH'"><xsl:value-of select="'288'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GI'"><xsl:value-of select="'292'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GD'"><xsl:value-of select="'308'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GR'"><xsl:value-of select="'300'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GL'"><xsl:value-of select="'304'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GP'"><xsl:value-of select="'312'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GU'"><xsl:value-of select="'316'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GT'"><xsl:value-of select="'320'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GF'"><xsl:value-of select="'254'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GG'"><xsl:value-of select="'381'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GN'"><xsl:value-of select="'324'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GW'"><xsl:value-of select="'624'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GQ'"><xsl:value-of select="'226'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GY'"><xsl:value-of select="'328'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='HT'"><xsl:value-of select="'332'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='HN'"><xsl:value-of select="'340'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='HK'"><xsl:value-of select="'344'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='HU'"><xsl:value-of select="'348'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IN'"><xsl:value-of select="'356'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ID'"><xsl:value-of select="'360'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IQ'"><xsl:value-of select="'368'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IR'"><xsl:value-of select="'364'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IE'"><xsl:value-of select="'372'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BV'"><xsl:value-of select="'074'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IM'"><xsl:value-of select="'388'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CX'"><xsl:value-of select="'162'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NF'"><xsl:value-of select="'574'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IS'"><xsl:value-of select="'352'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KY'"><xsl:value-of select="'136'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CC'"><xsl:value-of select="'166'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CL'"><xsl:value-of select="'184'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='FO'"><xsl:value-of select="'234'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GS'"><xsl:value-of select="'239'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='HM'"><xsl:value-of select="'334'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='FK'"><xsl:value-of select="'238'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MP'"><xsl:value-of select="'580'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MH'"><xsl:value-of select="'584'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PN'"><xsl:value-of select="'612'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SB'"><xsl:value-of select="'090'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TC'"><xsl:value-of select="'796'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='UM'"><xsl:value-of select="'581'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VG'"><xsl:value-of select="'092'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VI'"><xsl:value-of select="'850'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IL'"><xsl:value-of select="'376'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IT'"><xsl:value-of select="'380'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='JM'"><xsl:value-of select="'388'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='JP'"><xsl:value-of select="'392'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='JE'"><xsl:value-of select="'382'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='JO'"><xsl:value-of select="'400'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KZ'"><xsl:value-of select="'398'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KE'"><xsl:value-of select="'404'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KG'"><xsl:value-of select="'417'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KI'"><xsl:value-of select="'296'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KW'"><xsl:value-of select="'414'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LA'"><xsl:value-of select="'418'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LS'"><xsl:value-of select="'426'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LV'"><xsl:value-of select="'428'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LB'"><xsl:value-of select="'422'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LR'"><xsl:value-of select="'430'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LY'"><xsl:value-of select="'434'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LI'"><xsl:value-of select="'438'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LT'"><xsl:value-of select="'440'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LU'"><xsl:value-of select="'442'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MO'"><xsl:value-of select="'446'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MG'"><xsl:value-of select="'450'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MY'"><xsl:value-of select="'458'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MW'"><xsl:value-of select="'454'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MV'"><xsl:value-of select="'462'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ML'"><xsl:value-of select="'466'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MT'"><xsl:value-of select="'470'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MA'"><xsl:value-of select="'504'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MQ'"><xsl:value-of select="'474'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MU'"><xsl:value-of select="'480'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MR'"><xsl:value-of select="'478'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MY'"><xsl:value-of select="'175'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MX'"><xsl:value-of select="'484'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='FM'"><xsl:value-of select="'503'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MD'"><xsl:value-of select="'498'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MC'"><xsl:value-of select="'492'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MN'"><xsl:value-of select="'496'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ME'"><xsl:value-of select="'499'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MS'"><xsl:value-of select="'500'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MZ'"><xsl:value-of select="'508'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NA'"><xsl:value-of select="'516'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NR'"><xsl:value-of select="'520'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NP'"><xsl:value-of select="'524'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NI'"><xsl:value-of select="'558'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NE'"><xsl:value-of select="'562'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NG'"><xsl:value-of select="'566'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NU'"><xsl:value-of select="'570'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NO'"><xsl:value-of select="'578'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NC'"><xsl:value-of select="'540'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NZ'"><xsl:value-of select="'554'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='OM'"><xsl:value-of select="'512'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='NL'"><xsl:value-of select="'528'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PK'"><xsl:value-of select="'586'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PW'"><xsl:value-of select="'585'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PS'"><xsl:value-of select="'276'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PA'"><xsl:value-of select="'591'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PG'"><xsl:value-of select="'598'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PY'"><xsl:value-of select="'600'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PE'"><xsl:value-of select="'604'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PF'"><xsl:value-of select="'258'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PL'"><xsl:value-of select="'626'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PT'"><xsl:value-of select="'620'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PR'"><xsl:value-of select="'630'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='GB'"><xsl:value-of select="'826'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CF'"><xsl:value-of select="'140'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CZ'"><xsl:value-of select="'203'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MK'"><xsl:value-of select="'807'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CG'"><xsl:value-of select="'178'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CD'"><xsl:value-of select="'180'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='DO'"><xsl:value-of select="'214'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='RE'"><xsl:value-of select="'638'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='RW'"><xsl:value-of select="'647'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='RO'"><xsl:value-of select="'642'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='RU'"><xsl:value-of select="'643'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='EH'"><xsl:value-of select="'732'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='WS'"><xsl:value-of select="'882'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='AS'"><xsl:value-of select="'016'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='BL'"><xsl:value-of select="'652'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='KN'"><xsl:value-of select="'659'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SM'"><xsl:value-of select="'674'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='MF'"><xsl:value-of select="'663'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='PM'"><xsl:value-of select="'666'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VC'"><xsl:value-of select="'670'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SH'"><xsl:value-of select="'654'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LC'"><xsl:value-of select="'662'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ST'"><xsl:value-of select="'678'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SN'"><xsl:value-of select="'686'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='RS'"><xsl:value-of select="'688'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SC'"><xsl:value-of select="'690'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SL'"><xsl:value-of select="'694'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SG'"><xsl:value-of select="'702'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SX'"><xsl:value-of select="'534'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SY'"><xsl:value-of select="'760'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SO'"><xsl:value-of select="'706'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='LK'"><xsl:value-of select="'144'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SZ'"><xsl:value-of select="'748'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ZA'"><xsl:value-of select="'710'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SD'"><xsl:value-of select="'729'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SS'"><xsl:value-of select="'728'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SE'"><xsl:value-of select="'752'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='CH'"><xsl:value-of select="'756'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SR'"><xsl:value-of select="'740'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='SJ'"><xsl:value-of select="'744'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TH'"><xsl:value-of select="'764'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TW'"><xsl:value-of select="'158'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TZ'"><xsl:value-of select="'834'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TJ'"><xsl:value-of select="'762'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='IO'"><xsl:value-of select="'086'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TF'"><xsl:value-of select="'260'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TL'"><xsl:value-of select="'626'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TG'"><xsl:value-of select="'768'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TK'"><xsl:value-of select="'772'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TO'"><xsl:value-of select="'776'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TT'"><xsl:value-of select="'780'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TN'"><xsl:value-of select="'788'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TM'"><xsl:value-of select="'795'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TR'"><xsl:value-of select="'792'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='TV'"><xsl:value-of select="'798'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='UA'"><xsl:value-of select="'804'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='UG'"><xsl:value-of select="'800'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='UY'"><xsl:value-of select="'858'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='UZ'"><xsl:value-of select="'860'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VU'"><xsl:value-of select="'548'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VA'"><xsl:value-of select="'336'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VE'"><xsl:value-of select="'862'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='VN'"><xsl:value-of select="'704'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='WF'"><xsl:value-of select="'876'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='YE'"><xsl:value-of select="'887'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='DJ'"><xsl:value-of select="'262'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ZM'"><xsl:value-of select="'894'"/></xsl:if>
                                <xsl:if test="cerif:cfPers_Country/cerif:cfCountryCode='ZW'"><xsl:value-of select="'716'"/></xsl:if>
                            </Item>
                        </BirthCountry>
                        <Gender code="000.010.000.030" obligatory="true">
                            <Item>
                                <xsl:if test="cerif:cfGender='m'"><xsl:value-of select="'000'"/></xsl:if>
                                <xsl:if test="cerif:cfGender='f'"><xsl:value-of select="'010'"/></xsl:if>
                            </Item>
                        </Gender>
                    </PersonalIdentification>
                </Identification>
                <Address>
                    <City code="000.010.000.170" obligatory="true">
                        <Item>
                            <xsl:value-of select="//cerif:cfPAddr/cerif:cfCityTown"/>
                        </Item>
                    </City>
                    <Streets code="000.010.000.140" obligatory="true">
                        <Item>
                            <xsl:value-of select="//cerif:cfPAddr/cerif:cfAddrline1"/>
                        </Item>
                    </Streets>
                    <OtherInformation code="000.010.000.150" obligatory="true">
                        <Item>
                            <xsl:value-of select="//cerif:cfPAddr/cerif:cfAddrline2"/><xsl:value-of select="//cerif:cfPAddr/cerif:cfAddrline3"/>
                        </Item>
                    </OtherInformation>
                    <PostalCode code="000.010.000.160" obligatory="true">
                        <Item>
                            <xsl:value-of select="//cerif:cfPAddr/cerif:cfPostCode"/>  
                        </Item>
                    </PostalCode>
                    
                    <!-- Añadir resto de tabla -->
                  
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Burgerland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Burgerland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Niederöstrreich'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Niederöstrreich'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Wien'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT13'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Wien'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kärnten'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kärnten'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Steiermark'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Steiermark'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Oberösterreich'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT31'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Oberösterreich'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Salzburg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT32'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Salzburg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Tirol'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Tirol'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Voralberg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'AT33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Voralberg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Brussels Hoofdstedelijk Gewest'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE10'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Brussels Hoofdstedelijk Gewest'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Antwerpen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Antwerpen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Limburg(B)'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Limburg(B)'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Oost-Vlaanderen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Oost-Vlaanderen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Vlaams-Brabant'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE24'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Vlaams-Brabant'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. West-Vlaanderen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE25'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. West-Vlaanderen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Brabant Wallon'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE31'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Brabant Wallon'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Hainaut'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE32'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Hainaut'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Liège'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Liège'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Luxembourg(B)'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE34'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Luxembourg(B)'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Prov. Namur'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'BE35'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Prov. Namur'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kypros' or //cerif:cfPAddr/cerif:cfStateOfCountry='Kibris'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CY00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kibris'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Praha'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ01'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Praha'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Stredni Cechy'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ02'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Stredni Cechy'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Jihozapad'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ03'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Jihozapad'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Severozapad'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ04'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Severozapad'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Severovychod'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ05'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Severovychod'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Jihovychod'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ06'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Jihovychod'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Stredni Morava'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ07'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Stredni Morava'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Moravskoslezsko'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'CZ08'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Moravskoslezsko'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Stuttgart'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Stuttgart'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Karlsruhe'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Karlsruhe'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Freiburg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Freiburg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Tübingen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE14'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Tübingen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Oberbayern'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Oberbayen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Niederbayern'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Niederbayern'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Oberpfalz'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Oberpfalz'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Oberfranken'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE24'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Oberfranken'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Mittelfranken'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE25'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Mittelfranken'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Unterfranken'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE26'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Unterfranken'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Schwaben'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE27'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Schwaben'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Berlin'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE30'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Berlin'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Brandenburg - Nordost'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE41'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Brandenburg - Nordost'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Brandenburg - Südwest'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'D42'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Brandenburg - Südwest'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Bremen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE50'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Bremen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Hamburg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE60'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Hamburg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Darmstadt'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE71'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Darmstadt'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Giessen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE72'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Giessen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kassel'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE73'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kassel'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Mecklenburg-Vorpommern'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE80'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Meckelberg-Vorpormmern'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Braunschweig'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE91'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Braunschweig'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Hannover'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE92'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Hannover'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lüneburg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE93'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lüneburg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Weser-Ems'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DE94'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Weser-Ems'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Düsseldorf'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEA1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Düsseldorf'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Köln'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEA2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Köln'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Münster'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEA3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Münster'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Detmold'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEA4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Detmold'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Arnsberg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEA5'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Arnsberg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Koblenz'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DB1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Koblenz'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Trier'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEB2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Trier'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Rheinhessen-Pfalz'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEB3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Rheinhessen-Pfalz'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Saarland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEC0'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Saarland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Chemnitz'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DED1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Chemnitz'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Dresden'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DED2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Dresden'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Leipzig'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DED3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Leipzig'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Dessau'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEE1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Dessau'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Halle'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEE2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Halle'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Magdeburg'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEE3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Magdeburg'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Schleswig-Holstein'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEF0'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Schleswig-Holstein'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Thüringen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DEG0'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Thüringen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Danmark'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'DK00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Danmark'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Eesti'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'EE00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Eesti'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Galicia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Galicia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Galicia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Galicia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Cantabria'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES13'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Cantabria'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Principado de Asturias'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Principado de Asturias'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='País Vasco'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'País Vasco'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Comunidad Foral de Navarra'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Comunidad Foral de Navarra'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='La Rioja'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'La Rioja'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Aragón'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES24'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Aragón'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Comunidad de Madrid'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'E301'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Comunidad de Madrid'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Castilla y León'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES41'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Castilla y León'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Castilla-La Mancha'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES42'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Castilla-La Mancha'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Extremadura'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES43'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Extremadura'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Cataluña'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES51'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Cataluña'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Comunidad Valenciana'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES52'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Comunidad Valenciana'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Illes Balears'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES53'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Illes Balears'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Andalucia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES61'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Andalucia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Región de Murcia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES62'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Región de Murcia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Ciudad Autónoma de Ceuta'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES63'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Ciudad Autónoma de Ceuta'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Ciudad Autónoma de Melilla'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES64'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Ciudad Autónoma de Melilla'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Canarias'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ES70'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Canarias'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Itä-Suomi'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FI13'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Itä-Suomi'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Etelä-Suomi'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FI18'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Etelä-Suomi'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Länsi-Suomi'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FI19'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Länsi-Suomi'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Pohjosi-Suomi'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FI1A'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Pohjosi-Suomi'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Aland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FI20'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Aland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Île de France'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR10'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Île de France'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Champagne-Ardenne'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Champagne-Ardenne'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Picardie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Picardie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Haute-Normandie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Haute-Normandie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Centre'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR24'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Centre'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Basse-Normandie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR25'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Basse-Normandie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Bourgogne'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR26'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Bourgogne'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Nord - Pas-de-Calais'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR30'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Nord - Pas-de-Calais'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lorraine'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR41'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lorraine'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Alsace'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR42'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Alsace'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='France-Comté'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR43'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'France-Comté'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Pays de la Loire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR51'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Pays de la Loire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Bretagne'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR52'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Bretagne'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Poitou-Charentes'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR53'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Poitou-Charentes'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Aquitaine'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR61'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Aquitaine'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Midi-Pyréneés'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR62'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Midi-Pyréneés'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Rhône-Alpes'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR71'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Rhône-Alpes'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Limousin'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR63'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Limousin'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Auvergne'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR72'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Auvergne'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Languedoc-Roussillon'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR81'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Languedoc-Roussillon'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Provence-Alpes-Côte dAzur'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR82'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Provence-Alpes-Côte dAzur'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Corse'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR83'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Corse'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Guadeloupe'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR91'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Guadeloupe'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Martinique'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR92'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Martinique'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Guyane'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR93'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Guyane'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Réunion'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'FR94'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Réunion'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Anatoliki Makedonia, Thraki'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Anatoliki Makedonia, Thraki'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kentriki Makedonia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kentriki Makedonia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Dytiki Makedonia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR13'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Dytiki Makedonia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Thessalia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR14'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Thessalia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Ipeiros'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Ipeiros'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Ionia Nisia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Ionia Nisia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Dytiki Ellada'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Dytiki Ellada'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Sterea Ellada'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR24'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Sterea Ellada'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Peloponnisos'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR25'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Peloponnisos'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Attiki'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR30'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Attiki'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Voreio Aigaio'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR41'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Voreio Aigaio'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Notio Aigaio'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR42'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Notio Aigaio'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kriti'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'GR43'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kriti'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kozep-Magyarorszag'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU10'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kozep-Magyarorszag'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kozep-Dunantul'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kozep-Dunantul'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Nyugat-Dunantul'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Nyugat-Dunantul'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Del-Dunantul'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Del-Dunantul'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Eszak-Magyarorszag'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU31'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Eszak-Magyarorszag'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Eszak-Alfold'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU32'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Eszak-Alfold'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Del-Alfold'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'HU33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Del-Alfold'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Border, Midland and Western'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'IE01'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Border, Midland and Western'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Southern and Eastern'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'IE02'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Southern and Eastern'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Piemonte'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITC1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Piemonte'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Valle dAosta'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITC2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Valle dAosta'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Liguria'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITC3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Liguria'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lombardia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITC4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lombardia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Bolzen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITD1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Bolzen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Provincia Autonoma Trento'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITD2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'`Provincia Autonoma Trento'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Veneto'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITD3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Veneto'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Friuli-Venezia Giulia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITD4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Friuli-Venezia Giulia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Emilia-Romagna'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITD5'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="Emilia-Romagna"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Toscana'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITE1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Toscana'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Umbria'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITE2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Umbria'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Marche'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITE3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Marche'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lazio'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITE4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lazio'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Abruzzo'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITF1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Abruzzo'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Molise'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITF2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Molise'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Campania'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITF3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Campania'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Puglia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITF4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Puglia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Basilicata'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITF5'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Basilicata'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Calabria'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITF6'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Calabria'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Sicilia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITG1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Sicilia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Sardegna'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'ITG2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Sardegna'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lietuva'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'LT00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lietuva'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Luxembourg (Grand-Duché)'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'LU00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Luxembourg (Grand-Duché)'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Latvija'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'LV00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Latvija'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Malta'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'MT00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Malta'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Groningen'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Groningen'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Friesland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Friesland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Drenthe'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL13'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Drenthe'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Overijssel'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Overijssel'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Gelderland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL22'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Gelderland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Flevoland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL23'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Flevoland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Utrecht'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL31'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Utrecht'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Noord-Holland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL32'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Noord-Holland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Zuid-Holland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Zuid-Holland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Zeeland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL34'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Zeeland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Noord-Brabant'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL41'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Noord-Brabant'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Limburg(NL)'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'NL42'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Limburg(NL)'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lodzkie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lodzkie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Mazowieckie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL12'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Mazowieckie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Malopolskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL21'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Malopolskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Slaskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL31'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Slaskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lubelskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL32'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lubelskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Podkarpackie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Podkarpackie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Swietokrzyke'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL33'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Swietokrzyke'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Podlaskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL34'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Podlaskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Wielkopolskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL41'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Wielkopolskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Zachodniopomorskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL42'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Zachodniopomorskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lubuskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL43'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lubuskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Dolnoslaskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL51'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Dolnoslaskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Opolskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL52'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Opolskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kujawsko-Pomorskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL61'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kujawsko-Pomorskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Waminsko-Mazurskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL62'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Waminsko-Mazurskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Pomorskie'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PL63'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Slaskie'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Norte'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT11'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Norte'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Algarve'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT15'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Algarve'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Centro(P)'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT16'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Centro(P)'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lisboa'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT17'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lisboa'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Alentejo'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT18'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Alentejo'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Regiao Autónoma dos Açores'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT20'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Regiao Autónoma dos Açores'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Regiao Autónoma da Madeira'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'PT30'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Regiao Autónoma da Madeira'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Stockholm'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE01'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Stokholm'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Östra Mellansverige'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE02'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Östra Mellansverige'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Sydsverige'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE04'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Sydsverige'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Norra Mellansverige'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE06'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Norra Mellansverige'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Mellersta Norrland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE07'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Mellersta Norrland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Övre Norrland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE08'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Övre Norrland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Smaland med öarna'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE09'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Smaland med öarna'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Västverige'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SE0A'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Västverige'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Slovenija'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SI00'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Slovenija'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Bratislavsky kraj'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SK01'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Bratislavsky kraj'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Zapadne Slovensko'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SK02'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Zapadne Slovensko'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Stredne Slovensko'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SK03'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Stredne Slovensko'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Vychodne Slovensko'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'SK04'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Vychodne Slovensko'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Tees Valley and Durham'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKC1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Tees Valley and Durham'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Northumberland and Tyne and Wear'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKC2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Northumberland and Tyne and Wear'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Cumbria'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKD1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Cumbria'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Cheshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKD2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Cheshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Greater Manchester'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKD3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Greater Manchester'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Lancashire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKD4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lancashire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Merseyside'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKD5'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Merseyside'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='East Riding and North Lincolnshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKE1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'East Riding and North Lincolnshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='North Yorkshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKE2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'North Yorkshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='South Yorkshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKE3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'South Yorkshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='West Yorkshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKE4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'West Yorkshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Derbyshire and Nottinghamshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKF1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Derbyshire and Nottinghamshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Leicestershire, Rutland and Northamptonshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKF2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Leicestershire, Rutland and Northamptonshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Linconlnshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKF3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Lincolnshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Herefordshire, Worcestershire and Warwickshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKG1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Herefordshire, Worcestershire and Warwickshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Shropshire and Staffordshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKG2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Shropshire and Staffordshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='West Midlands'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKG3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'West Midlands'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='East Anglia'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKH1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'East Anglia'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Bedfordshire and Hertfordshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKH2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Bedfordshire and Hertfordshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Essex'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKH3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Essex'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Inner London'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKI1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKI1'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Outer London'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKI2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Outer London'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Berkshire, Buckinghamshire and Oxfordshire'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKJ1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Berkshire, Buckinghamshire and Oxfordshire'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Surrey, East and West Sussex'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKJ2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Surrey, East and West Sussex'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Hampshire and Isle of Wight'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKJ3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Hampshire and Isle of Wight'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Kent'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKJ4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Kent'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Gloucestershire, Wiltshire and North Somerset'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKK1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Gloucestershire, Wiltshire and North Somerset'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Dorset and Somerset'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKK2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Dorset and Somerset'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Cornwall and Isles of Scilly'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKK3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Cornwall and Isles of Scilly'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Devon'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKK4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Devon'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='West Wales and The Valleys'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKL1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'West Wales and The Valleys'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='East Wales'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKL2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'East Wales'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='North Eastern Scotland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKM1'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'North Eastern Scotland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Eastern Scotland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKM2'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Eastern Scotland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='South Western Scotland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKM3'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'South Western Scotland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Highlands and Islands'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKM4'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Highlands and Islands'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>
                        <xsl:if test="//cerif:cfPAddr/cerif:cfStateOfCountry='Northern Ireland'">
                            <Region>
                                <Code code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'UKN0'"/>
                                    </Item>
                                </Code>
                                <Name code="000.010.000.190">
                                    <Item>
                                        <xsl:value-of select="'Northern Ireland'"/>
                                    </Item>
                                </Name>
                            </Region>
                        </xsl:if>

                    <!-- Añadir resto de tabla -->
                    
                    <!-- Añadir resto de tabla -->                     
                    <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode">
                        <CountryCode code="000.010.000.180">
                            <Item>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AF'"><xsl:value-of select="'004'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AX'"><xsl:value-of select="'248'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AL'"><xsl:value-of select="'008'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='DE'"><xsl:value-of select="'276'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AD'"><xsl:value-of select="'020'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AO'"><xsl:value-of select="'024'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AI'"><xsl:value-of select="'660'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AQ'"><xsl:value-of select="'010'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AG'"><xsl:value-of select="'028'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SA'"><xsl:value-of select="'682'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='DZ'"><xsl:value-of select="'012'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AR'"><xsl:value-of select="'032'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AM'"><xsl:value-of select="'051'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AW'"><xsl:value-of select="'533'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AU'"><xsl:value-of select="'036'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AT'"><xsl:value-of select="'040'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AZ'"><xsl:value-of select="'031'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BS'"><xsl:value-of select="'044'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BD'"><xsl:value-of select="'050'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BB'"><xsl:value-of select="'052'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BH'"><xsl:value-of select="'048'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BE'"><xsl:value-of select="'056'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BZ'"><xsl:value-of select="'084'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BJ'"><xsl:value-of select="'204'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BM'"><xsl:value-of select="'060'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BY'"><xsl:value-of select="'112'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MM'"><xsl:value-of select="'104'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BO'"><xsl:value-of select="'068'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BA'"><xsl:value-of select="'070'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BW'"><xsl:value-of select="'072'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BR'"><xsl:value-of select="'076'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BN'"><xsl:value-of select="'096'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BG'"><xsl:value-of select="'100'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BF'"><xsl:value-of select="'854'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BI'"><xsl:value-of select="'108'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BT'"><xsl:value-of select="'064'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CV'"><xsl:value-of select="'132'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KH'"><xsl:value-of select="'116'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CM'"><xsl:value-of select="'120'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CA'"><xsl:value-of select="'124'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='QA'"><xsl:value-of select="'634'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BQ'"><xsl:value-of select="'535'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TD'"><xsl:value-of select="'148'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AF'"><xsl:value-of select="'004'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CL'"><xsl:value-of select="'152'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CN'"><xsl:value-of select="'156'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CY'"><xsl:value-of select="'196'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CO'"><xsl:value-of select="'170'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KM'"><xsl:value-of select="'174'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KP'"><xsl:value-of select="'408'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KR'"><xsl:value-of select="'410'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CI'"><xsl:value-of select="'384'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CR'"><xsl:value-of select="'188'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='HR'"><xsl:value-of select="'191'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CU'"><xsl:value-of select="'192'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CW'"><xsl:value-of select="'531'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='DL'"><xsl:value-of select="'208'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='DM'"><xsl:value-of select="'212'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='EC'"><xsl:value-of select="'218'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='EG'"><xsl:value-of select="'818'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SV'"><xsl:value-of select="'222'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AE'"><xsl:value-of select="'784'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ER'"><xsl:value-of select="'232'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SK'"><xsl:value-of select="'703'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SI'"><xsl:value-of select="'705'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ES'"><xsl:value-of select="'724'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='US'"><xsl:value-of select="'840'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='EE'"><xsl:value-of select="'233'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ET'"><xsl:value-of select="'231'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PH'"><xsl:value-of select="'608'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='FI'"><xsl:value-of select="'246'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='FJ'"><xsl:value-of select="'242'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='FR'"><xsl:value-of select="'250'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GA'"><xsl:value-of select="'266'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GM'"><xsl:value-of select="'270'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GE'"><xsl:value-of select="'268'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GH'"><xsl:value-of select="'288'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GI'"><xsl:value-of select="'292'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GD'"><xsl:value-of select="'308'"/></xsl:if>
                                <xsl:if test="cerif:cfCountryCode='GR'"><xsl:value-of select="'300'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GL'"><xsl:value-of select="'304'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GP'"><xsl:value-of select="'312'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GU'"><xsl:value-of select="'316'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GT'"><xsl:value-of select="'320'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GF'"><xsl:value-of select="'254'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GG'"><xsl:value-of select="'381'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GN'"><xsl:value-of select="'324'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GW'"><xsl:value-of select="'624'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GQ'"><xsl:value-of select="'226'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GY'"><xsl:value-of select="'328'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='HT'"><xsl:value-of select="'332'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='HN'"><xsl:value-of select="'340'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='HK'"><xsl:value-of select="'344'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='HU'"><xsl:value-of select="'348'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IN'"><xsl:value-of select="'356'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ID'"><xsl:value-of select="'360'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IQ'"><xsl:value-of select="'368'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IR'"><xsl:value-of select="'364'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IE'"><xsl:value-of select="'372'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BV'"><xsl:value-of select="'074'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IM'"><xsl:value-of select="'388'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CX'"><xsl:value-of select="'162'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NF'"><xsl:value-of select="'574'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IS'"><xsl:value-of select="'352'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KY'"><xsl:value-of select="'136'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CC'"><xsl:value-of select="'166'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CL'"><xsl:value-of select="'184'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='FO'"><xsl:value-of select="'234'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GS'"><xsl:value-of select="'239'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='HM'"><xsl:value-of select="'334'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='FK'"><xsl:value-of select="'238'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MP'"><xsl:value-of select="'580'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MH'"><xsl:value-of select="'584'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PN'"><xsl:value-of select="'612'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SB'"><xsl:value-of select="'090'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TC'"><xsl:value-of select="'796'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='UM'"><xsl:value-of select="'581'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VG'"><xsl:value-of select="'092'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VI'"><xsl:value-of select="'850'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IL'"><xsl:value-of select="'376'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IT'"><xsl:value-of select="'380'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='JM'"><xsl:value-of select="'388'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='JP'"><xsl:value-of select="'392'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='JE'"><xsl:value-of select="'382'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='JO'"><xsl:value-of select="'400'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KZ'"><xsl:value-of select="'398'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KE'"><xsl:value-of select="'404'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KG'"><xsl:value-of select="'417'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KI'"><xsl:value-of select="'296'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KW'"><xsl:value-of select="'414'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LA'"><xsl:value-of select="'418'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LS'"><xsl:value-of select="'426'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LV'"><xsl:value-of select="'428'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LB'"><xsl:value-of select="'422'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LR'"><xsl:value-of select="'430'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LY'"><xsl:value-of select="'434'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LI'"><xsl:value-of select="'438'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LT'"><xsl:value-of select="'440'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LU'"><xsl:value-of select="'442'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MO'"><xsl:value-of select="'446'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MG'"><xsl:value-of select="'450'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MY'"><xsl:value-of select="'458'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MW'"><xsl:value-of select="'454'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MV'"><xsl:value-of select="'462'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ML'"><xsl:value-of select="'466'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MT'"><xsl:value-of select="'470'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MA'"><xsl:value-of select="'504'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MQ'"><xsl:value-of select="'474'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MU'"><xsl:value-of select="'480'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MR'"><xsl:value-of select="'478'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MY'"><xsl:value-of select="'175'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MX'"><xsl:value-of select="'484'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='FM'"><xsl:value-of select="'503'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MD'"><xsl:value-of select="'498'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MC'"><xsl:value-of select="'492'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MN'"><xsl:value-of select="'496'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ME'"><xsl:value-of select="'499'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MS'"><xsl:value-of select="'500'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MZ'"><xsl:value-of select="'508'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NA'"><xsl:value-of select="'516'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NR'"><xsl:value-of select="'520'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NP'"><xsl:value-of select="'524'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NI'"><xsl:value-of select="'558'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NE'"><xsl:value-of select="'562'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NG'"><xsl:value-of select="'566'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NU'"><xsl:value-of select="'570'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NO'"><xsl:value-of select="'578'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NC'"><xsl:value-of select="'540'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NZ'"><xsl:value-of select="'554'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='OM'"><xsl:value-of select="'512'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='NL'"><xsl:value-of select="'528'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PK'"><xsl:value-of select="'586'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PW'"><xsl:value-of select="'585'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PS'"><xsl:value-of select="'276'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PA'"><xsl:value-of select="'591'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PG'"><xsl:value-of select="'598'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PY'"><xsl:value-of select="'600'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PE'"><xsl:value-of select="'604'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PF'"><xsl:value-of select="'258'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PL'"><xsl:value-of select="'626'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PT'"><xsl:value-of select="'620'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PR'"><xsl:value-of select="'630'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='GB'"><xsl:value-of select="'826'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CF'"><xsl:value-of select="'140'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CZ'"><xsl:value-of select="'203'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MK'"><xsl:value-of select="'807'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CG'"><xsl:value-of select="'178'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CD'"><xsl:value-of select="'180'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='DO'"><xsl:value-of select="'214'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='RE'"><xsl:value-of select="'638'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='RW'"><xsl:value-of select="'647'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='RO'"><xsl:value-of select="'642'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='RU'"><xsl:value-of select="'643'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='EH'"><xsl:value-of select="'732'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='WS'"><xsl:value-of select="'882'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='AS'"><xsl:value-of select="'016'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='BL'"><xsl:value-of select="'652'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='KN'"><xsl:value-of select="'659'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SM'"><xsl:value-of select="'674'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='MF'"><xsl:value-of select="'663'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='PM'"><xsl:value-of select="'666'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VC'"><xsl:value-of select="'670'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SH'"><xsl:value-of select="'654'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LC'"><xsl:value-of select="'662'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ST'"><xsl:value-of select="'678'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SN'"><xsl:value-of select="'686'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='RS'"><xsl:value-of select="'688'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SC'"><xsl:value-of select="'690'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SL'"><xsl:value-of select="'694'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SG'"><xsl:value-of select="'702'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SX'"><xsl:value-of select="'534'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SY'"><xsl:value-of select="'760'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SO'"><xsl:value-of select="'706'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='LK'"><xsl:value-of select="'144'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SZ'"><xsl:value-of select="'748'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ZA'"><xsl:value-of select="'710'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SD'"><xsl:value-of select="'729'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SS'"><xsl:value-of select="'728'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SE'"><xsl:value-of select="'752'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='CH'"><xsl:value-of select="'756'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SR'"><xsl:value-of select="'740'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='SJ'"><xsl:value-of select="'744'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TH'"><xsl:value-of select="'764'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TW'"><xsl:value-of select="'158'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TZ'"><xsl:value-of select="'834'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TJ'"><xsl:value-of select="'762'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='IO'"><xsl:value-of select="'086'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TF'"><xsl:value-of select="'260'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TL'"><xsl:value-of select="'626'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TG'"><xsl:value-of select="'768'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TK'"><xsl:value-of select="'772'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TO'"><xsl:value-of select="'776'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TT'"><xsl:value-of select="'780'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TN'"><xsl:value-of select="'788'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TM'"><xsl:value-of select="'795'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TR'"><xsl:value-of select="'792'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='TV'"><xsl:value-of select="'798'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='UA'"><xsl:value-of select="'804'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='UG'"><xsl:value-of select="'800'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='UY'"><xsl:value-of select="'858'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='UZ'"><xsl:value-of select="'860'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VU'"><xsl:value-of select="'548'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VA'"><xsl:value-of select="'336'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VE'"><xsl:value-of select="'862'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='VN'"><xsl:value-of select="'704'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='WF'"><xsl:value-of select="'876'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='YE'"><xsl:value-of select="'887'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='DJ'"><xsl:value-of select="'262'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ZM'"><xsl:value-of select="'894'"/></xsl:if>
                                <xsl:if test="cerif:cfPAddr/cerif:cfCountryCode='ZW'"><xsl:value-of select="'716'"/></xsl:if>
                            </Item>
                        </CountryCode>
                    </xsl:if>                    
                    <!-- Añadir resto de tabla -->
                </Address>
                <xsl:if test="cfClassSchemeId='6e0d9af0-1cd6-11e1-8bc2-0800200c9a66'">
                    <Contact>
                        <xsl:if test="cerif:cfClassId='341b4fcc-9fe4-4760-a9c8-0f36ffa4d614'">
                            <Telephone Type="000">                       
                                <Number code="000.010.000.210">
                                    <Item>cerif:cfURI</Item>
                                </Number>
                            </Telephone>
                        </xsl:if>
                        <xsl:if test="cerif:cfClassId='46651010-00b1-4543-ae6f-b5983b704742'">
                            <Telephone Type="010">                       
                                <Number code="000.010.000.240">
                                    <Item>cerif:cfURI</Item>
                                </Number>
                            </Telephone>
                        </xsl:if>
                        <xsl:if test="cerif:cfClassId='9931ac41-3864-11e1-b86c-0800200c9a66'">
                            <Fax Type="000">                       
                                <Number code="000.010.000.220">
                                    <Item>cerif:cfURI</Item>
                                </Number>
                            </Fax>
                        </xsl:if>
                        <xsl:if test="cerif:cfClassId='4523402a-0bae-4716-a5d7-77411b74d5f6'">
                            <InternetEmailAddress code="000.010.000.230">                      
                                    <Item>cerif:cfURI</Item>                          
                            </InternetEmailAddress>
                        </xsl:if>
                        <xsl:if test="cerif:cfClassId='7f65458e-00de-4eaf-8109-01e517790a2c'">
                            <PersonalWeb code="000.010.000.250">                      
                                <Item>cerif:cfURI</Item>                          
                            </PersonalWeb>
                        </xsl:if>
                    </Contact>
                </xsl:if>
            </Agent>
        </xsl:for-each>
        <xsl:for-each select="//cerif:cfProj">
            <CvnItem>
                <CvnItemID>
                    <CVNPK>
                        <Item>050.020.010.000</Item>
                    </CVNPK>
                </CvnItemID>
                <Title>
                    <Name code="050.020.010.010">
                        <Item><xsl:value-of select="cerif:cfProjTitle/cerif:cfTitle"/></Item>
                    </Name>
                    <Type>000</Type>
                </Title>
                <xsl:for-each select="//cerif:cfFund">
                    <Title>
                        <Name code="050.020.010.250">
                            <Item><xsl:value-of select="cerif:cfName"/></Item>
                        </Name>
                    </Title>
                </xsl:for-each>
                <xsl:if test="cerif:cfProj_Class/cerif:cfClassSchemeId='94fefd50-1d00-11e1-8bc2-0800200c9a66' and cerif:cfProj_Class/cerif:cfClassId='c31d3380-1cfd-11e1-8bc2-0800200c9a66'">
                    <Filter>
                        <Value code="050.020.010.230">
                            <!-- Coordinator -->
                            <Item><xsl:value-of select="'260'"/></Item>
                        </Value>
                    </Filter>
                </xsl:if>
                <xsl:if test="cerif:cfProj_Class/cerif:cfClassSchemeId='94fefd50-1d00-11e1-8bc2-0800200c9a66' and cerif:cfProj_Class/cerif:cfClassId='ddc3dd10-1cfd-11e1-8bc2-0800200c9a66'">
                    <Filter>
                        <Value code="050.020.010.230">
                            <!-- Participant -->
                            <Item><xsl:value-of select="'210'"/></Item>
                        </Value>
                    </Filter>
                </xsl:if>
                <xsl:for-each select="//cerif:cfOrgUnitName">
                    <Entity>
                        <EntityName code="050.020.010.100">
                            <Item><xsl:value-of select="cerif:cfName"/></Item>
                        </EntityName>
                    </Entity>
                </xsl:for-each>
                <xsl:if test="cerif:cfProj_OrgUnit/cerif:cfClassId='eda2b2ed-34c5-11e1-b86c-0800200c9a66'"> <!-- Academic Institute -->
                    <Entity>
                        <Type code="050.020.010.210">                       
                                <Item><xsl:value-of select="'010'"/></Item>
                        </Type>
                        <EntityName code="050.020.010.190">
                            <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfOrgUnitId"/></Item>
                        </EntityName>
                        <EntityID>
                            <CVNPK code="050.020.010.190">
                                <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfProjId"/></Item>
                            </CVNPK>
                        </EntityID>
                    </Entity>
                </xsl:if>
                <xsl:if test="cerif:cfProj_OrgUnit/cerif:cfClassId='eda2b2ee-34c5-11e1-b86c-0800200c9a66'"> <!-- University -->
                    <Entity>
                        <Type code="050.020.010.210">                       
                            <Item><xsl:value-of select="'000'"/></Item>
                        </Type>
                        <EntityName code="050.020.010.190">
                            <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfOrgUnitId"/></Item>
                        </EntityName>
                        <EntityID>
                            <CVNPK code="050.020.010.190">
                                <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfProjId"/></Item>
                            </CVNPK>
                        </EntityID>
                    </Entity>
                </xsl:if>
                <xsl:if test="cerif:cfProj_OrgUnit/cerif:cfClassId='eda2b2f0-34c5-11e1-b86c-0800200c9a66'"> <!-- Research Institute -->
                    <Entity>
                        <Type code="050.020.010.210">                       
                            <Item><xsl:value-of select="'120'"/></Item>
                        </Type>
                        <EntityName code="050.020.010.190">
                            <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfOrgUnitId"/></Item>
                        </EntityName>
                        <EntityID>
                            <CVNPK code="050.020.010.190">
                                <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfProjId"/></Item>
                            </CVNPK>
                        </EntityID>
                    </Entity>
                </xsl:if>
                <xsl:if test="cerif:cfProj_OrgUnit/cerif:cfClassId='eda2b2f2-34c5-11e1-b86c-0800200c9a66'"> <!-- Company -->
                    <Entity>
                        <Type code="050.020.010.210">                       
                            <Item><xsl:value-of select="'080'"/></Item>
                        </Type>
                        <EntityName code="050.020.010.190">
                            <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfOrgUnitId"/></Item>
                        </EntityName>
                        <EntityID>
                            <CVNPK code="050.020.010.190">
                                <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfProjId"/></Item>
                            </CVNPK>
                        </EntityID>
                    </Entity>
                </xsl:if>
                <Date>
                    <Moment code="050.020.010.270">
                        <Item>OTHERS</Item>
                    </Moment>
                    <StartDate>
                        <DayMonthYear code="050.020.010.270">
                            <Item><xsl:value-of select="substring-before(cerif:cfStartDate,'T')"/></Item>
                        </DayMonthYear>
                    </StartDate>
                    <EndDate>
                        <DayMonthYear code="050.020.010.410">
                            <Item><xsl:value-of select="substring-before(cerif:cfEndDate,'T')"/></Item>
                        </DayMonthYear>
                    </EndDate>
                </Date>
                <xsl:if test="//cfClass/cerif:cfClassId='eda2b2f2-34c5-11e1-b86c-0800200c9a66'"> <!-- Company -->
                    <Entity>
                        <Type code="050.020.010.210">                       
                            <Item><xsl:value-of select="'080'"/></Item>
                        </Type>
                        <EntityName code="050.020.010.190">
                            <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfOrgUnitId"/></Item>
                        </EntityName>
                        <EntityID>
                            <CVNPK code="050.020.010.190">
                                <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfProjId"/></Item>
                            </CVNPK>
                        </EntityID>
                    </Entity>
                </xsl:if>
                <xsl:if test="cerif:cfProj_Fund">
                    <xsl:for-each select="cerif:cfProj_Fund">
                        <ExternalPK>
                            <Type code="050.020.010.260">
                                <Item>000</Item>
                            </Type>
                            <Code code="050.020.010.260">
                                <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfProjId"/></Item>
                            </Code>
                        </ExternalPK>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="//cerif:cfProg_OrgUnit/cfFraction='1'">
                    <Dedication code="050.020.010.430">
                        <Item>020</Item>
                    </Dedication>
                </xsl:if>
                <xsl:if test="//cerif:cfFund/cerif:cfFund_Class/cerif:cfClassId='c31d3380-1cfd-11e1-8bc2-0800200c9a66'"> <!-- Company -->
                    <Roll>
                        <Value code="050.020.010.170">
                            <Item>280</Item>
                        </Value>
                    </Roll>
                </xsl:if>
                <xsl:if test="//cerif:cfFund/cerif:cfFund_Class/cerif:cfClassId='79a2e340-1cfc-11e1-8bc2-0800200c9a66'"> <!-- Company -->
                    <Roll>
                        <Value code="050.020.010.170">
                            <Item>290</Item>
                        </Value>
                    </Roll>
                </xsl:if>
                <xsl:if test="//cerif:cfFund/cerif:cfFund_Class/cerif:cfClassId='ebd55ab0-1cfc-11e1-8bc2-0800200c9a66'"> <!-- Company -->
                    <Roll>
                        <Value code="050.020.010.170">
                            <Item>490</Item>
                        </Value>
                    </Roll>
                </xsl:if>
                <xsl:if test="//cerif:cfFund/cerif:cfFund_Class/cerif:cfClassId='8adcdf20-1cfd-11e1-8bc2-0800200c9a66'"> <!-- Company -->
                    <Roll>
                        <Value code="050.020.010.170">
                            <Item>870</Item>
                        </Value>
                    </Roll>
                </xsl:if>
                <xsl:if test="//cerif:cfFund/cerif:cfFund_Class/cerif:cfClassId='94d55210-1cfc-11e1-8bc2-0800200c9a66'"> <!-- Company -->
                    <Roll>
                        <Value code="050.020.010.170">
                            <Item>890</Item>
                        </Value>
                    </Roll>
                </xsl:if>
                <Entity>
                    <EntityID>
                        <CVNPK code="050.020.010.400">
                            <Item><xsl:value-of select="cerif:cfProj_OrgUnit/cerif:cfOrgUnitId"/></Item>
                        </CVNPK>
                    </EntityID>
                </Entity>
                <EconomicDimension>
                    <Value code="050.020.010.290">
                        <Item><xsl:value-of select="cerif:cfProj_Fund/cerif:cfAmount"/></Item>
                    </Value>
                    <CurrencyType code="050.020.010.290">
                        <Item><xsl:value-of select="cerif:cfProj_Fund/cerif:cfCurrCode"/></Item>
                    </CurrencyType>
                </EconomicDimension>
            </CvnItem>
        </xsl:for-each>
    </tns:CVN>
    
    </xsl:template>
    
</xsl:stylesheet>