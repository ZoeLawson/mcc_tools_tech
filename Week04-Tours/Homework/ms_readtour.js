function msstartTour() {
	introJs().setOptions({
	  steps: [{
		title: 'Welcome',
		intro: 'This is a sample tour using Intro.js from Madhumita.'
	  },
	  {
		title: 'Change Graphic:',
		element: document.querySelector('#step1'),
		intro: 'To change this image, please use the Graphic property.'
	  },
	  {
		title: 'Help Text:',
		element: document.querySelector('#step2'),
		intro: 'This icon triggers the help text in the UserName_Help property.'
	  },
	  {
		title: 'Farewell!',
		element: document.querySelector('#step3'),
		intro: 'Click this button to submit the form.'
	  }]
	}).start();
}
