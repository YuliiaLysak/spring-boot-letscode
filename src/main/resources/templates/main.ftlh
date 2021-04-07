<#import "parts/common.ftlh" as c>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->
<#import "/spring.ftl" as spring/>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter?ifExists}"
                       placeholder="<@spring.message "searchByTag"/>">
                <button type="submit" class="btn btn-primary ml-2">
                    <@spring.message "search"/>
                </button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftlh"/>
    <#include "parts/messageList.ftlh"/>
</@c.page>
