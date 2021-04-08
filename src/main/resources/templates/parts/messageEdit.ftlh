<#import "/spring.ftl" as spring/>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->

<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample"
   role="button" aria-expanded="false"
   aria-controls="collapseExample">
    <@spring.message "messageEdit"/>
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                       name="text" value="<#if message??>${message.text}</#if>"
                       placeholder="<@spring.message "enterMessage"/>">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" class="form-control ${(tagError??)?string('is-invalid', '')}"
                       name="tag" value="<#if message??>${message.tag}</#if>"
                       placeholder="<@spring.message "enterTag"/>">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" class="custom-file-input" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">
                        <@spring.message "chooseFile"/>
                    </label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">
                    <@spring.message "saveMessage"/>
                </button>
            </div>
        </form>
    </div>
</div>