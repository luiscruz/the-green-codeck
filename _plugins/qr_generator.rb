require 'rqrcode'
require 'fileutils'

Jekyll::Hooks.register :site, :post_write do |site|
  base_url   = "#{site.config['url']}#{site.config['baseurl']}"
  output_dir = File.join(site.dest, 'assets', 'qr')
  FileUtils.mkdir_p(output_dir)

  categories  = site.data['categories']
  bgcolor_for = categories.each_with_object({}) { |c, h| h[c['name']] = c['background'] }

  site.collections['the-patterns'].docs.each do |doc|
    next unless doc.data['category']

    slug    = File.basename(doc.path, '.md')
    bgcolor = bgcolor_for[doc.data['category']] || 'ffffff'
    url     = "#{base_url}/the-patterns/#{slug}/"

    qr  = RQRCode::QRCode.new(url, level: :l)
    svg = qr.as_svg(color: '000000', fill: bgcolor, module_size: 4, standalone: true)

    File.write(File.join(output_dir, "#{slug}.svg"), svg)
  end
end
