function clstartTour() {
	introJs().setOptions({
	  steps: [{
		title: 'Welcome',
		intro: 'This is a sample tour using Intro.js from Cathy.'
	  },
	  {
		element: document.querySelector('#step1'),
		intro: 'You could change this image in week 2 using the Graphic property.'
	  },
	  {
		element: document.querySelector('#pageTitle'),
		intro: 'Is this how you select a new element?'
	  },
	  {
		title: 'Farewell!',
		element: document.querySelector('#step3'),
		intro: 'Click this button to see some silly text.'
	  }]
	}).start();
}
