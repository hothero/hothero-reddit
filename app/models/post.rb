class Post
  attr_accessor :id, :title, :summary, :url, :img_url, :created_at, :vote_count

  def initialize(id:, title:, summary:, url:, img_url: "", vote_count: 0)
    # TODOs: refactor to eval or hashify

    self.id = id
    self.title = title
    self.summary = summary
    self.url = url
    self.img_url = img_url
    self.created_at = Time.now
    self.vote_count = vote_count
  end
end
