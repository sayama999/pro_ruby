#   File:   "rgp.rb"
#   Created:  22-Jun-2019
#   Author:   sayama99
#   Description:
def to_hex(r, g, b)
  # 1)
  #'#' +
  #  r.to_s(16).rjust(2, '0') +
  #  g.to_s(16).rjust(2, '0') +
  #  b.to_s(16).rjust(2, '0')
  # 2)
  #hex = '#'
  #[r, g, b].each do |n|
    #hex += n.to_s(16).rjust(2, '0')
  #end
  #hex
  # 3)
  # inject:����#, 2��ڈȍ~�쐬���ꂽ�����񂪒ǉ��A�Ō�̕����񂪖߂�l
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  #���1
  #r = hex[1..2]
  #g = hex[3..4]
  #b = hex[5..6]
  #���2
  #r, g, b = hex[1..2], hex[3..4], hex[5..6]
  #���3
  # scan:���K�\���Ƀ}�b�`�����������z��ɂ��ĕԂ�
  # ���K�\��:\w	�P��\������:[a-zA-Z_0-9]
  #r, g, b = hex.scan(/\w\w/)
  #1)
  #ints = []
  #[r, g, b].each do |s|
  #  ints << s.hex
  #end
  # map:��̔z��Ƀ��[�v�����������ʂ��l�ߍ���ł���
  #2)
  #[r, g, b].map do |s|
  #  s.hex
  #end
  #3)
  #hex.scan(/\w\w/).map do |s|
  #  s.hex
  #end
  #4)
  # �u���b�N��1�����A�u���b�N�����\�b�h�Ɉ����Ȃ��A
  # ���\�b�h��1��ĂԂ����̏ꍇ�A�u���b�N�̑����
  # &:���\�b�h����n�����Ƃ��ł���
  hex.scan(/\w\w/).map(&:hex)
end