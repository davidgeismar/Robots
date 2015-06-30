require 'rubygems'
  require 'nokogiri'
  require 'builder'
  require 'pry'
  require 'mechanize'


def resa_versus

  agent = Mechanize.new
  page_param_resa = agent.get("http://www.versusfoot.com/")
  login_form = page.form('f')
  body = page_param_resa.body
  html_body = Nokogiri::HTML(body)
  form = page_param_resa.form_with(:id => "-booking-form")
  puts form

  form.sp_mail = "davidgeismar@hotmail.fr"
  puts form.sp_mail
  form.sp_pwd = "dgqocd2j"
  form_submit = agent.submit(form.sp_mail, form.sp_pwd.buttons.first)
  body = form_submit.body
  html_body = Nokogiri::HTML(body)
  puts html_body


  # page = agent.submit(form, form.buttons.first)
  #  puts page.body





  # body = page_popup.body
  #  html_body = Nokogiri::HTML(body)
  #  puts html_body

  # confirm = html_body.search('popup-title')
  # puts confirm
end

resa_versus()
  # html_body.search('td a.treeview2').first.text
