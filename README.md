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

After setting up your CarrierWave uploader as per normal (see the CarrierWave site for more information) you need to configure your page to use the Filepicker.io widget.

First of all, include the filepicker.io JavaScript library in your page (such as your application.html.erb layout):

```erb
<%= javascript_include_tag "//api.filepicker.io/v0/filepicker.js" %>
```

... or, if you're not using the asset pipeline, you can use the expansion:

```erb
<%= javascript_include_tag :filepickerio %>
```

Form Builders
-------------

To use the FilePicker.io uploader you need to call the view helper like so:

```erb
<%= form_for @entry do |f| %>
  <%= f.fp_file_field :image %>
  <%= f.fp_save_button :image, "Save existing image to cloud", 'image/jpeg' %>
<%- end %>
```

You can change the button text by passing along a string as the first parameter

```erb
<%= f.fp_file_field :image, "Pick a picture" %>
```

To include a drag-n-drop area pass the dragdrop parameter in the options hash, which is the last parameter.

```erb
<%= f.fp_file_field :image, "Pick a picture", dragdrop: true %>
```

You can also attach any other events to the input as normal, for instance you can listen to change events:

```erb
<%= f.fp_file_field :image, "Pick a picture", dragdrop: true, onchange: '$("#pic").attr("src", arguments[0].files[0].url)' %>
```

Specify any Filepicker.io additional data options in the data hash

```erb
<%= f.fp_file_field :image, "Pick a picture", data: { 'fp-mimetypes' => 'image/jpeg,image/png' } %>
```

You may include any of the additional parameters...

Additional Options
------------------

Any additional Filepicker.io configuration can be passed within an optional data hash passed to the view helper method.

```erb
<%= f.fp_file_field :image, data: { "fp-button-text" => "Pick a lolcat to upload" } %>
```

See [https://developers.filepicker.io/docs/web/](https://developers.filepicker.io/docs/web/) for a full list of configuration options.
