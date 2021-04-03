<#import "parts/common.ftlh" as c>
<#import "parts/login-logout.ftlh" as l>

<@c.page>
    <div class="mb-1">Add new user</div>
    ${message?ifExists}
<#--    ${message!" " }-->
    <@l.login "/registration" "Sign up" true/>
</@c.page>
