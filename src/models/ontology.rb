require 'rdf'
require 'rdf/vocab'

require_relative '../services/repository_proxy'

class Ontology
  attr_reader :repository
  include RepositoryProxy

  def self.from_n3(n3_input)
    Ontology.new(RDF::Repository.new, n3_input)
  end

  def initialize(repository, n3_input = nil)
    @repository = repository
    load_and_process_n3 n3_input if n3_input
    initialize_state
  end

  def load_and_process_n3(n3_input)
    @n3_input = n3_input
    refresh
  end

  def applications
    query([nil, RDF.type, LV.Application]).map do |statement|
      Application.new(statement.subject, self)
    end
  end

  def devices
    query([nil, RDF.type, LV.Device]).map do |statement|
      Device.new(statement.subject, self)
    end
  end

  def refresh
    Reasoner.new(repository).load_and_process_n3(@n3_input)
  end

  private

  def initialize_state
    load_and_process_n3 '{} a <http://purl.org/restdesc/states#State>.'
  end
end
