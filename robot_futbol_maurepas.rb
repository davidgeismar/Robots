
require 'rubygems'
  require 'nokogiri'
  require 'builder'
  require 'pry'
  require 'mechanize'


def resa_futbol_maurepas
agent = Mechanize.new
  page = agent.get("http://resa.just-play.deciplus.pro/index.html")
  # forms =agent.page.forms
  # body = page_param_resa.body
  # html_body = Nokogiri::HTML(body)
  login_form = page.form('form_identification')
  login_form.sp_mail = 'davidgeismar@hotmail.fr'
  login_form.sp_pwd = 'dgqocd2j'
  page = agent.submit(login_form, login_form.buttons.first)
  body = page.body
  # from mechanize to nokogiri
  html_body = Nokogiri::HTML(body)
  puts html_body
  succ = html_body.search('h1')

end

resa_futbol_maurepas()
