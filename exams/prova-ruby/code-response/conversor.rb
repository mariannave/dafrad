require 'byebug'

class String

  def str2hex
    self
      .chars
      .map{|char| char.ord.to_s(16).rjust(2, '0')}
      .join(' ')
  end

  def hex2str
    self
      .split(' ')
      .map{|char| char.hex.chr }
      .join('')
  end

  def str2bin
    self
      .chars
      .map{|char| char.ord.to_s(2).rjust(8, '0') }
      .join(' ')
  end

  def bin2str
    self
      .split(' ')
      .map{|char| char.to_i(2).chr }
      .join('')
  end
end
