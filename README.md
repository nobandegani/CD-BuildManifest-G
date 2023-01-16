# CD-BuildManifest-G
this is depricated, and not working.
replaced with win64/application.
will add to repo in the future.
BuildManifest Generator for Unreal engine ChunkDownloader plugin

* batch script can create build manifest for chunk downloader

* when u open it, it gets 4 input entry
*  1-custom name, the name of ur build manifest
      for example if u input "VariantA", it will create "BuildManifest-VariantA.txt"
*  2-Build ID, set input text as ur build id
      for example if u input "Patcher-Live", it will put "$BUILD_ID = Patcher-Live" inside ur build manifest
*  3-Version Number, set input text as ur version
      for example if u input "ver001", it will put"pakchunk***-***.pak		***		ver001	***	/***/***.pak"
*  4-Custom Path, set input text as ur custom path
      for example if u input "VariantA", it will put"pakchunk***-***.pak		***		***	***	/VariantA/***.pak"
