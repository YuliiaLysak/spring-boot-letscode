<#import "parts/common.ftlh" as c>
<#import "parts/login-logout.ftlh" as l>

<@c.page>
<#--    Проверка на ошибку будет осуществляться не по сессии,
а в режиме реального времени, по параметрам-->
    <#if RequestParameters.error??>
        <div class="mb-3 alert alert-danger" role="alert">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>

<#--    Как пофиксить сообщение "Bad Credentials"?
В том плане, что если я нажму на Sign In без ввода логина и пароля,
то вылезшее сообщение "Bad Credentials" будет висеть, даже если я после этого перейду в Home
и снова вернусь на страницу логина.-->
<#--    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>-->
<#--        <div class="alert alert-danger" role="alert">-->
<#--            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}-->
<#--        </div>-->
<#--    </#if>-->

    <#if message??>
        <div class="alert alert-${messageType}" role="alert">
            ${message}
        </div>
    </#if>
    <@l.login "/login" "Sign in" false/>
</@c.page>
