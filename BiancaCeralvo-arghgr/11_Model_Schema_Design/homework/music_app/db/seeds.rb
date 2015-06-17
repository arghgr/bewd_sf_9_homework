Artist.create!([
  {name: "The Beatles", record_label_id: 2},
  {name: "Shania Twain", record_label_id: nil},
  {name: "Snoop Dogg", record_label_id: 1}
])
RecordLabel.create!([
  {name: "Doggystyle Records"},
  {name: "Apple Records"}
])
Song.create!([
  {title: "Achy Breaky Heart!", artist_id: nil},
  {title: "Electric Slide", artist_id: nil},
  {title: "Ob-la-di, Ob-la-da", artist_id: 1},
  {title: "Still the One", artist_id: 2},
  {title: "Yellow Submarine", artist_id: 1},
  {title: "Drop It Like It's Hot", artist_id: 3}
])
