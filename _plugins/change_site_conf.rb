require 'jekyll'
Jekyll::Hooks.register :site, :after_init do
    Jekyll.logger.info "Change-config: ", "Changing site.config['ghp'] from #{site.config['ghp'].to_s}, to #{(!site.config['ghp']).to_s}"
end
Jekyll::Hooks.register :site, :after_init do |doc|
    doc.site.config['ghp'] = !doc.site.config['ghp']
end