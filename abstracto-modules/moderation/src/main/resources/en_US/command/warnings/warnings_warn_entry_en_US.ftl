<#assign warnId>${warning.warning.warnId.id}</#assign>
<#assign reason>${warning.warning.reason}</#assign>
<#assign warnedUserText><#if warning.warnedUser.member??>${warning.warnedUser.member.asMention}(${warning.warnedUser.member.user.id})<#else>${warning.warnedUser.aUserInAServer.id?c}</#if></#assign>
<#assign warningUserText><#if warning.warningUser.member??>${warning.warningUser.member.asMention}(${warning.warningUser.member.user.id})<#else>${warning.warningUser.aUserInAServer.id?c}</#if></#assign>
<#assign warnDate>${formatDate(warning.warning.warnDate, "yyyy-MM-dd HH:mm:ss zz")}</#assign>

<#include "warnings_warn_entry_text">
<#if warning.warning.decayed>
<#assign decayDate>${formatDate(warning.warning.decayDate, "yyyy-MM-dd HH:mm:ss zz")}</#assign>
<#include "warnings_warn_is_decayed">
</#if>