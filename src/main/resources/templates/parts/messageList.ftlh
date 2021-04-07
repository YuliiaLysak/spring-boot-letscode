<#include "security.ftlh">
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->
<#import "/spring.ftl" as spring/>

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3" style="width: 18rem;">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        <@spring.message "edit"/>
                    </a>
                </#if>
            </div>
        </div>
    <#else>
        <@spring.message "noMessages"/>
    </#list>
</div>