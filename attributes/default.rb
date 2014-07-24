default['graphite_api']['search_index'] = '/srv/graphite/index'
default['graphite_api']['time_zone'] = 'Europe/Berlin'
default['graphite_api']['functions'] = ['graphite_api.functions.SeriesFunctions', 'graphite_api.functions.PieFunctions']
default['graphite_api']['finders'] = []

# Whisper config
default['graphite_api']['whisper']['enabled'] = true

if node['graphite_api']['whisper']['enabled']
  default['graphite_api']['finders'] |= ['graphite_api.finders.whisper.WhisperFinder']
  default['graphite_api']['whisper']['directories'] = ['/srv/graphite/whisper']
end
