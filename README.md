# gikou-docker

This is a Docker Image which contains the Shogi AI [技巧](https://github.com/gikou-official/Gikou).

[![](https://images.microbadger.com/badges/image/naoys/gikou.svg)](https://microbadger.com/images/naoys/gikou "Get your own image badge on microbadger.com")

# Usage

## To execute AI

```
$ docker run -it naoys/gikou
(interactive USI session)
> usi
id name Gikou 20160606
id author Yosuke Demura
option name BookMaxPly type spin default 50 min 0 max 50
option name ByoyomiMargin type spin default 100 min 0 max 10000
option name DrawScore type spin default 0 min -200 max 200
option name FischerMargin type spin default 12000 min 0 max 60000
option name MinBookScoreForBlack type spin default 0 min -500 max 500
option name MinBookScoreForWhite type spin default -180 min -500 max 500
option name MinThinkingTime type spin default 1000 min 10 max 60000
option name MultiPV type spin default 1 min 1 max 700
option name NarrowBook type check default false
option name OwnBook type check default true
option name SuddenDeathMargin type spin default 60 min 0 max 600
option name Threads type spin default 2 min 1 max 64
option name TinyBook type check default false
usiok
> setoption name USI_Ponder value false
> setoption name USI_Hash value 256
> setoption name MultiPV value 1
> isready
readyok
> usinewgame
> position startpos moves 2g2f 8c8d 7g7f 4a3b 6i7h 8d8e 8h7g 3c3d 7i8h 2b7g+ 8h7g 3a4b 3i3h 7a7b 4g4f 6c6d 3g3f 7b6c 5i6h 4b3c 3h4g 7c7d
> go btime 0 wtime 0 byoyomi 3000
info depth 1 seldepth 1 time 1 nodes 190 nps 190000 hashfull 142 score cp 151 multipv 1 pv 6h7i
info depth 2 seldepth 2 time 1 nodes 827 nps 827000 hashfull 142 score cp 227 multipv 1 pv 4i5h 6a5b
...
info depth 21 seldepth 22 time 2904 nodes 2092176 nps 720446 hashfull 176 score cp 104 multipv 1 pv 9g9f 9c9d 1g1f 1c1d 6h7i 6a5b 2i3g 8a7c 6g6f 5a4b 4g5f 6c5d 4f4e 4b3a 4i5h 5b6c 2h4h 6d6e 6f6e 5d6e
bestmove 9g9f
```

## To build static linked binary

Static linked binary `builder/gikou` will be created.

```
$ ./builder/runbuild.sh
```

