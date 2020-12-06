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
        <ObjCheckID>
        <#if (objCheckId)??>
            ${objCheckId}
        <#else>
        </#if>
        </ObjCheckID>
        <CorrectResult>
        <#if (correctResult)??>
            ${correctResult}
        <#else>
        </#if>
        </CorrectResult>
         <EnclosureInf>
        <#if (enclosureInf)??>
            ${enclosureInf}
        <#else>
        </#if>
        </EnclosureInf>
        <CorrectDesc>
        <#if (correctDesc)??>
            ${correctDesc}
        <#else>
        </#if>
        </CorrectDesc>
    </Msg>
</Document>

