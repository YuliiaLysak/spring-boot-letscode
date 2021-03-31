<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Add new user
    ${message?ifExists}
<#--    ${message!" " }-->
    <@l.login "/registration" "Add"/>
</@c.page>
