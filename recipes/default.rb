# Iterate and install gems

node[:gems_installer][:gems].each do |gem_info|
  gem_info = [gem_info] unless gem_info.is_a?(Array)
  gem = gem_package gem_info.first do
    action :nothing
    version gem_info.last if gem_info.size > 1
  end
  gem.run_action(:install)
end

