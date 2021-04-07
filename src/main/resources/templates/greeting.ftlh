<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">
<#import "/spring.ftl" as spring/> <#--import needed for accessing message.properties-->

<@c.page>
    <h5><@spring.message "greeting"/>, <#if user??>${name}<#else>guest</#if></h5>
    <div><@spring.message "description"/></div>
</@c.page>
