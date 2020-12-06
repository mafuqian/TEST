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
        <PhoneNum>
        <#if (phoneNum)??>
            ${phoneNum}
        <#else>
        </#if>
        </PhoneNum>
        <ObjCheckID>
        <#if (objCheckId)??>
            ${objCheckId}
        <#else>
        </#if>
        </ObjCheckID>
        <ObjCheckNum>
        <#if (objCheckNum)??>
            ${objCheckNum}
        <#else>
        </#if>
        </ObjCheckNum>
         <CheckResult>
        <#if (checkResult)??>
            ${checkResult}
        <#else>
        </#if>
        </CheckResult>
        <CheckResultDesc>
        <#if (checkResultDesc)??>
            ${checkResultDesc}
        <#else>
        </#if>
        </CheckResultDesc>
    </Msg>
</Document>

