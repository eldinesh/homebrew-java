require "formula"

class MysqlConnectorJava < Formula
  homepage "http://dev.mysql.com/downloads/connector/j/"
  version "8.0.28"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-#{version}.tar.gz"
  sha256 "859afba47f1fd99eb7c010bfa101ed7c0f8bb278f6f62430adc8012ea82fb454"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end
end
