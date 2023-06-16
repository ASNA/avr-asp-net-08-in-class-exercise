# New ASNA Visual RPG ASP.NET base project

This is a base project that includes:
* BootStrap 5 is used via the CDN link in the `MasterPageNav.page`. For production work you should consider installing Bootstrap 5 locally.
* Master page with three content placeholders. This master page provides a header, footer, and  minimal nav bar (via Bootstrap 5).
* The applib.js file provides a static method (`Core.removeAspNetCheckboxWrapper(seelctor)`) you can use when needed with that use a checkbox to fix a ASP.NET issue that keeps its checkboxes from working correctly with BootStrap 5.
* Errors are watched globally and shown with the `views/system/Error.aspx` page and logged to a text file in the 'error-logs' file when they occur.
* A custom page-not-found page (`views/systems/pageNotFound.aspx`) when a 404 error occurs.
* Use authentication is available using the `views/system/login.aspx.`
* An `App_Code/StateHelpers` class is available to help with session and application state variable management.
* An `App_Code/USStatesList` class is available to provide a states list for the dropdown control.
* Soft-coded DataGate database names are available in `Web.Config`.
