from panda3d.core import ConfigVariableString
from direct.directnotify.DirectNotify import DirectNotify

language = ConfigVariableString('language', 'English')
language = language.getValue()

notify = DirectNotify().newCategory("OTPLocalizer")

def getLanguage():
    return language

_languageModule = 'otp.otpbase.OTPLocalizer' + language

try:
    exec 'from ' + _languageModule + ' import *'
    print ":OTPLocalizer: Running in language: %s" % language
except:
    notify.warning("Error, Language %s not found!" % language)
    notify.warning("Setting language to default (English)")
    from otp.otpbase.OTPLocalizerEnglish import *
    

