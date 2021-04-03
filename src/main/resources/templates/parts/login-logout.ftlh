<#macro login path value isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-3">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password : </label>
            <div class="col-sm-3">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Confirm password : </label>
                <div class="col-sm-3">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Confirm password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> E-mail : </label>
                <div class="col-sm-3">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="some@some.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="g-recaptcha" data-sitekey="6LdIzJkaAAAAAN5W-Z4KAR-sHcp3m-MZMaKssM6F"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
<#--        TODO delete later because button 'sign up' was added-->
<#--        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>-->
        <button class="btn btn-primary" type="submit">${value}</button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Sign Out</button>
    </form>
</#macro>


<#--ссылка на profile у не зарегистрированного пользователя
Так фиксится: <#if name!="unknown"></#if>

Решается это дело в navbar.ftl дописанием к
условию если юзер авторизован и не имеет имя Guest  <#if user??&&name!="Guest">



<#include "security.ftl">

<#if known>
<li class="nav-item">
      	<a class="nav-link" href="/user/profile">Profile</a>
 </li>
</#if>

-->