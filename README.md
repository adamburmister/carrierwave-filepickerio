carrierwave-filepickerio
========================

FilePicker.io support for CarrierWave.

Installation
------------

Install the latest stable release:

    gem install carrierwave-filepickerio

In Rails, add it to your Gemfile:

    gem 'carrierwave-filepickerio'

Configuration
-------------

Add your FilePicker.io API key to the CarrierWave initializer:

    CarrierWave.configure do |config|
      # ... add the following
      config.filepickerio_api_key = '[Your API key]'
    end

Usage
-----

Setup a CarrierWave uploader as normal. 

To use the FilePicker.io uploader you need to call the view helper like so:

    <%= f.filepickerio_field :uploader_name %>

This will render a hidden input configured for the uploader, as well as including the required JavaScript in the page.

You may include any of the additional parameters...

Additional Options
------------------


text	The text to show on the button. Defaults to "Pick File".

class	The class(es) to be applied to the button for styling, for example "btn btn-primary"

mimetypes	The mimetype(s) that the input should be limited to, for example "image/png,text/*"

container	Where to load the filepicker UI into. Possible values are "window", "modal", or the id of an iframe in the current document. Defaults to "modal"

multiple	If "true", allow the user to select multiple files. The value of the input field will be a list of the selected urls, separated by commas. Defaults to "false". (Note: "true" and "false" are strings)

persist	If "true", the uploaded files are persisted. Defaults to false. Learn more about persistance.

services	The list of services to limit to, by name. For example "BOX,COMPUTER,FACEBOOK"

onchange	When the dialog finishes uploading the file, the javascript code in the onchange field will be run with a special 'event' variable. The variable has a files attribute with information about the files (jQuery users: look under event.originalEvent).

See [https://developers.filepicker.io/docs/web/](https://developers.filepicker.io/docs/web/) for more details.