function rpstartTour() {
	introJs().setOptions({
	  steps: [{
		title: 'Greetings',
		intro: 'This is Robert\'s sample tour using Intro.js.'
	  },
	  {
		element: document.querySelector('#username_label'),
		intro: 'Can I monkey with this?'
	  },
	  {
		element: document.querySelector('#usr'),
		intro: 'Yes I can. I am in control.'
	  },
	  {
		element: document.querySelector('#pswdlink'),
		intro: 'I could add as many of these as I want'
	  },
	  {
		element: document.querySelector('#thing'),
		intro: 'Some of these highlights show up in odd places'
	  },
	  {
		title: 'Cower!',
		element: document.querySelector('#help'),
		intro: 'No one can help you now'
	  }]
	}).start();
}
