require "yard-pygmentsrb/version"
require 'pygments.rb'
require 'yard'

YARD::Templates::Engine.register_template_path File.expand_path("../templates", __FILE__)

module YARD::Templates::Helpers::HtmlSyntaxHighlightHelper
  Pygments.lexers.map {|k,l| l[:aliases] }.each do |aliases|
    class_eval <<-EOM
      define_method("html_syntax_highlight_#{aliases.first}") do |source|
        Pygments.highlight source, :lexer => "#{aliases.first}", :options => { :cssclass => 'pygments' }
      end
    EOM

    aliases[1..-1].each do |lexer|
      alias :"html_syntax_highlight_#{lexer}" :"html_syntax_highlight_#{aliases.first}"
    end
  end
end
