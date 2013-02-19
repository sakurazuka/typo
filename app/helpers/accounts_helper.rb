# coding: utf-8
module AccountsHelper
  def lost_password
    content_tag :li do
      link_to(content_tag(:small, _("I've lost my password")), :action => 'recover_password')
    end
  end
  
  def create_account_link
    content_tag :li do
      link_to(content_tag(:small, _("Create an account")), :action => 'signup') if this_blog.allow_signup == 1
    end
  end

  def back_to_login
    content_tag :li do
      link_to(content_tag(:small, _("Back to login")), :action => 'login')
    end
  end
end
