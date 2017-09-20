class Contacto < ApplicationRecord
	has_and_belongs_to_many :grupos

  def self.decidir(grupos)
  	puts 'dentro'
    { buenos: 0, malos: 0 }.tap do |contador|
      grupos.each do |grupo|
        contador[grupo.nombre ? :buenos : :malos] += 1
        puts grupo.nombre
      end
    end
  end

end
