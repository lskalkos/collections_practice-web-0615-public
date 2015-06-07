

#Low level way to do ascending order using .delete
def sort_array_asc(array)

  asc_array = []

  while array.length > 0 #set up a loop so that we get the next lowest number until the array is empty

    index = 0
    lowest_number = array[0]

    while index < array.length #loop through the array to find the lowest number

      if array[index] < lowest_number
        lowest_number = array[index]
      end

      index+=1
    end

    asc_array << lowest_number
    array.delete(lowest_number)

  end

  asc_array
end

#Low level way to do descending order using .delete
def sort_array_desc(array)

  desc_array = []

  while array.length > 0

    index = 0
    highest_number = array[0]

    while index < array.length

      if array[index] > highest_number
        highest_number = array[index]
      end

      index+=1
    end

    desc_array << highest_number
    array.delete(highest_number)

  end

  desc_array
end

def reverse_array(array)
  i = 0
  array_copy = []
  array_length = array.length

  while i < array_length
    last = array.pop
    array_copy << last
    i+=1
  end
  array_copy
end

def kesha_maker(array)
  array.map do |item| #map is good when we want to make a change to every item in the array
    item[2]="$"
    item
  end
end

def greater_and_less_than_10(array)
  numbers_hash = {}
  numbers_hash["greater_than_10"] = []
  numbers_hash["less_than_10"] = []

  array.each do |number|
    if number < 10
      numbers_hash["less_than_10"] << number
    elsif number > 10
      numbers_hash["greater_than_10"] << number
    else
      false
    end
  end

  numbers_hash
end

def find_winners(hash)

  winners = []

  hash.each do |person, status|
    if status == "winner"
      winners << person
    end
  end

  winners
end

def find_a(array)
  a_words = []

  array.each do |word|
    if word[0] == "a"
     a_words << word
    end
  end

  a_words
end

def sum_array(array)
  sum = 0
  array.each do |number| #each is a good method to use if we generally want to do something with each item
    sum = sum + number
  end

  sum
end


def add_s(array)

  new_arr = []

  counter = 0
  while counter < array.length #using a while loop gives finer control than each here
    if counter != 1
      new_arr << array[counter] + "s"
    else
      new_arr << array[counter]
    end
    counter +=1
  end

  new_arr
end

def count_words(story)
  number_words = Hash.new(0) #initialize the hash with a default value so that we can keep track of our word count for each word

  story.split(" ").each do |word|
    number_words[word] +=1
  end

  number_words
end

def organize_songs_by_artist(songs)

  songs_by_artist = Hash.new(0) #initialize the hash with a default value so that we can check if there are 0 entries for a given key

  songs.each do |song|
    artist_stop = song.index("-")
    artist = song.slice(0, artist_stop-1)
    title = song.slice(artist_stop+2, song.length)

    if songs_by_artist[artist] == 0 #if there is no entry for this key, initialize an array
      songs_by_artist[artist] = []
      songs_by_artist[artist] << title
    else
      songs_by_artist[artist] << title
    end

  end

  songs_by_artist

end

def swap_elements(array)
  second = array.delete(array[1])
  third = array.delete(array[1])

  array.insert(1, third).insert(2, second)

  array
end