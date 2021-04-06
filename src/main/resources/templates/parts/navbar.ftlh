<#include "security.ftlh">
<#import "login-logout.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Spring-Boot-letsCode</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Messages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user-messages/${currentUserId}">My messages</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>
        </ul>

        <div class="navbar-text mr-3">${name}</div>

        <#--'if check' for showing 'sign in / sign up' button for unauthorized users-->
        <#if name = "unknown">
            <a href="/login" class="mr-3">
                <button class="btn btn-outline-primary" type="submit">Sign in</button>
            </a>

            <a href="/registration">
                <button class="btn btn-primary" type="submit">Sign up</button>
            </a>
        </#if>

        <#--'if check' for showing 'sign out' button only if user authorized-->
        <#if user??>
            <@l.logout/>
        </#if>
    </div>
</nav>
