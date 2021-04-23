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
    ##| 1
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
    
    ##| 3
    arpeggio [:F4, :A4, :D5], 0.5
    play_piano_note [:D5], 1
    play_piano_note [:C5], 0.5
    arpeggio [:F4, :Ab4, :D5], 0.5
    play_piano_note [:D5], 1
    play_piano_note [:D5], 0.5
    
  end
  
  in_thread(name: :suport) do
    #4/4 Time
    
    ##| 1
    arpeggio [:D3], 2
    arpeggio [:G3,:F4,:A4], 2
    
    ##| 3
    arpeggio [:D3,:C4], 2
    arpeggio [:D3,:B3], 2
  end
end

# ------------------------------------------------------------------------------------ #

