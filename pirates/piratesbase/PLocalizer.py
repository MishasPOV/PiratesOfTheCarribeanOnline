from panda3d.core import ConfigVariableString
from direct.directnotify.DirectNotify import DirectNotify

language = ConfigVariableString('language', 'English')
language = language.getValue()

notify = DirectNotify().newCategory("PLocalizer")

def getLanguage():
    return language

_PLocalizer = 'pirates.piratesbase.PLocalizer' + language
_PQuestStrings = 'pirates.piratesbase.PQuestStrings' + language
_PDialogStrings = 'pirates.piratesbase.PDialogStrings' + language
_PGreetingStrings = 'pirates.piratesbase.PGreetingStrings' + language

try:
	exec 'from ' + _PLocalizer + ' import *'
	exec 'from ' + _PQuestStrings + ' import *'
	exec 'from ' + _PDialogStrings + ' import *'
	exec 'from ' + _PGreetingStrings + ' import *'
	print ":PLocalizer: Running in language: %s" % language
except:
	notify.warning("Error, Language %s not found!" % language)
	notify.warning("Setting language to default (English)")
	from pirates.piratesbase.PLocalizerEnglish import *
	from pirates.piratesbase.PQuestStringsEnglish import *
	from pirates.piratesbase.PDialogStringsEnglish import *
	from pirates.piratesbase.PGreetingStringsEnglish import *