function ksstartTour() {
	introJs().setOptions({
	  steps: [{
		title: 'Welcome',
		intro: 'This is a sample tour using Intro.js from Kristina.'
	  },
	  {
		element: document.querySelector('#step1'),
		intro: 'You could change this image in week 2 using the Graphic property.'
	  },
	  {
		element: document.querySelector('#step2'),
		intro: 'The text this help icon triggers the text in the UserName_Help property.'
	  },
	  {
		title: 'Farewell!',
		element: document.querySelector('#step3'),
		intro: 'Click this button to see some silly text.'
	  }]
	}).start();
}
