<?xml version="1.0" encoding="UTF-8"?><Root>
  <DeploymentSet allowEmptyValues="false" assetCompositeName="isconfiguration" deploymentSetName="myDeploymentSet" serverAliasName="QA" targetServerName="sdgqaesb2" targetServerType="IS">
    <Property propertyName="suspendTasksDuringDeploy" propertyValue="none"/>
    <Property propertyName="activateTasksAfterDeploy" propertyValue="none"/>
    <Property propertyName="enablePortsAfterDeploy" propertyValue="none"/>
    <Property propertyName="reloadCacheManagersAfterDeployment" propertyValue="none"/>
    <Component name="CacheManager.GniWKF_BPM_CacheManager" type="iscachemanager">
      <Property propertyName="cacheManagerName" propertyValue="GniWKF_BPM_CacheManager"/>
      <Property propertyName="urls" propertyValue=""/>
      <Property propertyName="reload" propertyValue="none"/>
    </Component>
    <Component name="GlobalVariable.ENV" type="isglobalvariable">
      <Property propertyName="value" propertyValue="local"/>
    </Component>
    <Component name="JMSAlias.GniWKF_BPMEvent_WM_JMS" type="isjmsalias">
      <Property propertyName="clientID" propertyValue="IS_PE_DEV_5500"/>
      <Property propertyName="user" propertyValue=""/>
      <Property propertyName="password" propertyValue="{AES}aYrXC43dTWsDUHRWG5mhTA=="/>
      <Property propertyName="jndi_connectionFactoryLookupName" propertyValue="GniBPMEventConnectionFactory"/>
      <Property propertyName="jndi_automaticallyCreateUMAdminObjects" propertyValue="false"/>
    </Component>
    <Component name="JMSAlias.GniWKF_BPMTask_WM_JMS" type="isjmsalias">
      <Property propertyName="clientID" propertyValue="IS_PE_DEV_5500"/>
      <Property propertyName="user" propertyValue=""/>
      <Property propertyName="password" propertyValue="{AES}aYrXC43dTWsDUHRWG5mhTA=="/>
      <Property propertyName="jndi_connectionFactoryLookupName" propertyValue="GniBPMTaskConfigConnectionFactory"/>
      <Property propertyName="jndi_automaticallyCreateUMAdminObjects" propertyValue="false"/>
    </Component>
    <Component name="JNDIAlias.GniWKF_BPM_WM_JNDI" type="isjndialias">
      <Property propertyName="providerURL" propertyValue="nsp://localhost:9005"/>
      <Property propertyName="providerURLFailoverList" propertyValue=""/>
      <Property propertyName="securityPrincipal" propertyValue=""/>
      <Property propertyName="securityCredentials" propertyValue="{AES}aYrXC43dTWsDUHRWG5mhTA=="/>
    </Component>
    <Component name="WebserviceEndpointAlias.Provider.HTTP.WS_ALIAS_PROVIDER_BPM_6582" type="iswebserviceendpointalias">
      <Property propertyName="host" propertyValue="vmgniwfproject02"/>
      <Property propertyName="port" propertyValue="6582"/>
      <Property propertyName="enable" propertyValue="false"/>
      <Property propertyName="retransmissionInterval" propertyValue="6000"/>
      <Property propertyName="acknowledgementInterval" propertyValue="3000"/>
      <Property propertyName="exponentialBackoff" propertyValue="true"/>
      <Property propertyName="maximumRetransmissionCount" propertyValue="10"/>
    </Component>
  </DeploymentSet>
  <DeploymentSet allowEmptyValues="false" assetCompositeName="isconfiguration" deploymentSetName="myDeploymentSet" serverAliasName="QA" targetServerName="sdgqaesb1" targetServerType="IS">
    <Property propertyName="suspendTasksDuringDeploy" propertyValue="none"/>
    <Property propertyName="activateTasksAfterDeploy" propertyValue="none"/>
    <Property propertyName="enablePortsAfterDeploy" propertyValue="none"/>
    <Property propertyName="reloadCacheManagersAfterDeployment" propertyValue="none"/>
    <Component name="CacheManager.GniWKF_BPM_CacheManager" type="iscachemanager">
      <Property propertyName="cacheManagerName" propertyValue="GniWKF_BPM_CacheManager"/>
      <Property propertyName="urls" propertyValue=""/>
      <Property propertyName="reload" propertyValue="none"/>
    </Component>
    <Component name="GlobalVariable.ENV" type="isglobalvariable">
      <Property propertyName="value" propertyValue="local"/>
    </Component>
    <Component name="JMSAlias.GniWKF_BPMEvent_WM_JMS" type="isjmsalias">
      <Property propertyName="clientID" propertyValue="IS_PE_DEV_5500"/>
      <Property propertyName="user" propertyValue=""/>
      <Property propertyName="password" propertyValue="{AES}aYrXC43dTWsDUHRWG5mhTA=="/>
      <Property propertyName="jndi_connectionFactoryLookupName" propertyValue="GniBPMEventConnectionFactory"/>
      <Property propertyName="jndi_automaticallyCreateUMAdminObjects" propertyValue="false"/>
    </Component>
    <Component name="JMSAlias.GniWKF_BPMTask_WM_JMS" type="isjmsalias">
      <Property propertyName="clientID" propertyValue="IS_PE_DEV_5500"/>
      <Property propertyName="user" propertyValue=""/>
      <Property propertyName="password" propertyValue="{AES}aYrXC43dTWsDUHRWG5mhTA=="/>
      <Property propertyName="jndi_connectionFactoryLookupName" propertyValue="GniBPMTaskConfigConnectionFactory"/>
      <Property propertyName="jndi_automaticallyCreateUMAdminObjects" propertyValue="false"/>
    </Component>
    <Component name="JNDIAlias.GniWKF_BPM_WM_JNDI" type="isjndialias">
      <Property propertyName="providerURL" propertyValue="nsp://localhost:9005"/>
      <Property propertyName="providerURLFailoverList" propertyValue=""/>
      <Property propertyName="securityPrincipal" propertyValue=""/>
      <Property propertyName="securityCredentials" propertyValue="{AES}aYrXC43dTWsDUHRWG5mhTA=="/>
    </Component>
    <Component name="WebserviceEndpointAlias.Provider.HTTP.WS_ALIAS_PROVIDER_BPM_6582" type="iswebserviceendpointalias">
      <Property propertyName="host" propertyValue="vmgniwfproject02"/>
      <Property propertyName="port" propertyValue="6582"/>
      <Property propertyName="enable" propertyValue="false"/>
      <Property propertyName="retransmissionInterval" propertyValue="6000"/>
      <Property propertyName="acknowledgementInterval" propertyValue="3000"/>
      <Property propertyName="exponentialBackoff" propertyValue="true"/>
      <Property propertyName="maximumRetransmissionCount" propertyValue="10"/>
    </Component>
  </DeploymentSet>
</Root>
