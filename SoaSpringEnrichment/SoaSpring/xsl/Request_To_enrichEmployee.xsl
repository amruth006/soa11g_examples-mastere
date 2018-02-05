<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../Mediator.wsdl"/>
      <rootElement name="Request" namespace="http://www.whitehorses.nl/spring"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../IEmployee.wsdl"/>
      <rootElement name="enrichEmployee" namespace="http://enrichment.spring.soa.whitehorses.nl/"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.3.0(build 100415.2045.2557) AT [SUN JUN 13 20:51:41 CEST 2010]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:ns0="http://enrichment.spring.soa.whitehorses.nl/"
                xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns1="http://enrichment.spring.soa.whitehorses.nl/types"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:tns="http://xmlns.oracle.com/SoaSpringEnrichment/SoaSpring/Mediator"
                xmlns:inp1="http://www.whitehorses.nl/spring"
                exclude-result-prefixes="xsi xsl wsdl xsd tns inp1 ns0 soap12 soap mime ns1 xp20 bpws bpel2 bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <ns0:enrichEmployee>
      <arg0>
        <xsl:value-of select="/inp1:Request/inp1:EmployeeKey"/>
      </arg0>
      <arg1>
        <xsl:value-of select="mhdr:getComponentName()"/>
      </arg1>
      <arg2>
        <xsl:value-of select="mhdr:getCompositeInstanceID()"/>
      </arg2>
    </ns0:enrichEmployee>
  </xsl:template>
</xsl:stylesheet>
