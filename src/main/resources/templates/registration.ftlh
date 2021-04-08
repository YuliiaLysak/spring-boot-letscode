<#import "parts/common.ftlh" as c>
<#import "parts/login-logout.ftlh" as l>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->
<#import "/spring.ftl" as spring/>

<@c.page>
    <div class="mb-1"><@spring.message "addNewUser"/></div>
    ${message!" "}
    <@l.login "/registration" true/>
</@c.page>
