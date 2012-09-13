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

Any additional Filepicker.io configuration can be passed within an optional data hash passed to the view helper method.

    <%= f.filepickerio_field :uploader_name, data: { "fp-button-text" => "Pick a lolcat to upload" } %>

See [https://developers.filepicker.io/docs/web/](https://developers.filepicker.io/docs/web/) for a full list of configuration options.