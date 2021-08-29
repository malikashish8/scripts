require "jekyll"
class Embedder < Liquid::Tag

  safe true

  def initialize(tagName, content, tokens)
    super
    @content = content
  end

  def render(context)
    # %Q{<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'>    <iframe title="YouTube video player" width="640" height="390" src="//www.youtube.com/embed/#{ @youtube_id }" frameborder="0" allowfullscreen></iframe></div>}
    %Q{Hello from embedder!!!}
  end

  Liquid::Template.register_tag "embedder", self
end