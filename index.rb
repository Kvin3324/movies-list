movies = {
  The_lord_of_rings: 4.2,
  Transformers: 5
}

puts 'Welcome in your movie list'

loop do
  puts 'What do you want to do ? (Please enter: add, update, display, delete, exit)'
  choice = gets.chomp

  case choice
  when 'exit'
    break

  when 'add'
    puts 'Which movie do you want to add ?'
    title = gets.chomp
    puts "What's the rating ? (Type a number 0 to 5)"
    rating = gets.chomp

    if movies[title.to_sym].nil?
      # movies[title.to_sym] = rating.to_i
      movies.store(title, rating)
      puts "Your movie, #{title}, is added to your list with the rate of: #{rating.to_i}"
    elsif movies.key?(title.to_sym)
      puts "The movie, #{title}, already exists."
    else
      puts 'Enter a good action.'
    end
    movies.each_key { |movie_title| puts movie_title }

  when 'update'
    puts 'Which movie dou you want update ?'
    movies.each_key { |movie_title| puts movie_title }

    title_choice_update = gets.chomp
    if movies[title_choice_update.to_sym].nil?
      puts 'Movie not found'
    else
      puts "Which rating do you to attribute to #{title_choice_update} ? (Rate 0 to 5)"
      rating_choice_update = gets.chomp.to_i
      movies.store(title_choice_update, rating_choice_update)
      puts "#{title_choice_update} has the new rating of #{rating_choice_update}"
    end

  when 'display'
    movies.each_key { |all_title| puts all_title }

  when 'delete'
    puts 'Which movie do you want to delete ?'
    movies.each_key { |all_title| puts all_title }
    title_choice = gets.chomp
    if movies.key?(title_choice.to_sym)
      puts "The movie, #{title_choice.to_sym}, doesn't exists."
    else
      movies.delete(title_choice.to_sym)
      puts "#{title_choice.to_sym} has been delete from your list."
    end
  end
end
