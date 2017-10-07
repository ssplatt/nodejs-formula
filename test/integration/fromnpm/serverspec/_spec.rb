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

describe command('npm ls -g') do
  its(:stdout) { should match /ansi\@/ }
  its(:stdout) { should match /forever\@/ }
end
