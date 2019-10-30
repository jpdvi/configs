function ass-run
	set -x FLASK_APP app/
pipenv run flask run
end
