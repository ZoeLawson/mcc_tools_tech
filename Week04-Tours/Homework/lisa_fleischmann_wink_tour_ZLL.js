var tour = {
	"id": "WinkTour",
	"steps": [
	{
		"target": "Welcome!",
		"placement": "top",
		"title": "Welcome!",
		"content": "Hi! Welcome to the Wink tour!
Wink is a software tool to make presentations and tutorials about using software programs.
Now I’m going to walk you through a few features in Wink to help you get started."
// I didn't go over this in class, but JSON does not allow line breaks in content. You need to use <br/> or \r\n
},
{

"target": "File_tab",
		"placement": "top", // Based on where the pop up is, I think this should be "right"
		"title": "File tab",
		"content": "Use the File tab to create a new Wink file"
},
{

"target": "New_Project_Wizard_-_Step_1_of_2",
		"placement": "top", // left
		"title": "New Project Wizard - Step 1 of 2",
		"content": "Use New Project Wizard Step 1 of 2 to define capture area."
},
{
"target": "New_Project_Wizard_-_Step_2_of_2",
		"placement": "top", // left
		"title": "New Project Wizard - Step 2 of 2",
		"content": "Use New Project Wizard Step 2 of 2 to define the Hotkeys to capture screenshots. \n For example, I took a screen snapshot of a Google search by pressing Pause. You will see this on the next screen."
},
{
"target": "Minimize_To_Tray",
		"placement": "bottom", // left
		"title": "Minimize To Tray",
		"content": "To begin your project, click Minimize To Tray button."
},
{

"target": "Add_Textbox",
		"placement": "top",
		"title": "Add Textbox",
		"content": "To add a textbox, go to the Properties bar and click the Add Textbox button."
},
{

"target": "Congratulations!",
		"placement": "bottom",
		"title": "Congratulations!",
		"content": "Congratulations! You have completed the Wink tour!"
}
]
};