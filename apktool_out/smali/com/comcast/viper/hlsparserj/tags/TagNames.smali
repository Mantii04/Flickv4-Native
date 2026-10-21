.class public Lcom/comcast/viper/hlsparserj/tags/TagNames;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTINF:Ljava/lang/String; = "EXTINF"

.field public static final EXTXALLOWCACHE:Ljava/lang/String; = "EXT-X-ALLOW-CACHE"

.field public static final EXTXBYTERANGE:Ljava/lang/String; = "EXT-X-BYTERANGE"

.field public static final EXTXDISCONTINUITY:Ljava/lang/String; = "EXT-X-DISCONTINUITY"

.field public static final EXTXIFRAMESONLY:Ljava/lang/String; = "EXT-X-I-FRAMES-ONLY"

.field public static final EXTXIFRAMESSTREAMINF:Ljava/lang/String; = "EXT-X-I-FRAME-STREAM-INF"

.field public static final EXTXKEY:Ljava/lang/String; = "EXT-X-KEY"

.field public static final EXTXMEDIA:Ljava/lang/String; = "EXT-X-MEDIA"

.field public static final EXTXMEDIASEQUENCE:Ljava/lang/String; = "EXT-X-MEDIA-SEQUENCE"

.field public static final EXTXPLAYLISTTYPE:Ljava/lang/String; = "EXT-X-PLAYLIST-TYPE"

.field public static final EXTXPROGRAMDATETIME:Ljava/lang/String; = "EXT-X-PROGRAM-DATE-TIME"

.field public static final EXTXSTREAMINF:Ljava/lang/String; = "EXT-X-STREAM-INF"

.field public static final EXTXTARGETDURATION:Ljava/lang/String; = "EXT-X-TARGETDURATION"

.field public static final EXTXVERSION:Ljava/lang/String; = "EXT-X-VERSION"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "EXT-X-VERSION"

    .line 2
    .line 3
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/Version;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "EXT-X-STREAM-INF"

    .line 9
    .line 10
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/master/StreamInf;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "EXT-X-MEDIA"

    .line 16
    .line 17
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/master/Media;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "EXTINF"

    .line 23
    .line 24
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/ExtInf;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "EXT-X-BYTERANGE"

    .line 30
    .line 31
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/ByteRange;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "EXT-X-TARGETDURATION"

    .line 37
    .line 38
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/TargetDuration;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "EXT-X-MEDIA-SEQUENCE"

    .line 44
    .line 45
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/MediaSequence;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "EXT-X-KEY"

    .line 51
    .line 52
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/Key;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "EXT-X-ALLOW-CACHE"

    .line 58
    .line 59
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/AllowCache;

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "EXT-X-PLAYLIST-TYPE"

    .line 65
    .line 66
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/PlaylistType;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "EXT-X-I-FRAMES-ONLY"

    .line 72
    .line 73
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/media/IFramesOnly;

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "EXT-X-I-FRAME-STREAM-INF"

    .line 79
    .line 80
    const-class v1, Lcom/comcast/viper/hlsparserj/tags/master/IFrameStreamInf;

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/comcast/viper/hlsparserj/tags/TagFactory;->registerTag(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
