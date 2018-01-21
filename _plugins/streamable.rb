module Jekyll
    class StreamableTag < Liquid::Tag
  
      def initialize(tag_name, text, tokens)
        super
        @text = text
      end
  
      def render(context)
        "<div style=\"width:100%;height:0px;position:relative;padding-bottom:56.250%;\"><iframe src=\"https://streamable.com/s/#{@text}\" frameborder=\"0\" width=\"100%\" height=\"100%\" allowfullscreen style=\"width:100%;height:100%;position:absolute;left:0px;top:0px;overflow:hidden;\"></iframe></div>"
      end
    end
end

Liquid::Template.register_tag('streamable', Jekyll::StreamableTag)
