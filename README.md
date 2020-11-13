# NWNT
Repository for the GFF&lt;->NWNT conversion tool and library

Based on nwn_gff from the neverwinter.nim tools, this project utilises the libraries of those tools for a custom output language instead of json. The output language is designed to be similar to Json that has been put through gron. I have dubbed this format "NeverWinter Nights Text" NWNT.

    Similar conversion speed with both directions when compared to Json.
    file size approx 1/2 of Json (and 1/9 of the same Json put through Gron)
    line-count approx 1/4 of Json (and 1/3 of Gron
    single-line identifiable fields. Sample output below:

    EntryList[].RepliesList[]$List = 3
    EntryList[].RepliesList[].Index$Dword = 1336
    EntryList[].RepliesList[].Active$ResRef =
    EntryList[].RepliesList[].IsChild$Byte = 0

    Placeable List[].VisualTransform$Struct = 6
    Placeable List[].VisualTransform.ScaleZ$Float = 2.0
    Placeable List[].VisualTransform.ScaleY$Float = 2.0
    Placeable List[].VisualTransform.ScaleX$Float = 2.0

The general form being

    listName[].structname.lable$type = value
