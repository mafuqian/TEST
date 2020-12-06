<?xml version="1.0" encoding="UTF-8"?>
<#list d101List as d101>
<Document>
    <Head>
        <QueryOrgCode>
        <#if (d101.qryOrgCode)??>
            ${d101.qryOrgCode}
        <#else>
        </#if>
        </QueryOrgCode>
        <UserCode>
        <#if (d101.userCode)??>
            ${d101.userCode}
        <#else>
        </#if>
        </UserCode>
        <Password>
        <#if (d101.passWord)??>
            ${d101.passWord}
        <#else>
        </#if>
        </Password>
    </Head>
    <Msg>
        <OriginateOrgCode>
        <#if (d101.ognOrgCode)??>
            ${d101.ognOrgCode}
        <#else>
        </#if>
        </OriginateOrgCode>
        <OriginateUserCode>
        <#if (d101.ognUserCode)??>
            ${d101.ognUserCode}
        <#else>
        </#if>
        </OriginateUserCode>
        <Name>
            ${d101.name}
        </Name>
        <IDType>
            ${d101.idType}
        </IDType>
        <IDNum>
            ${d101.idNum}
        </IDNum>
        <QueryReason>
        <#if (d101.queryReason)??>
            ${d101.queryReason}
        <#else>
        </#if>
        </QueryReason>
        <ServiceCode>
        <#if (d101.serviceCode)??>
            ${d101.serviceCode}
        <#else>
        </#if>
        </ServiceCode>
    </Msg>
</Document>
</#list>
</body>
