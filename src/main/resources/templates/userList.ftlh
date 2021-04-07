<#import "parts/common.ftlh" as c>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->
<#import "/spring.ftl" as spring/>

<@c.page>
    <@spring.message "userlist"/>
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col"><@spring.message "name"/></th>
            <th scope="col"><@spring.message "role"/></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
<#--                <td>${user.username}</td>-->
                <td>${user.username!"null or missing"}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
            </tr>
        </#list>

        </tbody>
    </table>
</@c.page>