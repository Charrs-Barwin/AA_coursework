def all_words_capitalized?(words)
    words.all? {|w| w == w[0].upcase + w[1..-1].downcase}
end

def no_valid_url?(urls)
    urls.none? {|u| u.end_with?('.com', '.net', '.io', '.org')}
end

def any_passing_students?(students)
    students.any? {|s| s[:grades].sum/s[:grades].size >= 75}
end
