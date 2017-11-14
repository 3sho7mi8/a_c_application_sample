namespace :cron_task do
  desc "Scraping"
  task :sample => :environment do
    counts = Gallery.count
    Gallery.all.each.with_index(1) do |gallery, index|
      puts "> (#{index}/#{counts})checking #{gallery.name}...."
      respond = Scrapingon.new(gallery.uri, gallery.id)
      next if respond.title == gallery.exhibitions.last.title
      gallery.exhibitions.create(
        title: respond.title,
        image: respond.image,
        description: respond.description
      )
      puts ">> updated #{gallery.name}."
    end
  end
end
