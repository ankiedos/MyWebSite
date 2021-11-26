Jekyll::Hooks.register :pages, :post_write do |page|
    Jekyll.logger.info "Replace in excerpt:", "Replacing <h3> with <h4>..."
    page.content.gsub('h3', 'h4') if page.name == "blog.html"
end