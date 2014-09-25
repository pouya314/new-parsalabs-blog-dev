module PostsHelper
  def markdown(text)
    # Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(:hard_wrap => true), :space_after_headers => true, :autolink => true, :strikethrough => true, :superscript => true).render(text).html_safe

    render_options = {
        filter_html:     true,
        link_attributes: { rel: 'nofollow' },
        hard_wrap:       true
    }
    renderer = MyCustomRenderer.new(render_options)

    extensions = {
        space_after_headers: true,
        autolink:           true,
        fenced_code_blocks: true,
        lax_spacing:        true,
        no_intra_emphasis:  true,
        strikethrough:      true,
        superscript:        true
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
