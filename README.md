This is a gutted version of a table view setup I use in some projects.

The basic idea was to be able to add and remove cells in tableviews without having to deal with indexPaths.

The way it works is that instead of creating the cells manually, through e.g. enums per indexPath, we instead declare the order of what data and what cell should be added into the tableview.

For example, if we want to create some information about a person, we could create the order like this:

    ProfileImageCell, User.image
    TextCell, User.name
    TextCell, User.birthday
    GeneralImageCell, User.uploadedImages
    TextCell, User.phoneNumber
    TextCell, User.email
    ButtonCell, "contact now"
    
When we add each one of these, they are stored in the "datasource" which are just wrappers around NSArrays with some nice methods.

Then, when the controller asks for `cellForRowAtIndexPath:` it will simply find the cell type and the content it should contain and pass that content (again stored in the datasource object) into the cell which then sets itself up.
    
The nice thing about declaring the content as a list is that we can now add or remove items without having to hide cells or deal with indexPaths at all.

Imagine if the user in the example didn't have some of the information, we can simply wrap each item in an if-clause. 

    if { ProfileImageCell, User.image }
    if { TextCell, User.name }
    if { TextCell, User.birthday }
    if { GeneralImageCell, User.uploadedImages }
    if { TextCell, User.phoneNumber }
    if { TextCell, User.email }
    if { ButtonCell, "contact now" }
    
This also means we could add _another_ cell if some content it missing, like this:

    if { TextCell, User.email }
    else { TextCell, "No email address found" }
    
Of course the cell itself could set itself up to say that depending on the content it gets (e.g. string vs empty string).