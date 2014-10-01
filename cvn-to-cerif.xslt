<?xml version="1.0"?>
<!DOCTYPE stylesheet [
<!ENTITY nbsp "<xsl:text> </xsl:text>">
]>

<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"  
xmlns:vivo="http://vivoweb.org/ontology/core#" 
xmlns:foaf="http://xmlns.com/foaf/0.1/" 
xmlns:owl2="http://www.w3.org/2006/12/owl2-xml#" 
xmlns:iuvivo="http://vivo.iu.edu/ontology/iuvivo#"
xmlns:bibo="http://purl.org/ontology/bibo/"
version="2.0">

<xsl:output
	method="xml"
	indent="yes"
	omit-xml-declaration="no"
	encoding="utf-8"/>
	
<xsl:template match="/">

<CERIF  
 xmlns="urn:xmlns:org:eurocris:cerif-1.5-1"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
 release="1.5" date="2012-10-17" 
 sourceDatabase="Project Profile">
	
	<xsl:for-each select="//Agent">
		<cfPers>
			<xsl:if test="Identification/PersonalIdentification/OfficialId/DNI[@code='000.010.000.100']">
				<cfPersId><xsl:value-of select="Identification/PersonalIdentification/OfficialId/DNI[@code='000.010.000.100']/Item"/></cfPersId>
			<!-- ID dependiente de campo no obligatorio (Pendiente de respuesta) -->
			</xsl:if>
			<cfGender>
				<xsl:if test="Identification/PersonalIdentification/Gender[@code='000.010.000.030']/Item='000'"><xsl:value-of select="'m'"/></xsl:if>
				<xsl:if test="Identification/PersonalIdentification/Gender[@code='000.010.000.030']/Item='010'"><xsl:value-of select="'f'"/></xsl:if>
			</cfGender>
			<cfBirthDate><xsl:value-of select="Identification/PersonalIdentification/BirthDate[@code='000.010.000.050']/Item"/>T00:00:00</cfBirthDate>
			<cfPersName>
				<cfFirstNames><xsl:value-of select="Identification/PersonalIdentification/GivenName[@code='000.010.000.020']/Item"/></cfFirstNames>
				<cfFamilyNames><xsl:value-of select="Identification/PersonalIdentification/FirstFamilyName[@code='000.010.000.010']/Item"/>&nbsp;<xsl:value-of select="//Identification/PersonalIdentification/SecondFamilyName[@code='000.010.000.010']/Item"/></cfFamilyNames>
			</cfPersName>
			<xsl:if test="Identification/PersonalIdentification/Contact/Telephone[@Type='000']/Number[@code='000.010.000.210']">
				<cfUri>
					<cfClassId>341b4fcc-9fe4-4760-a9c8-0f36ffa4d614</cfClassId>
					<!--  Phone  -->
					<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					<xsl:value-of select="//Identification/PersonalIdentification/Contact/Telephone[@Type='000']/Number[@code='000.010.000.210']/Item"/>
				</cfUri>
			</xsl:if>
			<xsl:if test="Identification/PersonalIdentification/Contact/Telephone[@Type='010']/Number[@code='000.010.000.240']">
				<cfUri>
					<cfClassId>44651010-00b1-4543-ae6f-b5983b704742</cfClassId>
					<!-- Mobile Phone  -->
					<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					<xsl:value-of select="//Identification/PersonalIdentification/Contact/Telephone[@Type='010']/Number[@code='000.010.000.240']/Item"/>
				</cfUri>
			</xsl:if>
			<xsl:if test="Identification/PersonalIdentification/Contact/Fax[@Type='000']/Number[@code='000.010.000.220']">
				<cfUri>
					<cfClassId>9931ac41-3864-11e1-b86c-0800200c9a66</cfClassId>
					<!--  Fax  -->
					<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
						<xsl:value-of select="//Identification/PersonalIdentification/Contact/Fax[@Type='000']/Number[@code='000.010.000.220']/Item"/>
				</cfUri>
			</xsl:if>
			<xsl:if test="Identification/PersonalIdentification/Contact/InternetEmailAddress[@code='000.010.000.230']">
				<cfUri>
					<cfClassId>4523402a-0bae-4716-a5d7-77411b74d5f6</cfClassId>
					<!--  Electronic Address  -->
					<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					<xsl:value-of select="//Identification/PersonalIdentification/Contact/InternetEmailAddress[@code='000.010.000.230']/Item"/>
				</cfUri>
			</xsl:if>
			<xsl:if test="Identification/PersonalIdentification/Contact/PersonalWeb[@code='000.010.000.250']">
				<cfUri>
					<cfClassId>7f65458e-00de-4eaf-8109-01e517790a2c</cfClassId>
					<!--  Personal Web  -->
					<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					<xsl:value-of select="//Identification/PersonalIdentification/Contact/PersonalWeb[@code='000.010.000.250']/Item"/>
				</cfUri>
			</xsl:if>
			<cfPers_Country>
				<!--  Hacer función conversión país  --><xsl:value-of select="Identification/PersonalIdentification/BirthCountry[@code='000.010.000.060']/Item"/>
			</cfPers_Country>
			
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='010'">
					<cfClassId></cfClassId>
					<!--  Academic Institute  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='000'">
					<cfClassId></cfClassId>
					<!--  University  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='120'">
					<cfClassId></cfClassId>
					<!--  Research Institute  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='080'">
					<cfClassId></cfClassId>
					<!--  Company  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>				
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='010'">
					<cfClassId></cfClassId>
					<!--  Academic Institute  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='000'">
					<cfClassId></cfClassId>
					<!--  University  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='120'">
					<cfClassId></cfClassId>
					<!--  Research Institute  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
				<xsl:if test="Entity/EntityName[@code='010.010.000.020']/Item='080'">
					<cfClassId></cfClassId>
					<!--  Company  -->
					<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
				</xsl:if>
			<xsl:if test="//Date/StartDate/DayMonthYear[@code='010.010.000.180']">
				<xsl:for-each select="//Date/StartDate/DayMonthYear[@code='010.010.000.180']">
					<cfPers_OrgUnit>
								<cfStartDate><xsl:value-of select="Item"/>T00:00:00</cfStartDate>
								<xsl:if test="//Dedication/Item='020'">
									<cfFraction>
										<xsl:value-of select="1"/>
									</cfFraction>
								</xsl:if>
					</cfPers_OrgUnit>
				</xsl:for-each>
			</xsl:if>
		</cfPers>
		<xsl:if test="Address">
			<cfPAddr>
				<xsl:if test="Address/City[@code='000.010.000.170']">
					<cfCityTown><xsl:value-of select="//Address/City[@code='000.010.000.170']/Item"/></cfCityTown>
				</xsl:if>
				<xsl:if test="Address/Streets[@code='000.010.000.140']">
					<cfAddrLine1><xsl:value-of select="//Address/Streets[@code='000.010.000.140']/Item"/></cfAddrLine1>
				</xsl:if>
				<xsl:if test="Address/OtherInformation[@code='000.010.000.150']">
					<cfAddrLine2><xsl:value-of select="//Address/OtherInformation[@code='000.010.000.150']/Item"/></cfAddrLine2>
				</xsl:if>
				<xsl:if test="Address/PostalCode[@code='000.010.000.160']">
					<cfPostCode><xsl:value-of select="//Address/PostalCode[@code='000.010.000.160']/Item"/></cfPostCode>
				</xsl:if>
				<xsl:if test="Address/Region/Name[@code='000.010.000.190']">
					<cfStateOfCountry><xsl:value-of select="//Address/Region/Name[@code='000.010.000.190']/Item"/></cfStateOfCountry>
				</xsl:if>
				<xsl:if test="Address/CountryCode[@code='000.010.000.180']">
					<cfCountryCode><xsl:value-of select="//Address/CountryCode[@code='000.010.000.180']/Item"/></cfCountryCode>
				</xsl:if>
			</cfPAddr>
		</xsl:if>
	</xsl:for-each>
	<xsl:for-each select="//CvnItem">
		<!-- Project Entity -->
		<xsl:if test="CvnItemID/CVNPK/Item = '050.020.010.000'">
			<cfProj>
				<cfStartDate><xsl:value-of select="Date/StartDate/DayMonthYear[@code='050.020.010.270']/Item"/>T00:00:00</cfStartDate>
				<cfEndDate><xsl:value-of select="Date/EndDate/DayMonthYear[@code='050.020.010.410']/Item"/>T00:00:00</cfEndDate>
				<cfProjTitle>
					<cfTitle><xsl:value-of select="Title/Name[@code='050.020.010.010']/Item"/></cfTitle>
				</cfProjTitle>
				<xsl:if test="Title/Name[@code='050.020.010.250']">
					<cfFund>
						<cfName><xsl:value-of select="Title/Name[@code='050.020.010.250']/Item"/></cfName>
						<cfKeyw>
							<xsl:for-each select="Subject/*[@code='050.020.010.020']">
								<xsl:value-of select="Item"/>&nbsp;
							</xsl:for-each>
						</cfKeyw>
					</cfFund>
				</xsl:if>
				<xsl:if test="Filter/Value[@code='050.020.010.230']/Item='260'">
					<cfProjClass>
						<cfClassId>ddc3dd10-1cfd-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Coordinator  -->
						<cfClassSchemeId>94fefd50-1d00-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</cfProjClass>
				</xsl:if>
				<xsl:if test="Filter/Value[@code='050.020.010.230']/Item='210'">
					<cfProjClass>
						<cfClassId>ddc3dd10-1cfd-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Participant  -->
						<cfClassSchemeId>94fefd50-1d00-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</cfProjClass>
				</xsl:if>				
				<cfProj_Fund>
					<cfFundId><xsl:value-of select="ExternalPK/Code[@code='050.020.010.260']/Item"/></cfFundId>
					<xsl:if test="Entity/EntityName[@code='050.020.010.190']">
						<cfOrgUnitId><xsl:value-of select="Entity/EntityName[@code='050.020.010.190']/Item"/></cfOrgUnitId>
					</xsl:if>
					<cfAmount><xsl:value-of select="EconomicDimension/Value[@code='050.020.010.290']/Item"/></cfAmount>
					<cfCurrCode><xsl:value-of select="EconomicDimension/CurrencyType[@code='050.020.010.290']/Item"/></cfCurrCode>			
				</cfProj_Fund>	
				<xsl:if test="Link/Entity/EntityID/CVNPK[@code='050.020.010.190']">
					<xsl:for-each select="Link/Entity/EntityID/CVNPK[@code='050.020.010.190']">
						<cfProj_OrgUnit>
							<cfProjId><xsl:value-of select="Item"/></cfProjId>
							<cfOrgUnitId><xsl:value-of select="Item"/></cfOrgUnitId>
						</cfProj_OrgUnit>
					</xsl:for-each>
				</xsl:if>	
				<cfProj_OrgUnit>
					<xsl:if test="Entity/EntityName[@code='050.020.010.120']/Item='010'">
						<cfClassId></cfClassId>
						<!--  Academic Institute  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="Entity/EntityName[@code='050.020.010.120']/Item='000'">
						<cfClassId></cfClassId>
						<!--  University  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="Entity/EntityName[@code='050.020.010.120']/Item='120'">
						<cfClassId></cfClassId>
						<!--  Research Institute  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="Entity/EntityName[@code='050.020.010.120']/Item='080'">
						<cfClassId></cfClassId>
						<!--  Company  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>				
					<xsl:if test="Entity/EntityName[@code='050.020.010.210']/Item='010'">
						<cfClassId></cfClassId>
						<!--  Academic Institute  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="Entity/EntityName[@code='050.020.010.210']/Item='000'">
						<cfClassId></cfClassId>
						<!--  University  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="Entity/EntityName[@code='050.020.010.210']/Item='120'">
						<cfClassId></cfClassId>
						<!--  Research Institute  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="Entity/EntityName[@code='050.020.010.210']/Item='080'">
						<cfClassId></cfClassId>
						<!--  Company  -->
						<cfClassSchemeId>eda2b2ed-34c5-11e1-b86c-0800200c9a66</cfClassSchemeId>
					</xsl:if>	
					<xsl:for-each select="Entity/EntityID/CVNPK[@code='050.020.010.400']">
						<cfOrgUnitId>	
							<xsl:value-of select="Item"/>
						</cfOrgUnitId>
					</xsl:for-each>
					<xsl:if test="Dedication[@code='050.020.010.430']">
						<cfFraction>
							<xsl:for-each select="Dedication[@code='050.020.010.430']">
								<xsl:if test="'020'" /><xsl:value-of select="1" />
							</xsl:for-each>
						</cfFraction>
					</xsl:if>
				</cfProj_OrgUnit>
			</cfProj>
			<xsl:if test="Roll/Value[@code='050.020.010.170']">
				<cfFundClass>
					<xsl:if test="//Roll/Value[@code='050.020.010.170']/Item='280'">
						<cfClassId>c31d3380-1cfd-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Coordinator  -->
						<cfClassSchemeId>994069a0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="//Roll/Value[@code='050.020.010.170']/Item='290'">
						<cfClassId>79a2e340-1cfc-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Manager  -->
						<cfClassSchemeId>994069a0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="//Roll/Value[@code='050.020.010.170']/Item='490'">
						<cfClassId>ebd55ab0-1cfc-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Resarcher  -->
						<cfClassSchemeId>994069a0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="//Roll/Value[@code='000.010.000.250']/Item='870'">
						<cfClassId>8adcdf20-1cfd-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Technician  -->
						<cfClassSchemeId>994069a0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</xsl:if>
					<xsl:if test="//Roll/Value[@code='000.010.000.250']/Item='890'">
						<cfClassId>94d55210-1cfc-11e1-8bc2-0800200c9a66</cfClassId>
						<!--  Fellow  -->
						<cfClassSchemeId>994069a0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
					</xsl:if>
				</cfFundClass>
			</xsl:if>
			<cfOrgUnit>
				<cfName>
					<xsl:value-of select="Entity/EntityName[@code='050.020.010.100']/Item"/>
				</cfName>
			</cfOrgUnit>
		</xsl:if>
		
		<!-- Organization -->
		<xsl:if test="CvnItemID/CVNPK/Item = '010.010.000.000'">
			<cfOrgUnit>
				<cfOrgUnitId><xsl:value-of select="Entity/EntityID/CVNPK[@code='010.010.000.020']/Item"/></cfOrgUnitId>
				<cfName><xsl:value-of select="Entity/EntityName[@code='010.010.000.020']/Item"/></cfName>
				<xsl:if test="Identification/PersonalIdentification/Contact/Telephone/Number[@code='010.010.000.140']">
					<cfUri>
						<cfClassId>341b4fcc-9fe4-4760-a9c8-0f36ffa4d614</cfClassId>
						<!--  Phone  -->
						<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
						<xsl:value-of select="//Identification/PersonalIdentification/Contact/Telephone/Number[@code='010.010.000.140']/Item"/>
					</cfUri>
				</xsl:if>
				<xsl:if test="Identification/PersonalIdentification/Contact/Fax/Number[@code='010.010.000.150']">
					<cfUri>
						<cfClassId>9931ac41-3864-11e1-b86c-0800200c9a66</cfClassId>
						<!--  Fax  -->
						<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
						<xsl:value-of select="//Identification/PersonalIdentification/Contact/Fax/Number[@code='010.010.000.150']/Item"/>
					</cfUri>
				</xsl:if>
				<xsl:if test="Identification/PersonalIdentification/Contact/InternetEmailAddress[@code='010.010.000.160']">
					<cfUri>
						<cfClassId>4523402a-0bae-4716-a5d7-77411b74d5f6</cfClassId>
						<!--  Electronic Address  -->
						<cfClassSchemeId>6e0d9af0-1cd6-11e1-8bc2-0800200c9a66</cfClassSchemeId>
						<xsl:value-of select="//Identification/PersonalIdentification/Contact/InternetEmailAddress[@code='010.010.000.160']/Item"/>
					</cfUri>
				</xsl:if>
			</cfOrgUnit>
			<xsl:if test="Entity/EntityID/CVNPK[@code='010.010.000.080']">
				<cfOrgUnit>
					<cfOrgUnitId><xsl:value-of select="Entity/EntityID/CVNPK[@code='010.010.000.080']/Item"/></cfOrgUnitId>
					<cfName><xsl:value-of select="Entity/EntityName[@code='010.010.000.080']/Item"/></cfName>
				</cfOrgUnit>
			</xsl:if>
			<xsl:if test="Entity/EntityID/CVNPK[@code='010.010.000.060']">
				<cfOrgUnit>
					<cfOrgUnitId><xsl:value-of select="Entity/EntityID/CVNPK[@code='010.010.000.060']/Item"/></cfOrgUnitId>
					<cfName><xsl:value-of select="Entity/EntityName[@code='010.010.000.060']/Item"/></cfName>
				</cfOrgUnit>
			</xsl:if>
			<xsl:if test="//Place/City[@code='010.010.000.100']">
				<cfPAddr>
					<xsl:if test="//Place/City[@code='010.010.000.100']">
						<cfCityTown><xsl:value-of select="//Place/City[@code='010.010.000.100']/Item"/></cfCityTown>
					</xsl:if>
					<xsl:if test="//Place/Region/Name[@code='010.010.000.120']">
						<cfStateOfCountry><xsl:value-of select="//Place/Region/Name[@code='010.010.000.120']/Item"/></cfStateOfCountry>
					</xsl:if>
					<xsl:if test="//Place/CountryCode[@code='010.010.000.110']/Item='004'"><cfCountryCode><xsl:value-of select="'AF'"/></cfCountryCode></xsl:if>
				</cfPAddr>
			</xsl:if>
		</xsl:if>
	</xsl:for-each>
</CERIF>
</xsl:template>
</xsl:stylesheet>
