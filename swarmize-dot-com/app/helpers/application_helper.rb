module ApplicationHelper

  def will_paginate(collection_or_options = nil, options = {})
    if collection_or_options.is_a? Hash
      options, collection_or_options = collection_or_options, nil
    end
    unless options[:renderer]
      options = options.merge :renderer => BootstrapPagination::Rails
    end
    super *[collection_or_options, options].compact
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when :success
        "alert-success" # Green
      when :error
        "alert-danger" # Red
      when :alert
        "alert-warning" # Yellow
      when :notice
        "alert-info" # Blue
      else
        flash_type.to_s
    end
  end

  def login_path
    "/auth/google_oauth2"
  end


  # this comes from the old Sinatra app
  def format_timestamp(ts)
    t = Time.at(ts / 1000 / 1000)
    t.strftime("%d %B %Y %H:%M:%S")
  end
end
