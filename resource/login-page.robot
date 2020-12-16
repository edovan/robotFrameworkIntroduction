*** Variables ***

#${user_locator}         id:user-name # in xpath xpath://input[@id='username']
#${user_locator}         name:user-name # in xpath xpath://input[@name='username']
# //div[contains(@class,'login_wrapper')] # Esempio di ricerca per classe
# //div[@class=login_wrapper'] # Esempio di ricerca per classe
# un esempio più complesso //div[@id='login_credentials']//h4[contains(text(),'Accepted usernames are')]
# maggiori dettagli sul locator https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements

# Strategy	Match based on	Example
# id	Element id.	id:example
# name	name attribute.	name:example
# identifier	Either id or name.	identifier:example
# class	Element class.	class:example
# tag	Tag name.	tag:div
# xpath	XPath expression.	xpath://div[@id="example"]
# css	CSS selector.	css:div#example
# dom	DOM expression.	dom:document.images[5]
# link	Exact text a link has.	link:The example
# partial link	Partial link text.	partial link:he ex
# sizzle	Sizzle selector deprecated.	sizzle:div.example
# jquery	jQuery expression.	jquery:div.example
# default	Keyword specific default behavior.	default:example
# ${user_locator}       xpath://input[@data-test='username']
${user_locator}         id:user-name  
${passwd_locator}       id:password
${formsubmit_locator}   id:login-button
