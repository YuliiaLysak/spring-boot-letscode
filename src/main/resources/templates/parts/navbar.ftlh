<#include "security.ftlh">
<#import "login-logout.ftlh" as l>
<#import "language.ftlh" as lang>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->
<#import "/spring.ftl" as spring/>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Spring-Boot-letsCode</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">
                    <@spring.message "home"/>
                </a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">
                        <@spring.message "messages"/>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user-messages/${currentUserId}">
                        <@spring.message "mymessages"/>
                    </a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">
                        <@spring.message "userlist"/>
                    </a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">
                        <@spring.message "profile"/>
                    </a>
                </li>
            </#if>
        </ul>

        <div class="navbar-text mr-3">${name}</div>

        <#--'if check' for showing 'sign in / sign up / sign out' button for unauthorized users-->
        <#if name = "unknown">
            <a href="/login" class="mr-3">
                <button class="btn btn-outline-primary" type="submit">
                    <@spring.message "signin"/>
                </button>
            </a>

            <a href="/registration">
                <button class="btn btn-primary" type="submit">
                    <@spring.message "signup"/>
                </button>
            </a>
        <#else>
            <@l.logout/>
        </#if>

        <@lang.i18n/>

    </div>
</nav>
