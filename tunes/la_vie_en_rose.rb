# ---------------------------------------- ABOUT ---------------------------------------- #
#
# Transcribed to Sonic-Pi Ruby Code for Stanton Bartholomew by wife, Meagan Bartholomew.
# With all my love; Happy anniversary. <3
#
# --------------------------------------------------------------------------------------- #

# --------------------------------------- CREDITS --------------------------------------- #
#
# La Vie En Rose (Take Me To Your Heart Again) for Cello and Piano
#   Music by Luis Guglielmi
#   Original French Lyrics by Edith Piaf
#   English Lyrics by David Mack
#   Arranged by Brooklyn Duo
#   Source: https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0190978
#   Bar 1 transposed from Ab Major to C Major for this arrangement.
#
# La Vie En Rose ( Take Me To Your Heart)
#   Music by Luis Guglielmi
#   Original French Lyrics by Edith Piaf
#   English Lyrics by David Mack
#   Arranged by The Piano Keys
#   Source: https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0193822&ca=0&cmpid=art_the_piano_keys&utm_source=art_the_piano_keys&utm_medium=campaign
#   Source: https://www.youtube.com/watch?v=jcKypsr-VL4
#   Primary source for this arrangement
#
# --------------------------------------------------------------------------------------- #

# --------------------------------------- FUNCTIONS --------------------------------------- #

define :rest do |length|
  sleep length
end

define :play_piano_note do | note, length |
  play note, decay: length*0.9, release: length*0.1, amp: 1
  sleep length
end

define :arpeggio do |notes, length|
  notes.each_with_index do | note, index |
    in_thread do
      delay = 0.1*index
      sleep delay
      play note, decay: (length*0.9 - delay), release: length*0.1, amp: 1
    end
  end
  sleep length
end

# ----------------------------------------------------------------------------------------- #

# --------------------------------------- MAIN --------------------------------------- #

with_fx :reverb,room: 0.5 do
  use_synth :piano
  use_bpm 64
  
  in_thread(name: :main) do
    ##| Intro
    arpeggio [:C4, :E4, :G4], 0.5
    play_piano_note [:F4, :A4], 0.5
    play_piano_note [:A4, :C5], 0.5
    play_piano_note [:D5], 0.5
    in_thread do
      arpeggio [:C4, :C5, :G5], 2
    end
    in_thread do
      sleep 1
      play_piano_note [:G4, :G5], 1
    end
    sleep 2
    
    use_bpm 70
    
    ##| 1
    arpeggio [:F4, :A4, :D5], 0.5
    play_piano_note [:D5], 1
    play_piano_note [:C5], 0.5
    arpeggio [:F4, :Ab4, :D5], 0.5
    play_piano_note [:D5], 1
    play_piano_note [:C5], 0.5
    
    ##| 2
    arpeggio [:E4, :G4, :E4, :D5], 0.5
    play_piano_note [:C5], 0.5
    play_piano_note [:B4], 0.33
    play_piano_note [:A4], 0.33
    play_piano_note [:G4], 0.33
    arpeggio [:Cs4, :E4, :A4], 1.5
    play_piano_note [:E4], 0.5
    
    ##| 3
    play_piano_note [:C4,:F4], 0.66
    play_piano_note [:E4,:A4], 0.66
    play_piano_note [:F4,:C5], 0.66
    arpeggio [:F4, :Ab4, :B4, :E5], 1.5
    play_piano_note [:D5], 0.5
    
    ##| 4

    
    ##| 5
    
    ##| 6
    
    ##| 7
    
    ##| 8
    
    ##| 9
    
    ##| 10
    
    ##| 11
    
    ##| 12
    
    ##| 13
    
    ##| 14
    
    ##| 15
    
    ##| 16
    
    ##| 17
    
    ##| 18
    
    ##| 19
    
    ##| 20
    
    ##| 21
    
    ##| 22
    
    ##| 23
    
    ##| 24
    
    ##| 25
    
    ##| 26
    
    ##| 27
    
    ##| 28
    
    ##| 29
    
    ##| 30
    
    ##| 31
    
    ##| 32
    
    ##| 33
    
    ##| 34
    
    ##| 35
    
    ##| 36
    
    ##| 37
    
    ##| 38
    
    ##| 39
    
    ##| 40
    
    ##| 41
    
    ##| 42
    
    ##| 43
    
    ##| 44
    
  end
  
  in_thread(name: :suport) do
    #4/4 Time
    
    ##| Intro
    arpeggio [:D3], 2
    arpeggio [:G3,:F4,:A4], 2
    
    use_bpm 70
    
    ##| 1
    arpeggio [:D3,:C4], 2
    arpeggio [:D3,:B3], 2
    
    ##| ##| 2
    arpeggio [:C3,:B3], 2
    arpeggio [:A2,:G3], 2
    
    ##| 3
    play_piano_note [:D3,:A3], 0.66
    play_piano_note [:F3,:C4], 0.66
    play_piano_note [:A3,:E4], 0.66
    arpeggio [:G3], 1
    play_piano_note [:G2], 1
    
    ##| 4-5
    2.times do
      play_piano_note [:C3], 1
      play_piano_note [:G3, :B3], 1
      play_piano_note [:G2], 1
      play_piano_note [:G3, :B3], 1
    end
    
    ##| 6
    play_piano_note [:C3], 1
    play_piano_note [:G3, :B3], 1
    play_piano_note [:G2], 1
    play_piano_note [:Eb2], 1
    
    ##| 7
    play_piano_note [:D2], 1
    play_piano_note [:F3, :A3], 1
    play_piano_note [:D3, :G3], 1
    play_piano_note [:G2], 1
    
    ##| 8
    play_piano_note [:D2], 1
    play_piano_note [:A3, :C4], 1
    play_piano_note [:G2], 1
    play_piano_note [:A3, :C4], 1
    
    ##| 9
    play_piano_note [:G2], 1
    play_piano_note [:F3, :B3], 1
    play_piano_note [:D3], 1
    play_piano_note [:F3, :B3], 1
    
    ##| 10
    play_piano_note [:D2], 1
    play_piano_note [:A3, :C4], 1
    play_piano_note [:G2, :F3], 1
    play_piano_note [:B2, :Ab3], 1
    
    ##| 11
    play_piano_note [:C3, :G3], 1
    play_piano_note [:Cs3, :G3], 1
    play_piano_note [:D3, :A3], 1
    play_piano_note [:G2, :F3], 1
    
    ##| 12- 13
    2.times do
      play_piano_note [:C3], 1
      play_piano_note [:G3, :B3], 1
      play_piano_note [:G2], 1
      play_piano_note [:G3, :B3], 1
    end
    
    ##| 14
    play_piano_note [:C3], 1
    play_piano_note [:G3, :B3], 1
    play_piano_note [:G2], 1
    play_piano_note [:Gb2], 1
    
    ##| 15
    play_piano_note [:F2], 1
    play_piano_note [:D3], 0.125
    play_piano_note [:F3], 0.125
    play_piano_note [:A3], 0.125
    play_piano_note [:C4], 0.125
    ##| TREBBLE
    play_piano_note [:D4], 0.125
    play_piano_note [:F4], 0.125
    play_piano_note [:A4], 0.125
    play_piano_note [:C5], 0.125
    play_piano_note [:G5], 2
    
    ##| 16
    ##| BASE
    play_piano_note [:F2], 1
    play_piano_note [:A3, :C4], 1
    play_piano_note [:F2], 1
    play_piano_note [:Ab3, :C4], 1
    
    ##| 17
    play_piano_note [:E2], 1
    play_piano_note [:G3, :C4], 1
    play_piano_note [:C2], 1
    play_piano_note [:E3, :Bb3, :D4], 1
    
    ##| 18
    play_piano_note [:F2], 1
    play_piano_note [:A3, :C4], 1
    play_piano_note [:F2], 1
    play_piano_note [:Ab3, :C4], 1
    
    ##| 19
    play_piano_note [:D2], 1
    play_piano_note [:E3, :Fs3, :C4], 1
    play_piano_note [:G2], 1
    play_piano_note [:F3, :B3, :D4], 1
    
    ##| 20 - 21
    2.times do
      play_piano_note [:C3], 1
      play_piano_note [:G3, :B3], 1
      play_piano_note [:G2], 1
      play_piano_note [:G3, :B3], 1
    end
    
    ##| 22
    play_piano_note [:D3], 1
    play_piano_note [:A3, :C4], 1
    play_piano_note [:G2, :F3], 2
    
    ##| 23
    play_piano_note [:C2], 1
    play_piano_note [:G3, :B3], 1
    play_piano_note [:Bb2, :Ab3], 1
    play_piano_note [:Eb2], 1
    
    ##| KEY CHANGE: Ab Bb Db Eb
    
    ##| 24 - 25
    2.times do
      play_piano_note [:Ab1], 1
      play_piano_note [:Eb3, :Ab3, :C4], 1
      play_piano_note [:Eb2], 1
      play_piano_note [:Eb3, :Ab3, :C4], 1
    end
    
    ##| 26
    play_piano_note [:Ab1], 1
    play_piano_note [:Eb3, :Ab3, :C4], 1
    play_piano_note [:Ab2], 1
    play_piano_note [:F3, :B3, :D4], 1
    
    ##| 27
    play_piano_note [:F3, :Ab3, :Bb3, :Db4], 1
    play_piano_note [:Bb2], 1
    play_piano_note [:Eb2], 1
    play_piano_note [:Eb3, :G3, :Db4], 1
    
    ##| 28
    play_piano_note [:Bb1], 1
    play_piano_note [:Bb3, :Db4, :F4], 1
    play_piano_note [:Eb2], 1
    play_piano_note [:Bb3, :Db4, :F4], 1
    
    ##| 29
    play_piano_note [:Bb1], 1
    play_piano_note [:Eb3, :G3, :Db3], 1
    play_piano_note [:Eb2], 1
    play_piano_note [:Eb3, :G3, :Db3], 1
    
    ##| 30
    play_piano_note [:Bb1], 0.5
    play_piano_note [:F3, :Db4], 0.5
    play_piano_note [:G3, :Eb4], 0.5
    play_piano_note [:Ab3, :Db4, :F4], 0.5
    play_piano_note [:G3, :Db4, :F4], 1
    play_piano_note [:Eb2], 1
    
    ##| 31
    play_piano_note [:Ab2], 1
    play_piano_note [:Bb3, :C4, :F4], 1
    play_piano_note [:Eb2], 1
    play_piano_note [:Eb3, :G3, :Db4], 1
    
    ##| 32
    play_piano_note [:Ab1, :Ab2], 1
    play_piano_note [:Ab3, :C4, :Eb4], 1
    play_piano_note [:Eb2, :Eb3], 1
    play_piano_note [:Ab1, :C4, :Eb4], 1
    
    ##| 33
    play_piano_note [:Ab1, :Ab2], 1
    play_piano_note [:G3, :C4, :Eb4], 1
    play_piano_note [:Eb2, :Eb3], 1
    play_piano_note [:Ab1, :C4, :Eb4], 1
    
    ##| 34
    play_piano_note [:Ab1, :Ab2], 1
    play_piano_note [:Eb3, :Bb3, :C4], 1
    play_piano_note [:Eb2, :Eb3], 1
    play_piano_note [:D2, :D3], 1
    
    ##| 35
    in_thread do
      play_piano_note [:Db2, :Db3], 4
    end
    in_thread do
      rest 0.6875
      play_piano_note [:Db3], 0.0625
      play_piano_note [:F3], 0.0625
      play_piano_note [:Ab3], 0.0625
      play_piano_note [:C4], 0.0625
      play_piano_note [:Eb4], 0.0625
      play_piano_note [:F4], 0.0625
      play_piano_note [:Ab4], 0.0625
      ##| TREBBLE
      play_piano_note [:Db4], 0.0625
      play_piano_note [:F4], 0.0625
      play_piano_note [:Ab4], 0.0625
      play_piano_note [:C5], 0.0625
      play_piano_note [:Eb5], 0.0625
      play_piano_note [:F5], 0.0625
      play_piano_note [:Ab5], 0.0625
      play_piano_note [:Db5], 0.0625
      play_piano_note [:F5], 0.0625
      play_piano_note [:Ab5], 0.0625
      play_piano_note [:C5], 0.0625
      play_piano_note [:Eb5], 0.0625
      play_piano_note [:F5], 0.0625
      play_piano_note [:Ab5], 0.0625
      play_piano_note [:Db2], 2
    end
    sleep 4
    
    ##| TREBBLE
    
    ##| 36
    play_piano_note [:Bb3, :F4, :Ab4], 2
    play_piano_note [:Bb3, :E4, :Ab4], 2
    
    ##| 37
    play_piano_note [:Bb3, :Eb4, :G4], 2
    play_piano_note [:Ab3, :Eb4, :G4], 2

    ##| BASE
    
    ##| 38
    play_piano_note [:Db3], 1
    play_piano_note [:Ab3, :Db4, :F4], 1
    play_piano_note [:Db3], 1
    play_piano_note [:Ab3, :D4, :Eb4], 1
    
    ##| 39
    play_piano_note [:Db3], 1
    play_piano_note [:Bb3, :F4, :Ab4], 1
    play_piano_note [:Eb3], 1
    play_piano_note [:Bb3, :Eb4, :G4], 1

    ##| TREBBLE
    
    ##| 40
    2.times do
      play_piano_note [:Ab3], 0.5
      play_piano_note [:Eb4], 0.5
      play_piano_note [:G4], 1
    end

    ##| BASE
    
    ##| 41
    2.times do
      play_piano_note [:Eb3], 0.5
      play_piano_note [:Ab3], 0.5
      play_piano_note [:Eb4], 1
    end
    
    ##| 42
    play_piano_note [:Eb3], 0.5
    play_piano_note [:Bb4], 0.5
    play_piano_note [:F4], 1
    play_piano_note [:Eb3], 0.5
    play_piano_note [:Bb4], 0.5
    play_piano_note [:G4], 1

    ##| TREBBLE
    
    ##| 43 - 44
    in_thread do
      play_piano_note [:Ab3], 8
    end
    in_thread do
      rest 0.5
      play_piano_note [:Eb4], 0.5
      play_piano_note [:C5], 7
    end
    sleep 8
  end
end

# ------------------------------------------------------------------------------------ #
