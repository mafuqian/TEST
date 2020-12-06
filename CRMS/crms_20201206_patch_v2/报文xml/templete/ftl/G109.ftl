<?xml version="1.0" encoding="UTF-8"?>
<Document>
    <Head>
        <DataProviderOrgCode>
        <#if (dataProviderOrgCode)??>
            ${dataProviderOrgCode}
        <#else>
        </#if>
        </DataProviderOrgCode>
        <UserCode>
        <#if (userCode)??>
            ${userCode}
        <#else>
        </#if>
        </UserCode>
        <Password>
        <#if (passWord)??>
            ${passWord}
        <#else>
        </#if>
        </Password>
    </Head>
    <Msg>
        <OriginateOrgCode>
        <#if (originateOrgCode)??>
            ${originateOrgCode}
        <#else>
        </#if>
        </OriginateOrgCode>
        <OriginateUserCode>
        <#if (originateUserCode)??>
            ${originateUserCode}
        <#else>
        </#if>
        </OriginateUserCode>
        <Name>
        <#if (Name)??>
            ${Name}
        <#else>
        </#if>
        </Name>
        <IDType>
        <#if (IDType)??>
            ${IDType}
        <#else>
        </#if>
        </IDType>
        <IDNum>
        <#if (IDNum)??>
            ${IDNum}
        <#else>
        </#if>
        </IDNum>
         <BusinessCode>
        <#if (BusinessCode)??>
            ${BusinessCode}
        <#else>
        </#if>
        </BusinessCode>
        <LocateInfNm>
        <#if (LocateInfNm)??>
            ${LocateInfNm}
        <#else>
        </#if>
        </LocateInfNm>
        <#if (LocateInfTypeList)??>
           <#list LocateInfTypeList as list>
        		<LocateInf>
        			<LocateInfType>
        				<#if (list.locateInfType)??>
            				${list.locateInfType}
       			 		</#if>
        			</LocateInfType>
       	 		</LocateInf>    
        	</#list>
        </#if>
        <DataOccurOrgCode>
        <#if (DataOccurOrgCode)??>
            ${DataOccurOrgCode}
        <#else>
        </#if>
        </DataOccurOrgCode>
        <ObjDesc>
        <#if (ObjDesc)??>
            ${ObjDesc}
        <#else>
        </#if>
        </ObjDesc>
    </Msg>
</Document>

