<#import "parts/common.ftlh" as c>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->
<#import "/spring.ftl" as spring/>

<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">
                <@spring.message "password"/> :
            </label>
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control"
                       placeholder="<@spring.message "password"/>"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> E-mail : </label>
            <div class="col-sm-3">
                <input type="email" name="email" class="form-control"
                       placeholder="some@some.com" value="${email!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">
            <@spring.message "save"/>
        </button>
    </form>
</@c.page>
