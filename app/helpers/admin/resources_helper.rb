module Admin::ResourcesHelper
  def resource_action_links(resource)
    links ||= []
    if resource.mime =~ /image/
      links = [ link_to(_("Thumbnail"), resource.upload.thumb.url),
                link_to(_("Medium size"), resource.upload.medium.url),
                link_to(_("Original size"), resource.upload.url)]
    end
    links << small_to_delete(resource)
    content_tag :small do
      links.join(" | ").html_safe
    end
  end
end
