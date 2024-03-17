function ssstartTour() {
	introJs().setOptions({
	  steps: [{
		title: 'Welcome',
		intro: 'This is a sample tour using Intro.js from Shahana.'
	  },
	  {
		element: document.querySelector('#step1'),
		intro: 'thankyou;.'
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
