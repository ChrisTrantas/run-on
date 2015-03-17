require 'squib'

Squib::Deck.new(width: 750, height: 1023, cards: File.open('phrases.csv').count - 1, layout: 'phrases.yml') do
  background color: '#D0E6FF'
  phrases = csv file: 'phrases.csv'
  text range: :all, str: phrases['text'], layout: :EffectText

  save_pdf file: 'phrases.pdf', gap: 5
end
