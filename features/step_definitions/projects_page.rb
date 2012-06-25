Given /^catalog filled by seeds script$/ do
  require 'techcor/seed'
  Techcor::Seed.seed
end