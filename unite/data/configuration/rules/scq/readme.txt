For ShiftCliq we try to have a non Drools application, since we found out they are nearly used 

Note: TypedValidatorListener and TypedDecoratorListener are removed. 
Therefore businessobject type specific Drools files will be ignored. 
ValidatorListener and DecoratorListener are still in place, although unused by the core. 

Compare your client Drool files with the 4.2.2.1 version to see if you have any specific rules for this client. 
If not, delete the files, since the rules are now hardcoded in the core. 
If you do, keep the files in place and report the differences to the developmentteam so they can use/find/create a core solution or have the Product owner talk to the client to go to the standard solution. 

Try to remove all but the differences to at least minimize the business rules.