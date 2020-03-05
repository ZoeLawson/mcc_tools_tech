# How to create [if] logic statements in Excel 
## For Excel beginners

When working with a large amount of data, [if] logic statements can be a 
powerful way to organize information. You can sort through data by
adding conditions to cells. 

For example, if you had a spreadsheet filled with data and wanted to pick 
and choose data that was less than 10, you would writCe an [if] statement. 

Write  [=if(A1<10,A1,"")]
	*This statement means: if cell A1 is less than 10, then the 
	original value in A1 is populated in the cell
	*AND if it is not the case that the value in A1 is less than 10,
	then no content will appear in the cell. 

Column 1 Logic statement | Column 2 Excel statement format
-------------------------|--------------------------------
Column 1 [(A1<10)?(A1)]?[{¬{A1<10)}?(A1)] | Column 2 =if(A1<10,A1,"")
Column 1 Expressing an And statement | Column 2 Omitting the And component 
Column 1 Longer to write | Column 2 More confusing 


!(C:\Users\macgoa\january\mcc_tools_tech\Week06-LightweightMarkup\Homework\AndreaW6\gk.jpg)