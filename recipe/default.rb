# recipes/default.rb
package 'httpd' do
    action :install
  end
  
  service 'httpd' do
    action [:enable, :start]
  end
  
  file '/var/www/html/index.html' do
    content '<html><h1>Hello, World!</h1></html>'
    action :create
  end
  