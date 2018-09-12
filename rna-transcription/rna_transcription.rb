class Complement
  class << self
    def of_dna(dna_strand)
      dna_strand.tr('GCTA', 'CGAU')
    end
  end
end
