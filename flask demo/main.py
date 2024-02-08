from flask import Flask 
from flask import render_template 

# creates a Flask application 
app = Flask(__name__) 


@app.route("/hello/<name>") 
def hello_name(name): 
	message = "Hello %s!" % name
	return render_template('index.html', 
						message=message) 

# run the application 
if __name__ == "__main__": 
	app.run(debug=True)
