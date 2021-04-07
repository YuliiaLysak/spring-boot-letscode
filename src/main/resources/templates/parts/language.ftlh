<#import "/spring.ftl" as spring/>
<#--import needed for accessing message.properties as <@spring.message "keyName"/>-->

<#macro i18n>
    <div class="btn-group ml-3">
        <button type="button" class="btn btn-danger dropdown-toggle"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <@spring.message "language"/>
        </button>

        <div class="dropdown-menu dropdown-menu-right">
            <a class="dropdown-item" href="?lang=en">
                <img src="/static/img/english.png" width="30"> <@spring.message "en"/>
            </a>
            <a class="dropdown-item" href="?lang=pl">
                <img src="/static/img/polish.png" width="30"> <@spring.message "pl"/>
            </a>
            <a class="dropdown-item" href="?lang=ua">
                <img src="/static/img/ukrainian.png" width="30"> <@spring.message "ua"/>
            </a>
        </div>
    </div>
</#macro>