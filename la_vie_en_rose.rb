# Sources
# Audio Samples:
# https://www.youtube.com/watch?v=eu1auaUHy0c
# https://www.youtube.com/watch?v=jcKypsr-VL4
# Tools:
# Transposing tool
# Sheet Musice samples:
# https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0190978
# https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0193822&ca=0&cmpid=art_the_piano_keys&utm_source=art_the_piano_keys&utm_medium=campaign

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

with_fx :reverb,room: 0.5 do
  use_synth :piano
  use_bpm 64
  
  in_thread(name: :main) do
    ##| Ab | Bb | Db | Eb
    arpeggio [:Ab3, :C4, :Eb4], 0.5
    play_piano_note [:D4, :F4], 0.5
    play_piano_note [:F4, :Ab4], 0.5
    play_piano_note [:Bb4], 0.5
    
    arpeggio [:Gs4, :Ab4, :Eb5], 2
  end
  
  in_thread(name: :suport) do
    ##| Ab | Bb | Db | Eb
    arpeggio [:Bb3], 2
    arpeggio [:Eb3,:Db4,:F4], 2
  end
end
