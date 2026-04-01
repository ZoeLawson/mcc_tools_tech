function startTour() {
	introJs().setOptions({
	  steps: [{
		title: 'Welcome',
		intro: 'This is a sample tour using Intro.js. That I can edit.'
	  },
	  {
		element: document.querySelector('#step1'),
		intro: 'You could change this image in week 2 using the Graphic property.'
	  },
	  {
		element: document.querySelector('#formLegend'),
		intro: 'Is it really witty, though?'
	  },
	  {
		element: document.querySelector('#username_label'),
		intro: 'Here\'s a new step'
	  },
	  {
		title: 'Farewell!',
		element: document.querySelector('#step3'),
		intro: 'Click this button to see some silly text.'
	  }]
	}).start();
}
