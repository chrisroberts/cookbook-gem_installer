# Iterate and install gems
items = node[:gem_installer][:gems]

if(items.respond_to?(:each_pair))
  items.each_pair do |gem, gem_version|
    gem_package gem do
      version gem_version if gem_version
    end
  end
else
  items.each do |gem_info|
    gem_info = [gem_info].flatten
    gem_package gem_info.first do
      version gem_info.last if gem_info.size > 1
    end
  end
end
