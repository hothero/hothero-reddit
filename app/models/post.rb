class Post
  attr_accessor :title, :summary, :url, :img_url, :created_at

  def initialize(title:, summary:, url:, img_url: "")
    # TODOs: refactor to eval or hashify

    self.title = title
    self.summary = summary
    self.url = url
    self.img_url = img_url
    self.created_at = Time.now
  end
end
