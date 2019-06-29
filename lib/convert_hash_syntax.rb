#   File:   "convert_hash_syntax.rb"
#   Created:  28-Jun-2019
#   Author:   sayama99
#   Description:
def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end