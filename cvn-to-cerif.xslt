<?xml version="1.0" encoding="UTF-8"?>

 <xsl:stylesheet version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:date="http://exslt.org/dates-and-times"
        xmlns:uuid="java:java.util.UUID">

	<xsl:import href="date.add.template.xsl" />

 	<xsl:output method="xml" indent="yes" encoding="UTF-8" />

 	<xsl:key name="orgunitNames" match="Entity/EntityName/Item" use="." />
 	<xsl:key name="projTitles" match="Title/Name/Item" use="." />

 	<xsl:variable name="orgunitId">
 		<xsl:for-each select="*/CvnItem/Entity/EntityName/Item[generate-id() = generate-id(key('orgunitNames',.)[1])]">
 			<orgunitId>
 				<xsl:attribute name="name"> <xsl:value-of select="." /> </xsl:attribute>
 				<xsl:value-of select="uuid:randomUUID()" />
 			</orgunitId>
 		</xsl:for-each>
 	</xsl:variable>
 	<xsl:variable name="projId">
 		<xsl:for-each select="*/CvnItem/Title/Name/Item[generate-id() = generate-id(key('projTitles',.)[1])]">
 			<projId>
 				<xsl:attribute name="title"> <xsl:value-of select="." /> </xsl:attribute>
 				<xsl:value-of select="uuid:randomUUID()" />
 			</projId>
 		</xsl:for-each>
 	</xsl:variable>
 	<xsl:variable name="cfPersId"><xsl:value-of select="uuid:randomUUID()" /></xsl:variable>

 	<xsl:template match="/*[local-name() = 'CVN']">
 		<CERIF>
 			<xsl:for-each select="CvnItem/Entity/EntityName/Item[generate-id() = generate-id(key('orgunitNames',.)[1])]">
 				<xsl:if test="../../../CvnItemID/CodeCVNItem/Item = 210">
	 				<xsl:variable name="cfOrgUnitName"><xsl:value-of select="." /></xsl:variable>
	 				<cfOrgUnit>
		 				<!-- <cfOrgUnitId><xsl:value-of select="Entity/EntityID/CVNPK/Item" /></cfOrgUnitId> -->
		 				<cfOrgUnitId><xsl:value-of select="$orgunitId/orgunitId[@name=$cfOrgUnitName]"/></cfOrgUnitId>
		 			</cfOrgUnit>
		 			<cfOrgUnitName>
		 				<cfOrgUnitId><xsl:value-of select="$orgunitId/orgunitId[@name=$cfOrgUnitName]"/></cfOrgUnitId>
		 				<cfName><xsl:value-of select="$cfOrgUnitName" /></cfName>
		 			</cfOrgUnitName>
	 			</xsl:if>
 			</xsl:for-each>

 			<xsl:for-each select="CvnItem/Title/Name/Item[generate-id() = generate-id(key('projTitles',.)[1])]">
 				<xsl:if test="../../../CvnItemID/CodeCVNItem/Item = 160">
	 				<xsl:variable name="cfProjTitle"><xsl:value-of select="." /></xsl:variable>
	 				<cfProj>
		 				<!-- <cfOrgUnitId><xsl:value-of select="Entity/EntityID/CVNPK/Item" /></cfOrgUnitId> -->
		 				<cfProjId><xsl:value-of select="$projId/projId[@title=$cfProjTitle]"/></cfProjId>
		 			</cfProj>
		 			<cfProjTitle>
		 				<cfProjId><xsl:value-of select="$projId/projId[@title=$cfProjTitle]"/></cfProjId>
		 				<cfTitle><xsl:value-of select="$cfProjTitle" /></cfTitle>
		 			</cfProjTitle>
	 			</xsl:if>
 			</xsl:for-each>

 			<xsl:apply-templates select="Agent/Identification/PersonalIdentification"/>
 			<xsl:apply-templates select="CvnItem"/>
 		</CERIF>
 	</xsl:template>

 	<xsl:template match="Agent/Identification/PersonalIdentification">
 		<cfPers>
 			<cfPersId>
 				<xsl:value-of select="$cfPersId" />
 			</cfPersId>
 			<cfBirthdate>
 				<xsl:value-of select="BirthDate/Item" />
 			</cfBirthdate>
 			<cfGender>
 				<xsl:choose>
			        <xsl:when test="Gender/Item = 000">
			          <xsl:text>m</xsl:text>
			        </xsl:when>
			        <xsl:otherwise>
			          <xsl:text>f</xsl:text>
			        </xsl:otherwise>
		      </xsl:choose>
 			</cfGender>
 			<cfuri>
 				
 			</cfuri>
 		</cfPers>
 		<cfPersName>
 			<cfPersId>
 				<xsl:value-of select="$cfPersId" />
 			</cfPersId>
 			<cfFirstNames>
 				<xsl:value-of select="GivenName/Item" /><xsl:text> </xsl:text><xsl:value-of select="FirstFamilyName/Item" /><xsl:text> </xsl:text><xsl:value-of select="SecondFamilyName/Item" />
 			</cfFirstNames>
 		</cfPersName>
 	</xsl:template>

 	<xsl:template match="CvnItem">
 		<xsl:if test="CvnItemID/CodeCVNItem/Item = 210">
 			<xsl:variable name="cfOrgUnitName"><xsl:value-of select="Entity/EntityName/Item" /></xsl:variable>
 			<!-- <kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk><xsl:value-of select="$cfOrgUnitName" /></kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk> -->
 			<cfPers_OrgUnit>
 				<cfOrgUnitId><xsl:value-of select="$orgunitId/orgunitId[@name=$cfOrgUnitName]"/></cfOrgUnitId>
 				<cfPersId><xsl:value-of select="$cfPersId" /></cfPersId>
 				<cfClassId><xsl:value-of select="Title/Name/Item" /></cfClassId>
 				<cfStartDate>
 					<xsl:value-of select="Date/StartDate/DayMonthYear/Item" />
 				</cfStartDate>
				<xsl:if test="Date/Duration">
					<cfEndDate>
						<xsl:variable name="start"> <xsl:value-of select="Date/StartDate/DayMonthYear/Item"/> </xsl:variable>
						<xsl:variable name="duration"> <xsl:value-of select="Date/Duration/Item"/> </xsl:variable>
						<!-- <xsl:variable name="daytime_duration"> <xsl:value-of select="concat('P', xs:days-from-duration(xs:duration($duration)), 'D')"/> </xsl:variable> -->
						<!-- <xsl:variable name="monthyear_duration"> <xsl:value-of select="concat('P', xs:years-from-duration($duration), 'Y', xs:months-from-duration($duration), 'M')"/> </xsl:variable> -->
						<xsl:call-template name="date:add">
							<xsl:with-param name="date-time" select="xs:date($start)" />
							<xsl:with-param name="duration" select="xs:duration($duration)" />
						</xsl:call-template>
						<!-- <xsl:value-of select="date:add(xs:date($start), xs:duration($duration))" /> -->
					</cfEndDate>
				</xsl:if>
 			</cfPers_OrgUnit>
 		</xsl:if>
 		<xsl:if test="CvnItemID/CodeCVNItem/Item = 160">
 			<xsl:variable name="cfProjTitle"><xsl:value-of select="Title/Name/Item" /></xsl:variable>
 			<!-- <kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk><xsl:value-of select="$cfOrgUnitName" /></kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk> -->
 			<cfProj_Pers>
 				<cfProjId><xsl:value-of select="$projId/projId[@title=$cfProjTitle]"/></cfProjId>
 				<cfPersId><xsl:value-of select="$cfPersId" /></cfPersId>
 				<xsl:variable name="start"> <xsl:value-of select="Date/StartDate/DayMonthYear/Item"/> </xsl:variable>
 				<cfStartDate>
 					<xsl:value-of select="$start" />
 				</cfStartDate>
				<xsl:if test="Date/Duration">
					<cfEndDate>
						<xsl:variable name="duration"> <xsl:value-of select="Date/Duration/Item"/> </xsl:variable>
						<xsl:call-template name="date:add">
							<xsl:with-param name="date-time" select="xs:date($start)" />
							<xsl:with-param name="duration" select="xs:duration($duration)" />
						</xsl:call-template>
					</cfEndDate>
				</xsl:if>
 			</cfProj_Pers>
 		</xsl:if>
 	</xsl:template>

 </xsl:stylesheet>
