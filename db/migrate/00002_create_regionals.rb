class CreateRegionals < ActiveRecord::Migration[7.2]
  def change
    create_table :regionals do |t|
      t.string :year
      t.string :month
      t.string :region
      t.bigint :regional
      t.bigint :gorizia
      t.bigint :pordenone
      t.bigint :trieste
      t.bigint :udine
      t.bigint :filcams
      t.bigint :filctem
      t.bigint :fillea
      t.bigint :filt
      t.bigint :fiom
      t.bigint :fisac
      t.bigint :flai
      t.bigint :flc
      t.bigint :fp
      t.bigint :nidil
      t.bigint :slc
      t.bigint :spi
      t.bigint :men
      t.bigint :women
      t.bigint :young
      t.bigint :thirty
      t.bigint :forty
      t.bigint :fifty
      t.bigint :sixty
      t.bigint :seventy
      t.bigint :eighty
      t.bigint :highlander
      t.bigint :delega
      t.bigint :brevimanu
      t.bigint :ordinaria
      t.bigint :ordinariace
      t.bigint :naspi
      t.bigint :dsagricola
      t.bigint :delegatesoro
      t.bigint :concomitante
      t.bigint :concomitantespianno
    end
  end
end
