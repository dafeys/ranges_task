#  The specified hash @webBook, the keys of which contain information about the pages of the book, and the values about the book chapter corresponding to the pages.

@webBook = {
   1 => "introduction.html",
   2..18 => "chapter1.html",
   19..44 => "chapter2.html",
   45..78 => "chapter3.html",
   79..133 => "chapter4.html",
   134..187 => "chapter5.html",
   188..192 => "conclusion.html",
   193 => "usefulLinks.html"
}

# It is necessary to write the get_chapter(page) method, which accepts the page page and outputs to the console the chapter of the book to which the page page corresponds.

def get_chapter(page)
  @webBook.each do |pages, chapter|
    puts chapter if pages.is_a?(Range) ? pages.include?(page) : pages == page
  end
  nil
end

get_chapter(1)        # introduction.html
get_chapter(134)      # chapter5.html
get_chapter(2)        # chapter1.html
get_chapter(193)      # usefulLinks.html
