<#-- a header template fragment included in the page template -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape></#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/style.css" rel="stylesheet">
  </head>
  <body>
