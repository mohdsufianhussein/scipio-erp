<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#-- SCIPIO Email template  -->

    
    <#-- BODY -->

                                
    <#-- custom logo or text can be inserted here -->
    <h1>${title!}</h1>
    <#if !isDemoStore?? || isDemoStore><p>${uiLabelMap.OrderDemoFrontNote}.</p></#if>
    <#if note??><p>${note}</p></#if>
    <#if orderHeader??>
    <@render resource="component://shop/widget/EmailOrderScreens.xml#orderheader" />
    <br /><@printVars var=screens />
    <@render resource="component://shop/widget/EmailOrderScreens.xml#orderitems" />
    <#else>
    <h1>Order not found with ID [${orderId!}], or not allowed to view.</h1>
    </#if>

                                

