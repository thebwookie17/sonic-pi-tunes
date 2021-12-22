# GAME OF THRONES - RAMIN DJAWADI - ARR LUCKY37
# SHEET MUSIC AVAILABILE AT https://musescore.com/user/158751/scores/2163051

## -------------------- FUNCTIONS : START -------------------- ##

define :basic_note do | note, length |
  play note, sustain: length*0.9, release: length*0.1, amp: 1
  sleep length
end

define :play_my_chord do | notes, length |
  notes.each do | note |
    play note, sustain: length*0.9, release: length*0.1, amp: 0.5
  end
  sleep length
end

## -------------------- FUNCTIONS : END -------------------- ##

# 3/4 time
##| use_synth :piano
use_bpm 168

in_thread do
  # Ab, Bb, Eb
  
  ##| # 1 - 4
  4.times do
    basic_note :G4, 1
    basic_note :C4, 1
    basic_note :Eb4, 0.5
    basic_note :F4, 0.5
  end
  
  ##| # 4 - 8
  4.times do
    basic_note :G4, 1
    basic_note :C4, 1
    basic_note :As4, 0.5 #As
    basic_note :F4, 0.5
  end
  
  ##| # 9
  basic_note :G4, 3
  
  ##| # 10
  basic_note :C4, 3
  
  ##| # 11
  play_my_chord [:C4,:Eb4], 0.5
  basic_note :F4, 0.5
  basic_note :G4, 2
  
  ##| # 12
  basic_note :C4, 2
  basic_note :Eb4, 0.5
  basic_note :F4, 0.5
  
  ##| # 13
  play_my_chord [:G4,:Bb3], 1
  basic_note :G3, 1
  basic_note :Bb3, 0.5
  basic_note :C4, 0.5
  
  ##| # 14
  basic_note :D4, 1
  basic_note :G3, 1
  basic_note :Bb3, 0.5
  basic_note :C4, 0.5
  
  ##| # 15
  play_my_chord [:D4,:Bb3], 1
  basic_note :G3, 1
  basic_note :Bb3, 0.5
  basic_note :C4, 0.5
  
  ##| # 16
  basic_note :D4, 1
  basic_note :G3, 1
  basic_note :Bb3, 1
  
  ##| # 17
  basic_note :F4, 3
  
  ##| # 18
  basic_note :Bb3, 3
  
  ##| # 19
  play_my_chord [:Bb3,:Eb4], 0.5
  basic_note :D4, 0.5
  basic_note :F4, 2
  
  ##| # 20
  basic_note :Bb3, 2
  basic_note :Eb4, 0.5
  basic_note :D4, 0.5
  
  ##| # 21
  play_my_chord [:Ab3,:C4], 1
  basic_note :F3, 1
  basic_note :Ab3, 0.5
  basic_note :Bb3, 0.5
  
  ##| # 22
  basic_note :C4, 1
  basic_note :F3, 1
  basic_note :Ab3, 0.5
  basic_note :Bb3, 0.5
  
  ##| # 23
  play_my_chord [:Ab3,:C4], 1
  basic_note :F3, 1
  basic_note :Ab3, 0.5
  basic_note :Bb3, 0.5
  
  ##| # 24
  basic_note :C4, 1
  basic_note :F3, 1
  basic_note :Ab3, 1
  
  ##| # 25
  basic_note :G4, 3
  
  ##| # 26
  basic_note :C4, 3
  
  ##| # 27
  play_my_chord [:Eb4,:C4], 0.5
  basic_note :F4, 0.5
  basic_note :G4, 2
  
  ##| # 28
  basic_note :C4, 2
  basic_note :Eb4, 0.5
  basic_note :F4, 0.5
  
  # 29
  play_my_chord [:Bb3,:D4], 1
  basic_note :G3, 1
  basic_note :Bb3, 0.5
  basic_note :C4, 0.5
  
  # 30
  basic_note :D4, 1
  basic_note :G3, 1
  basic_note :Bb3, 0.5
  basic_note :C4, 0.5
  
  # 31
  play_my_chord [:Bb3,:D4], 1
  basic_note :G3, 1
  basic_note :Bb3, 0.5
  basic_note :C4, 0.5
  
  # 32
  basic_note :D4, 1
  basic_note :G3, 1
  basic_note :Bb3, 1
  
  # 33
  basic_note :F4, 3
  
  # 34
  basic_note :Bb3, 3
  
  # 35
  play_my_chord [:Bb3,:Eb4], 0.5
  basic_note :D4, 0.5
  basic_note :F4, 2
  
  # 36
  basic_note :Bb3, 2
  basic_note :Eb4, 0.5
  basic_note :D4, 0.5
  
  # 37
  play_my_chord [:Ab3,:C4], 1
  basic_note :G3, 1
  basic_note :Ab3, 0.5
  basic_note :Bb3, 0.5
  
  # 38
  basic_note :C4, 1
  basic_note :G3, 1
  basic_note :Ab3, 0.5
  basic_note :Bb3, 0.5
  
  # 39
  play_my_chord [:Ab3,:C4], 1
  basic_note :G3, 1
  basic_note :Ab3, 0.5
  basic_note :Bb3, 0.5
  
  # 40
  basic_note :C4, 1
  basic_note :G3, 1
  basic_note :C4, 1
  
  # 41
  basic_note :G3, 3
  
  # 42
  basic_note :C3, 3
  
  # 43
  play_my_chord [:C3,:Eb3], 0.5
  basic_note :F3, 0.5
  basic_note :G3, 2
  
  # 44
  basic_note :C3, 2
  basic_note :Eb3, 0.5
  basic_note :F3, 0.5
  
  # 45- 47
  3.times do
    basic_note :D3, 2
    basic_note :Bb2, 0.5
    basic_note :C3, 0.5
  end
  
  # 48
  basic_note :D3, 1
  basic_note :Bb2, 1
  basic_note :D3, 1
  
  # 49
  basic_note :F3, 3
  
  # 50
  basic_note :Bb2, 3
  
  # 51
  basic_note :D3, 2
  basic_note :Eb3, 1
  
  # 52
  basic_note :D3, 3
  
  # 53
  
  # 54
  
  # 55
  
  # 56
  
  # 57
  
  # 58
  
  # 59
  
  # 60
  
  # 61
  
  # 62
  
  # 63
  
  # 64
  
  # 65
  
  # 66
  
  # 67
  
  # 68
  
  # 69
  
  # 70
  
  # 71
  
  # 72
  
  # 73
  
  # 74
  
  # 75
  
  # 76
  
  # 77
  
  # 78
  
  # 79
  
  # 80
  
  # 81
  
  # 82
  
  # 83
  
  # 84
  
  # 85
  
  # 86
  
  # 87
  
  # 88
  
  # 89
  
  # 90
  
  # 91
  
  # 92
end

in_thread do
  # Ab, Bb, Eb
  
  ##| # 1 - 12
  6.times do
    play_my_chord [:C2,:G3], 6
  end
  
  ##| # 13 - 16
  2.times do
    play_my_chord [:G3,:D3], 6
  end
  
  ##| # 17 - 20
  2.times do
    play_my_chord [:Bb2,:F3], 6
  end
  
  ##| # 21 - 24
  2.times do
    play_my_chord [:F3,:C4], 6
  end
  play_my_chord [:F3,:C4], 1
  
  ##| # 25 - 28
  4.times do
    play_my_chord [:C2,:G3], 2
    play_my_chord [:C2,:G3], 1
  end
  
  # 29 - 32
  4.times do
    play_my_chord [:G3,:D3], 2
    play_my_chord [:G3,:D3], 1
  end
  
  # 33 - 36
  4.times do
    play_my_chord [:Ab2,:F3], 2
    play_my_chord [:Ab2,:F3], 1
  end
  
  # 37 - 40
  4.times do
    play_my_chord [:C3,:G3], 2
    play_my_chord [:C3,:G3], 1
  end
  
  # 41- 44
  4.times do
    basic_note :Ab2, 0.5
    basic_note :Eb3, 0.5
    basic_note :C4, 0.5
    basic_note :Eb4, 0.5
    basic_note :G4, 1
  end
  
  # 45- 48
  4.times do
    basic_note :G3, 0.5
    basic_note :D4, 0.5
    2.times do
      basic_note :G4, 0.5
      basic_note :D4, 0.5
    end
  end
  
  # 49 - 52
  4.times do
    basic_note :Bb3, 0.5
    basic_note :F4, 0.5
    2.times do
      basic_note :Bb4, 0.5
      basic_note :F4, 0.5
    end
  end
  
  # 53 - 55
  3.times do
    basic_note :C3, 0.5
    basic_note :G3, 0.5
    2.times do
      basic_note :C4, 0.5
      basic_note :G3, 0.5
    end
  end
  
  # 56
  play_my_chord [:C3,:G3], 1
  play_my_chord [:C3,:G3], 1
  play_my_chord [:C3,:G3], 1
  
  # 57 - 58
  2.times do
    play_my_chord [:Ab3,:Eb4], 2
    play_my_chord [:Ab3,:Eb4], 1
  end
  
  # 59 - 60
  2.times do
    play_my_chord [:Eb3,:Bb3], 2
    play_my_chord [:Eb3,:Bb3], 1
  end
  
  # 61 - 62
  2.times do
    play_my_chord [:F3,:C4], 2
    play_my_chord [:F3,:C4], 1
  end
  
  # 63- 64
  2.times do
    play_my_chord [:C3,:G3], 2
    play_my_chord [:C3,:G3], 1
  end
  
  # 65-66
  2.times do
    play_my_chord [:Ab3,:Eb4], 2
    play_my_chord [:Ab3,:Eb4], 1
  end
  
  # 67
  play_my_chord [:Ab3,:Eb4], 1
  play_my_chord [:Ab3,:Eb4], 1
  play_my_chord [:Ab3,:Eb4], 1
  
  # 68
  play_my_chord [:G3,:D4], 1
  play_my_chord [:G3,:D4], 1
  play_my_chord [:G3,:D4], 1
  
  # 69 - 71
  3.times do
    play_my_chord [:C3,:G3], 2
    play_my_chord [:C3,:G3], 1
  end
  
  # 72
  play_my_chord [:Eb3,:Bb3], 2
  play_my_chord [:Eb3,:Bb3], 1
  
  # 73 - 74
  2.times do
    play_my_chord [:Ab3,:Eb4], 2
    play_my_chord [:Ab3,:Eb4], 0.5
    play_my_chord [:Ab3,:Eb4], 0.5
  end
  
  # 75 - 76
  2.times do
    play_my_chord [:Eb3,:Bb3], 2
    play_my_chord [:Eb3,:Bb3], 0.5
    play_my_chord [:Eb3,:Bb3], 0.5
  end
  
  # 77 - 78
  2.times do
    play_my_chord [:F3,:C4], 2
    play_my_chord [:F3,:C4], 0.5
    play_my_chord [:F3,:C4], 0.5
  end
  
  # 79 - 80
  2.times do
    play_my_chord [:C3,:G3], 2
    play_my_chord [:C3,:G3], 0.5
    play_my_chord [:C3,:G3], 0.5
  end
  
  # 81 - 82
  2.times do
    play_my_chord [:Ab3,:Eb4], 2
    play_my_chord [:Ab3,:Eb4], 0.5
    play_my_chord [:Ab3,:Eb4], 0.5
  end
  
  # 83
  play_my_chord [:Ab3,:Eb4], 1
  play_my_chord [:Ab3,:Eb4], 1
  play_my_chord [:Ab3,:Eb4], 1
  
  # 84
  play_my_chord [:G3,:D4], 1
  play_my_chord [:G3,:D4], 1
  play_my_chord [:G3,:D4], 1
  
  # 85 - 88
  4.times do
    play_my_chord [:C3,:G3], 2
    play_my_chord [:C3,:G3], 0.5
    play_my_chord [:C3,:G3], 0.5
  end
  
  # 89- 90
  basic_note :C3, 6
  
  # 91- 92
  # Rest
end

