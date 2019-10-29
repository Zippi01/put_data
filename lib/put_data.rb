class Put
  def self.test (content, bypass_html)
    save = ''
    if bypass_html == false
        save = content.gsub(/<script>.*<\/script>/, '')
    else
        save = content
    end
    f = File.new("index.html", "w")
    f.write("<!DOCTYPE html>\n")
    f.write("<html lang='en'>")
    f.write("<head>\n<meta charset='utf-8'>\n<title> Web </title>\n</head>\n")
    f.write("<body>\n#{save}\n</body>\n")
    f.write("</html>")
    f.close
  end
end
