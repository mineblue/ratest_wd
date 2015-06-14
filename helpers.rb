require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./tests.db"
)

class Tests < ActiveRecord::Base
end

use Rack::Cache

helpers do
  include Rack::Utils
  alias_method :h, :escape_html

  def nl2br(s)
    s.gsub("\n", "<br>\n")
  end

  def df
    d = Time.now
    d.strftime("%Y%m%d%H%M%S")
  end

  def vdf
    d = Time.now
    d.strftime("%Y/%m/%d %H:%M:%S")
  end
end
