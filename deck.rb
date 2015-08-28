require 'squib'

Squib::Deck.new(width: 750, height: 1023, cards: File.open('start.csv').count - 1, layout: 'phrases.yml') do
  background color: '#D0E6FF'
  phrases = csv file: 'start.csv'
  text range: :all, str: phrases['text'], layout: :EffectText

  save_pdf file: 'start.pdf', gap: 5
end

Squib::Deck.new(width: 750, height: 1023, cards: File.open('middle.csv').count - 1, layout: 'phrases.yml') do
  background color: '#D0E6FF'
  phrases = csv file: 'middle.csv'
  text range: :all, str: phrases['text'], layout: :EffectText

  save_pdf file: 'middle.pdf', gap: 5
end

Squib::Deck.new(width: 750, height: 1023, cards: File.open('end.csv').count - 1, layout: 'phrases.yml') do
  background color: '#D0E6FF'
  phrases = csv file: 'end.csv'
  text range: :all, str: phrases['text'], layout: :EffectText

  save_pdf file: 'end.pdf', gap: 5
end
