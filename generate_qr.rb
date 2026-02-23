#!/usr/bin/env ruby
# Generates QR code SVGs for all patterns and saves them to assets/qr/.
# Run this whenever a new pattern is added:
#   bundle exec ruby generate_qr.rb

require 'yaml'
require 'rqrcode'
require 'fileutils'

BASE_URL   = 'https://luiscruz.github.io/the-green-codeck'
OUTPUT_DIR = 'assets/qr'

categories = YAML.load_file('_data/categories.yml')
bgcolor_for = categories.each_with_object({}) { |c, h| h[c['name']] = c['background'] }

FileUtils.mkdir_p(OUTPUT_DIR)

Dir.glob('_the-patterns/*.md').sort.each do |file|
  raw   = File.read(file)
  match = raw.match(/\A---\n(.*?)\n---/m)
  unless match
    puts "#{File.basename(file, '.md')} ... skipped (no frontmatter)"
    next
  end

  front    = YAML.safe_load(match[1])
  slug     = File.basename(file, '.md')
  category = front['category']
  bgcolor  = bgcolor_for[category] || 'ffffff'

  pattern_url = "#{BASE_URL}/the-patterns/#{slug}/"
  print "#{slug} ... "

  qr  = RQRCode::QRCode.new(pattern_url)
  svg = qr.as_svg(
    color:       "000000",
    fill:        bgcolor,
    module_size: 4,
    standalone:  true
  )

  File.write("#{OUTPUT_DIR}/#{slug}.svg", svg)
  puts "ok"
end

puts "\nDone. #{Dir.glob("#{OUTPUT_DIR}/*.svg").size} QR codes in #{OUTPUT_DIR}/"
