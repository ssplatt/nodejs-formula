require 'serverspec'

# Required by serverspec
set :backend, :exec


describe package('nodejs') do
  it { should be_installed }
end

describe file('/etc/npmrc') do
    it { should be_file }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
end

describe package('node-ansi') do
  it { should be_installed }
end

describe package('node-forever-agent') do
  it { should be_installed }
end
