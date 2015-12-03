require 'rdf'

class LocalVocabulary
  def self.method_missing(name, *arguments, &block)
    uri_for(name)
  end

  def self.located_at
    uri_for('locatedAt')
  end

  def self.uri_for(name)
    RDF::URI("http://matus.tomlein.org/case/#{name}")
  end
end

LV = LocalVocabulary
