.class public final Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final ATTR_QUOTED_STRING_VALUE_PATTERN:Ljava/lang/String; = "\"((?:.|\u000c)+?)\""

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final DATERANGE_CLASS_INTERSTITIALS:Ljava/lang/String; = "com.apple.hls.interstitial"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final LOG_TAG:Ljava/lang/String; = "HlsPlaylistParser"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_ASSET_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLASS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_CONTENT_MAY_VARY:Ljava/util/regex/Pattern;

.field private static final REGEX_CUE:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_END_DATE:Ljava/util/regex/Pattern;

.field private static final REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GAP:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_MSN:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_PART:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

.field private static final REGEX_PRECISE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_RESTRICT:Ljava/util/regex/Pattern;

.field private static final REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIP_CONTROL_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIP_CONTROL_LABEL_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIP_CONTROL_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_SNAP:Ljava/util/regex/Pattern;

.field private static final REGEX_START_DATE:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIMELINE_OCCUPIES:Ljava/util/regex/Pattern;

.field private static final REGEX_TIMELINE_STYLE:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DATERANGE:Ljava/lang/String; = "#EXT-X-DATERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_IFRAME:Ljava/lang/String; = "#EXT-X-I-FRAMES-ONLY"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_I_FRAME_STREAM_INF:Ljava/lang/String; = "#EXT-X-I-FRAME-STREAM-INF"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PART:Ljava/lang/String; = "#EXT-X-PART"

.field private static final TAG_PART_INF:Ljava/lang/String; = "#EXT-X-PART-INF"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PRELOAD_HINT:Ljava/lang/String; = "#EXT-X-PRELOAD-HINT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_RENDITION_REPORT:Ljava/lang/String; = "#EXT-X-RENDITION-REPORT"

.field private static final TAG_SERVER_CONTROL:Ljava/lang/String; = "#EXT-X-SERVER-CONTROL"

.field private static final TAG_SESSION_KEY:Ljava/lang/String; = "#EXT-X-SESSION-KEY"

.field private static final TAG_SKIP:Ljava/lang/String; = "#EXT-X-SKIP"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_MAP:Ljava/lang/String; = "MAP"

.field private static final TYPE_PART:Ljava/lang/String; = "PART"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field private final previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "VIDEO=\"((?:.|\u000c)+?)\""

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "AUDIO=\"((?:.|\u000c)+?)\""

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "SUBTITLES=\"((?:.|\u000c)+?)\""

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "CLOSED-CAPTIONS=\"((?:.|\u000c)+?)\""

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "CHANNELS=\"((?:.|\u000c)+?)\""

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    const-string v0, "CODECS=\"((?:.|\u000c)+?)\""

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    const-string v0, "SUPPLEMENTAL-CODECS=\"((?:.|\u000c)+?)\""

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 96
    .line 97
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    .line 106
    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 112
    .line 113
    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

    .line 120
    .line 121
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 122
    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 128
    .line 129
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 130
    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 138
    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 144
    .line 145
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 146
    .line 147
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 152
    .line 153
    const-string v0, "CAN-SKIP-DATERANGES"

    .line 154
    .line 155
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 160
    .line 161
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 162
    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    .line 170
    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 176
    .line 177
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 184
    .line 185
    const-string v0, "CAN-BLOCK-RELOAD"

    .line 186
    .line 187
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 192
    .line 193
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 194
    .line 195
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 200
    .line 201
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 202
    .line 203
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 208
    .line 209
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 210
    .line 211
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 216
    .line 217
    const-string v0, "LAST-MSN=(\\d+)\\b"

    .line 218
    .line 219
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 224
    .line 225
    const-string v0, "LAST-PART=(\\d+)\\b"

    .line 226
    .line 227
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 232
    .line 233
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 234
    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 240
    .line 241
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 242
    .line 243
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 248
    .line 249
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 250
    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 256
    .line 257
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    .line 258
    .line 259
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 264
    .line 265
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 266
    .line 267
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 272
    .line 273
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 274
    .line 275
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 280
    .line 281
    const-string v0, "KEYFORMAT=\"((?:.|\u000c)+?)\""

    .line 282
    .line 283
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 288
    .line 289
    const-string v0, "KEYFORMATVERSIONS=\"((?:.|\u000c)+?)\""

    .line 290
    .line 291
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 296
    .line 297
    const-string v0, "URI=\"((?:.|\u000c)+?)\""

    .line 298
    .line 299
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 304
    .line 305
    const-string v0, "IV=([^,.*]+)"

    .line 306
    .line 307
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 312
    .line 313
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 314
    .line 315
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 320
    .line 321
    const-string v0, "TYPE=(PART|MAP)"

    .line 322
    .line 323
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 328
    .line 329
    const-string v0, "LANGUAGE=\"((?:.|\u000c)+?)\""

    .line 330
    .line 331
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 336
    .line 337
    const-string v0, "NAME=\"((?:.|\u000c)+?)\""

    .line 338
    .line 339
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 344
    .line 345
    const-string v0, "GROUP-ID=\"((?:.|\u000c)+?)\""

    .line 346
    .line 347
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 352
    .line 353
    const-string v0, "CHARACTERISTICS=\"((?:.|\u000c)+?)\""

    .line 354
    .line 355
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 360
    .line 361
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 362
    .line 363
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 368
    .line 369
    const-string v0, "AUTOSELECT"

    .line 370
    .line 371
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 376
    .line 377
    const-string v0, "DEFAULT"

    .line 378
    .line 379
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 384
    .line 385
    const-string v0, "FORCED"

    .line 386
    .line 387
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 392
    .line 393
    const-string v0, "INDEPENDENT"

    .line 394
    .line 395
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 400
    .line 401
    const-string v0, "GAP"

    .line 402
    .line 403
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 408
    .line 409
    const-string v0, "PRECISE"

    .line 410
    .line 411
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 416
    .line 417
    const-string v0, "VALUE=\"((?:.|\u000c)+?)\""

    .line 418
    .line 419
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 424
    .line 425
    const-string v0, "IMPORT=\"((?:.|\u000c)+?)\""

    .line 426
    .line 427
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 432
    .line 433
    const-string v0, "[:,]ID=\"((?:.|\u000c)+?)\""

    .line 434
    .line 435
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ID:Ljava/util/regex/Pattern;

    .line 440
    .line 441
    const-string v0, "CLASS=\"((?:.|\u000c)+?)\""

    .line 442
    .line 443
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLASS:Ljava/util/regex/Pattern;

    .line 448
    .line 449
    const-string v0, "START-DATE=\"((?:.|\u000c)+?)\""

    .line 450
    .line 451
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_START_DATE:Ljava/util/regex/Pattern;

    .line 456
    .line 457
    const-string v0, "CUE=\"((?:.|\u000c)+?)\""

    .line 458
    .line 459
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CUE:Ljava/util/regex/Pattern;

    .line 464
    .line 465
    const-string v0, "END-DATE=\"((?:.|\u000c)+?)\""

    .line 466
    .line 467
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_DATE:Ljava/util/regex/Pattern;

    .line 472
    .line 473
    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    .line 474
    .line 475
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

    .line 480
    .line 481
    const-string v0, "END-ON-NEXT"

    .line 482
    .line 483
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

    .line 488
    .line 489
    const-string v0, "X-ASSET-URI=\"((?:.|\u000c)+?)\""

    .line 490
    .line 491
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_URI:Ljava/util/regex/Pattern;

    .line 496
    .line 497
    const-string v0, "X-ASSET-LIST=\"((?:.|\u000c)+?)\""

    .line 498
    .line 499
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

    .line 504
    .line 505
    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 506
    .line 507
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

    .line 512
    .line 513
    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    .line 514
    .line 515
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

    .line 520
    .line 521
    const-string v0, "X-SNAP=\"((?:.|\u000c)+?)\""

    .line 522
    .line 523
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SNAP:Ljava/util/regex/Pattern;

    .line 528
    .line 529
    const-string v0, "X-RESTRICT=\"((?:.|\u000c)+?)\""

    .line 530
    .line 531
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESTRICT:Ljava/util/regex/Pattern;

    .line 536
    .line 537
    const-string v0, "X-CONTENT-MAY-VARY=\"((?:.|\u000c)+?)\""

    .line 538
    .line 539
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CONTENT_MAY_VARY:Ljava/util/regex/Pattern;

    .line 544
    .line 545
    const-string v0, "X-TIMELINE-OCCUPIES=\"((?:.|\u000c)+?)\""

    .line 546
    .line 547
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIMELINE_OCCUPIES:Ljava/util/regex/Pattern;

    .line 552
    .line 553
    const-string v0, "X-TIMELINE-STYLE=\"((?:.|\u000c)+?)\""

    .line 554
    .line 555
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIMELINE_STYLE:Ljava/util/regex/Pattern;

    .line 560
    .line 561
    const-string v0, "X-SKIP-CONTROL-OFFSET=([\\d\\.]+)\\b"

    .line 562
    .line 563
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIP_CONTROL_OFFSET:Ljava/util/regex/Pattern;

    .line 568
    .line 569
    const-string v0, "X-SKIP-CONTROL-DURATION=([\\d\\.]+)\\b"

    .line 570
    .line 571
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIP_CONTROL_DURATION:Ljava/util/regex/Pattern;

    .line 576
    .line 577
    const-string v0, "X-SKIP-CONTROL-LABEL-ID=\"((?:.|\u000c)+?)\""

    .line 578
    .line 579
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIP_CONTROL_LABEL_ID:Ljava/util/regex/Pattern;

    .line 584
    .line 585
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 586
    .line 587
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 592
    .line 593
    const-string v0, "\\b(X-[A-Z0-9-]+)="

    .line 594
    .line 595
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

    .line 600
    .line 601
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xef

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0xbb

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0xbf

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    return v2

    .line 33
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 34
    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    move v1, v2

    .line 39
    :goto_2
    const/4 v3, 0x7

    .line 40
    if-ge v1, v3, :cond_4

    .line 41
    .line 42
    const-string v3, "#EXTM3U"

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eq v0, v3, :cond_3

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-static {p0, v2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "=(NO|YES)"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Landroidx/media3/common/DrmInitData;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    if-eqz p3, :cond_1

    .line 6
    .line 7
    return-object p3

    .line 8
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 13
    .line 14
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 13
    .line 14
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 13
    .line 14
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static isDolbyVisionFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/common/MimeTypes;->isDolbyVisionCodec(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    return p1

    .line 13
    :cond_1
    if-eqz p0, :cond_7

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const-string p2, "PQ"

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    const-string p2, "db1p"

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_5

    .line 33
    .line 34
    :cond_3
    const-string p2, "SDR"

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    const-string p2, "db2g"

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    :cond_4
    const-string p2, "HLG"

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    const-string p0, "db4"

    .line 59
    .line 60
    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_6

    .line 65
    .line 66
    :cond_5
    return v0

    .line 67
    :cond_6
    return p1

    .line 68
    :cond_7
    :goto_0
    return v0
.end method

.method private static parseClientDefinedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const-string v0, "="

    .line 2
    .line 3
    invoke-static {p1, v0}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "\""

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "=\"((?:.|\u000c)+?)\""

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p0, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-direct {p2, p1, p0, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    return-object p2

    .line 73
    :cond_1
    const-string v1, "0x"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    const-string v1, "0X"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "=([\\d\\.]+)\\b"

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 112
    .line 113
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;D)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, "=(0[xX][A-F0-9]+)"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p0, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    new-instance p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 147
    .line 148
    invoke-direct {p2, p1, p0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    return-object p2
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x2c

    .line 17
    .line 18
    const-string v5, "video/mp4"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 29
    .line 30
    sget-object p2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p2, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    const-string v2, "com.widevine"

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 57
    .line 58
    sget-object p2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 59
    .line 60
    const-string v0, "hls"

    .line 61
    .line 62
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {p1, p2, v0, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget-object p1, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 103
    .line 104
    invoke-static {p1, p0}, LP0/E;->buildPsshAtom(Ljava/util/UUID;[B)[B

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance p2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 109
    .line 110
    invoke-direct {p2, p1, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 111
    .line 112
    .line 113
    return-object p2

    .line 114
    :cond_2
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method private static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SAMPLE-AES-CENC"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "SAMPLE-AES-CTR"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "cbcs"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const-string p0, "cenc"

    .line 22
    .line 23
    return-object p0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static parseMediaPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .locals 96
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    .line 6
    .line 7
    new-instance v5, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v6, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v7, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v8, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v9, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v10, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 43
    .line 44
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const/16 v20, 0x0

    .line 50
    .line 51
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const/4 v15, 0x0

    .line 57
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-direct/range {v12 .. v20}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 63
    .line 64
    .line 65
    new-instance v13, Ljava/util/TreeMap;

    .line 66
    .line 67
    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 68
    .line 69
    .line 70
    const-wide/16 v17, 0x0

    .line 71
    .line 72
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-string v3, ""

    .line 78
    .line 79
    move-object/from16 v23, v3

    .line 80
    .line 81
    move/from16 v25, v4

    .line 82
    .line 83
    move-wide/from16 v26, v17

    .line 84
    .line 85
    move-wide/from16 v37, v26

    .line 86
    .line 87
    move-wide/from16 v44, v37

    .line 88
    .line 89
    move-wide/from16 v46, v44

    .line 90
    .line 91
    move-wide/from16 v64, v46

    .line 92
    .line 93
    move-wide/from16 v78, v64

    .line 94
    .line 95
    move-wide/from16 v81, v78

    .line 96
    .line 97
    move-wide/from16 v83, v81

    .line 98
    .line 99
    move-wide/from16 v50, v20

    .line 100
    .line 101
    move-wide/from16 v52, v50

    .line 102
    .line 103
    move-wide/from16 v54, v52

    .line 104
    .line 105
    move-object/from16 v39, v23

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/16 v28, 0x0

    .line 111
    .line 112
    const/16 v36, 0x0

    .line 113
    .line 114
    const-wide/16 v40, -0x1

    .line 115
    .line 116
    const/16 v42, 0x0

    .line 117
    .line 118
    const/16 v48, 0x0

    .line 119
    .line 120
    const/16 v49, 0x0

    .line 121
    .line 122
    const/16 v56, 0x0

    .line 123
    .line 124
    const/16 v57, 0x0

    .line 125
    .line 126
    const/16 v60, 0x0

    .line 127
    .line 128
    const/16 v63, 0x0

    .line 129
    .line 130
    const/16 v67, 0x0

    .line 131
    .line 132
    const-wide/16 v76, -0x1

    .line 133
    .line 134
    const/16 v80, 0x0

    .line 135
    .line 136
    const/16 v85, 0x2

    .line 137
    .line 138
    move-wide/from16 v18, v83

    .line 139
    .line 140
    move-wide/from16 v23, v54

    .line 141
    .line 142
    move-object/from16 v17, v39

    .line 143
    .line 144
    const/16 v20, 0x1

    .line 145
    .line 146
    const/16 v21, 0x0

    .line 147
    .line 148
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v29

    .line 152
    if-eqz v29, :cond_6b

    .line 153
    .line 154
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    const-string v14, "#EXT"

    .line 159
    .line 160
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    if-eqz v14, :cond_1

    .line 165
    .line 166
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_1
    const-string v14, "#EXT-X-PLAYLIST-TYPE"

    .line 170
    .line 171
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-eqz v14, :cond_3

    .line 176
    .line 177
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 178
    .line 179
    invoke-static {v15, v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    const-string v15, "VOD"

    .line 184
    .line 185
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_2

    .line 190
    .line 191
    const/16 v49, 0x1

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_2
    const-string v15, "EVENT"

    .line 195
    .line 196
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_0

    .line 201
    .line 202
    move/from16 v49, v85

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_3
    const-string v14, "#EXT-X-I-FRAMES-ONLY"

    .line 206
    .line 207
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    if-eqz v14, :cond_4

    .line 212
    .line 213
    const/16 v80, 0x1

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_4
    const-string v14, "#EXT-X-START"

    .line 217
    .line 218
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    const-wide v29, 0x412e848000000000L    # 1000000.0

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    if-eqz v14, :cond_5

    .line 228
    .line 229
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 230
    .line 231
    invoke-static {v15, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    .line 232
    .line 233
    .line 234
    move-result-wide v31

    .line 235
    move-object/from16 v43, v3

    .line 236
    .line 237
    move-object v14, v4

    .line 238
    mul-double v3, v31, v29

    .line 239
    .line 240
    double-to-long v3, v3

    .line 241
    move-wide/from16 v29, v3

    .line 242
    .line 243
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    invoke-static {v15, v3, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 247
    .line 248
    .line 249
    move-result v48

    .line 250
    move-object v4, v14

    .line 251
    move-wide/from16 v50, v29

    .line 252
    .line 253
    :goto_1
    move-object/from16 v3, v43

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_5
    move-object/from16 v43, v3

    .line 257
    .line 258
    move-object v14, v4

    .line 259
    const-string v3, "#EXT-X-SERVER-CONTROL"

    .line 260
    .line 261
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_6

    .line 266
    .line 267
    invoke-static {v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseServerControl(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    :goto_2
    move-object v4, v14

    .line 272
    goto :goto_1

    .line 273
    :cond_6
    const-string v3, "#EXT-X-PART-INF"

    .line 274
    .line 275
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-eqz v3, :cond_7

    .line 280
    .line 281
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 282
    .line 283
    invoke-static {v15, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    .line 284
    .line 285
    .line 286
    move-result-wide v3

    .line 287
    mul-double v3, v3, v29

    .line 288
    .line 289
    double-to-long v3, v3

    .line 290
    move-wide/from16 v23, v3

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_7
    const-string v3, "#EXT-X-MAP"

    .line 294
    .line 295
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    const-string v4, "@"

    .line 300
    .line 301
    if-eqz v3, :cond_d

    .line 302
    .line 303
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 304
    .line 305
    invoke-static {v15, v3, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v30

    .line 309
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 310
    .line 311
    invoke-static {v15, v3, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    if-eqz v3, :cond_8

    .line 316
    .line 317
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    const/16 v87, 0x0

    .line 322
    .line 323
    aget-object v4, v3, v87

    .line 324
    .line 325
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v40

    .line 329
    array-length v4, v3

    .line 330
    const/4 v15, 0x1

    .line 331
    if-le v4, v15, :cond_8

    .line 332
    .line 333
    aget-object v3, v3, v15

    .line 334
    .line 335
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 336
    .line 337
    .line 338
    move-result-wide v26

    .line 339
    :cond_8
    move-wide/from16 v33, v40

    .line 340
    .line 341
    cmp-long v3, v33, v76

    .line 342
    .line 343
    if-nez v3, :cond_9

    .line 344
    .line 345
    move-wide/from16 v31, v44

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_9
    move-wide/from16 v31, v26

    .line 349
    .line 350
    :goto_3
    if-eqz v67, :cond_a

    .line 351
    .line 352
    if-eqz v36, :cond_b

    .line 353
    .line 354
    :cond_a
    const/4 v4, 0x0

    .line 355
    goto :goto_4

    .line 356
    :cond_b
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    .line 357
    .line 358
    const/4 v4, 0x0

    .line 359
    invoke-static {v0, v4}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    throw v0

    .line 364
    :goto_4
    new-instance v29, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 365
    .line 366
    move-object/from16 v35, v67

    .line 367
    .line 368
    invoke-direct/range {v29 .. v36}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    if-eqz v3, :cond_c

    .line 372
    .line 373
    add-long v31, v31, v33

    .line 374
    .line 375
    :cond_c
    move-wide/from16 v26, v31

    .line 376
    .line 377
    move-object v4, v14

    .line 378
    move-object/from16 v60, v29

    .line 379
    .line 380
    move-object/from16 v3, v43

    .line 381
    .line 382
    move-wide/from16 v40, v76

    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_d
    move-object/from16 v88, v10

    .line 387
    .line 388
    move-object/from16 v89, v12

    .line 389
    .line 390
    move-object/from16 v3, v36

    .line 391
    .line 392
    move-object/from16 v10, v67

    .line 393
    .line 394
    const/16 v86, 0x0

    .line 395
    .line 396
    const-string v12, "#EXT-X-TARGETDURATION"

    .line 397
    .line 398
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v12

    .line 402
    if-eqz v12, :cond_e

    .line 403
    .line 404
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 405
    .line 406
    invoke-static {v15, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    move-object v12, v14

    .line 411
    int-to-long v14, v4

    .line 412
    const-wide/32 v29, 0xf4240

    .line 413
    .line 414
    .line 415
    mul-long v54, v14, v29

    .line 416
    .line 417
    :goto_5
    move-object/from16 v36, v3

    .line 418
    .line 419
    move-object/from16 v67, v10

    .line 420
    .line 421
    move-object v4, v12

    .line 422
    move-object/from16 v3, v43

    .line 423
    .line 424
    :goto_6
    move-object/from16 v10, v88

    .line 425
    .line 426
    :goto_7
    move-object/from16 v12, v89

    .line 427
    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :cond_e
    move-object v12, v14

    .line 431
    const-string v14, "#EXT-X-MEDIA-SEQUENCE"

    .line 432
    .line 433
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    if-eqz v14, :cond_f

    .line 438
    .line 439
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 440
    .line 441
    invoke-static {v15, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v78

    .line 445
    move-object/from16 v36, v3

    .line 446
    .line 447
    move-object/from16 v67, v10

    .line 448
    .line 449
    move-object v4, v12

    .line 450
    move-object/from16 v3, v43

    .line 451
    .line 452
    move-wide/from16 v18, v78

    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_f
    const-string v14, "#EXT-X-VERSION"

    .line 456
    .line 457
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v14

    .line 461
    if-eqz v14, :cond_10

    .line 462
    .line 463
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 464
    .line 465
    invoke-static {v15, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    .line 466
    .line 467
    .line 468
    move-result v20

    .line 469
    goto :goto_5

    .line 470
    :cond_10
    const-string v14, "#EXT-X-DEFINE"

    .line 471
    .line 472
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v14

    .line 476
    if-eqz v14, :cond_13

    .line 477
    .line 478
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 479
    .line 480
    invoke-static {v15, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    if-eqz v4, :cond_11

    .line 485
    .line 486
    iget-object v14, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    .line 487
    .line 488
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v14

    .line 492
    check-cast v14, Ljava/lang/String;

    .line 493
    .line 494
    if-eqz v14, :cond_12

    .line 495
    .line 496
    invoke-virtual {v5, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    goto :goto_8

    .line 500
    :cond_11
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 501
    .line 502
    invoke-static {v15, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 507
    .line 508
    invoke-static {v15, v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v14

    .line 512
    invoke-virtual {v5, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    :cond_12
    :goto_8
    move-object v1, v6

    .line 516
    move-object v0, v7

    .line 517
    move-object/from16 v69, v9

    .line 518
    .line 519
    move-object/from16 v36, v10

    .line 520
    .line 521
    move-object v10, v11

    .line 522
    move-object/from16 v90, v12

    .line 523
    .line 524
    move-object/from16 v91, v13

    .line 525
    .line 526
    move-object/from16 v67, v17

    .line 527
    .line 528
    :goto_9
    move-wide/from16 v33, v37

    .line 529
    .line 530
    move-object/from16 v29, v39

    .line 531
    .line 532
    move-object/from16 v66, v60

    .line 533
    .line 534
    move/from16 v14, v63

    .line 535
    .line 536
    move-wide/from16 v12, v78

    .line 537
    .line 538
    move-wide/from16 v30, v81

    .line 539
    .line 540
    const/4 v7, 0x0

    .line 541
    move-wide/from16 v62, v26

    .line 542
    .line 543
    goto/16 :goto_47

    .line 544
    .line 545
    :cond_13
    const-string v14, "#EXTINF"

    .line 546
    .line 547
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 548
    .line 549
    .line 550
    move-result v14

    .line 551
    if-eqz v14, :cond_14

    .line 552
    .line 553
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 554
    .line 555
    invoke-static {v15, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    .line 556
    .line 557
    .line 558
    move-result-wide v81

    .line 559
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 560
    .line 561
    move-object/from16 v14, v17

    .line 562
    .line 563
    invoke-static {v15, v4, v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v39

    .line 567
    goto/16 :goto_5

    .line 568
    .line 569
    :cond_14
    move-object/from16 v14, v17

    .line 570
    .line 571
    const-string v0, "#EXT-X-SKIP"

    .line 572
    .line 573
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    const-wide/16 v31, 0x1

    .line 578
    .line 579
    if-eqz v0, :cond_1c

    .line 580
    .line 581
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 582
    .line 583
    invoke-static {v15, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    if-eqz v1, :cond_15

    .line 588
    .line 589
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    if-eqz v4, :cond_15

    .line 594
    .line 595
    const/4 v4, 0x1

    .line 596
    goto :goto_a

    .line 597
    :cond_15
    const/4 v4, 0x0

    .line 598
    :goto_a
    invoke-static {v4}, LP3/v;->checkState(Z)V

    .line 599
    .line 600
    .line 601
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 606
    .line 607
    move-object/from16 v17, v11

    .line 608
    .line 609
    move-object/from16 v90, v12

    .line 610
    .line 611
    iget-wide v11, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 612
    .line 613
    sub-long v11, v18, v11

    .line 614
    .line 615
    long-to-int v4, v11

    .line 616
    add-int/2addr v0, v4

    .line 617
    if-ltz v4, :cond_1b

    .line 618
    .line 619
    iget-object v11, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 620
    .line 621
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 622
    .line 623
    .line 624
    move-result v11

    .line 625
    if-gt v0, v11, :cond_1b

    .line 626
    .line 627
    move-object/from16 v36, v3

    .line 628
    .line 629
    move-object/from16 v67, v10

    .line 630
    .line 631
    move-wide/from16 v10, v37

    .line 632
    .line 633
    move-object/from16 v3, v43

    .line 634
    .line 635
    :goto_b
    if-ge v4, v0, :cond_1a

    .line 636
    .line 637
    iget-object v3, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 638
    .line 639
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 644
    .line 645
    move-object v12, v14

    .line 646
    iget-wide v14, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 647
    .line 648
    cmp-long v14, v18, v14

    .line 649
    .line 650
    if-eqz v14, :cond_16

    .line 651
    .line 652
    iget v14, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    .line 653
    .line 654
    sub-int v14, v14, v57

    .line 655
    .line 656
    iget v15, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    .line 657
    .line 658
    add-int/2addr v14, v15

    .line 659
    invoke-virtual {v3, v10, v11, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->copyWith(JI)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    :cond_16
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    .line 667
    .line 668
    add-long v64, v10, v14

    .line 669
    .line 670
    iget-wide v10, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    .line 671
    .line 672
    cmp-long v14, v10, v76

    .line 673
    .line 674
    if-eqz v14, :cond_17

    .line 675
    .line 676
    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    .line 677
    .line 678
    add-long v26, v14, v10

    .line 679
    .line 680
    :cond_17
    iget v10, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    .line 681
    .line 682
    iget-object v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 683
    .line 684
    iget-object v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 685
    .line 686
    iget-object v15, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    .line 687
    .line 688
    move/from16 v29, v0

    .line 689
    .line 690
    iget-object v0, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    .line 691
    .line 692
    move/from16 v30, v4

    .line 693
    .line 694
    if-eqz v0, :cond_18

    .line 695
    .line 696
    invoke-static/range {v78 .. v79}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-nez v0, :cond_19

    .line 705
    .line 706
    :cond_18
    iget-object v0, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    .line 707
    .line 708
    move-object/from16 v36, v0

    .line 709
    .line 710
    :cond_19
    add-long v78, v78, v31

    .line 711
    .line 712
    const/16 v22, 0x1

    .line 713
    .line 714
    add-int/lit8 v4, v30, 0x1

    .line 715
    .line 716
    move/from16 v63, v10

    .line 717
    .line 718
    move-object/from16 v60, v11

    .line 719
    .line 720
    move-object v3, v14

    .line 721
    move-object/from16 v67, v15

    .line 722
    .line 723
    move/from16 v0, v29

    .line 724
    .line 725
    move-wide/from16 v10, v64

    .line 726
    .line 727
    move-object v14, v12

    .line 728
    goto :goto_b

    .line 729
    :cond_1a
    move-object/from16 v0, p0

    .line 730
    .line 731
    move-wide/from16 v37, v10

    .line 732
    .line 733
    move-object/from16 v11, v17

    .line 734
    .line 735
    move-object/from16 v10, v88

    .line 736
    .line 737
    move-object/from16 v12, v89

    .line 738
    .line 739
    move-object/from16 v4, v90

    .line 740
    .line 741
    move-object/from16 v17, v14

    .line 742
    .line 743
    goto/16 :goto_0

    .line 744
    .line 745
    :cond_1b
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    .line 746
    .line 747
    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    .line 748
    .line 749
    .line 750
    throw v0

    .line 751
    :cond_1c
    move-object/from16 v17, v11

    .line 752
    .line 753
    move-object/from16 v90, v12

    .line 754
    .line 755
    move-object v12, v14

    .line 756
    const-string v0, "#EXT-X-KEY"

    .line 757
    .line 758
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    if-eqz v0, :cond_21

    .line 763
    .line 764
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 765
    .line 766
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 771
    .line 772
    const-string v4, "identity"

    .line 773
    .line 774
    invoke-static {v15, v3, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    const-string v10, "NONE"

    .line 779
    .line 780
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v10

    .line 784
    if-eqz v10, :cond_1d

    .line 785
    .line 786
    invoke-virtual {v13}, Ljava/util/TreeMap;->clear()V

    .line 787
    .line 788
    .line 789
    move-object/from16 v3, v86

    .line 790
    .line 791
    move-object/from16 v36, v3

    .line 792
    .line 793
    move-object/from16 v67, v36

    .line 794
    .line 795
    goto :goto_c

    .line 796
    :cond_1d
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 797
    .line 798
    invoke-static {v15, v10, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v10

    .line 802
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    if-eqz v4, :cond_1f

    .line 807
    .line 808
    const-string v3, "AES-128"

    .line 809
    .line 810
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    if-eqz v0, :cond_1e

    .line 815
    .line 816
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 817
    .line 818
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    move-object/from16 v67, v0

    .line 823
    .line 824
    move-object/from16 v36, v10

    .line 825
    .line 826
    move-object/from16 v3, v43

    .line 827
    .line 828
    goto :goto_c

    .line 829
    :cond_1e
    move-object/from16 v36, v10

    .line 830
    .line 831
    move-object/from16 v3, v43

    .line 832
    .line 833
    move-object/from16 v67, v86

    .line 834
    .line 835
    goto :goto_c

    .line 836
    :cond_1f
    if-nez v2, :cond_20

    .line 837
    .line 838
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    :cond_20
    invoke-static {v15, v3, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    if-eqz v0, :cond_1e

    .line 847
    .line 848
    invoke-virtual {v13, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-object/from16 v36, v10

    .line 852
    .line 853
    move-object/from16 v3, v86

    .line 854
    .line 855
    move-object/from16 v67, v3

    .line 856
    .line 857
    :goto_c
    move-object/from16 v0, p0

    .line 858
    .line 859
    move-object/from16 v11, v17

    .line 860
    .line 861
    :goto_d
    move-object/from16 v10, v88

    .line 862
    .line 863
    move-object/from16 v4, v90

    .line 864
    .line 865
    :goto_e
    move-object/from16 v17, v12

    .line 866
    .line 867
    goto/16 :goto_7

    .line 868
    .line 869
    :cond_21
    const-string v0, "#EXT-X-BYTERANGE"

    .line 870
    .line 871
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    if-eqz v0, :cond_23

    .line 876
    .line 877
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 878
    .line 879
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-static {v0, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    const/16 v87, 0x0

    .line 888
    .line 889
    aget-object v4, v0, v87

    .line 890
    .line 891
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 892
    .line 893
    .line 894
    move-result-wide v40

    .line 895
    array-length v4, v0

    .line 896
    const/4 v11, 0x1

    .line 897
    if-le v4, v11, :cond_22

    .line 898
    .line 899
    aget-object v0, v0, v11

    .line 900
    .line 901
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 902
    .line 903
    .line 904
    move-result-wide v14

    .line 905
    move-wide/from16 v26, v14

    .line 906
    .line 907
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    .line 908
    .line 909
    move-object/from16 v36, v3

    .line 910
    .line 911
    move-object/from16 v67, v10

    .line 912
    .line 913
    :goto_10
    move-object/from16 v11, v17

    .line 914
    .line 915
    move-object/from16 v3, v43

    .line 916
    .line 917
    goto :goto_d

    .line 918
    :cond_23
    const/4 v11, 0x1

    .line 919
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 920
    .line 921
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    const/16 v14, 0x3a

    .line 926
    .line 927
    if-eqz v0, :cond_24

    .line 928
    .line 929
    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(I)I

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    add-int/2addr v0, v11

    .line 934
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    move-result v57

    .line 942
    move-object/from16 v0, p0

    .line 943
    .line 944
    move-object/from16 v36, v3

    .line 945
    .line 946
    move-object/from16 v67, v10

    .line 947
    .line 948
    move/from16 v56, v11

    .line 949
    .line 950
    goto :goto_10

    .line 951
    :cond_24
    const-string v0, "#EXT-X-DISCONTINUITY"

    .line 952
    .line 953
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    if-eqz v0, :cond_25

    .line 958
    .line 959
    add-int/lit8 v63, v63, 0x1

    .line 960
    .line 961
    goto :goto_f

    .line 962
    :cond_25
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    .line 963
    .line 964
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    if-eqz v0, :cond_27

    .line 969
    .line 970
    cmp-long v0, v46, v44

    .line 971
    .line 972
    if-nez v0, :cond_26

    .line 973
    .line 974
    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(I)I

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    add-int/2addr v0, v11

    .line 979
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {v0}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    .line 984
    .line 985
    .line 986
    move-result-wide v14

    .line 987
    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->msToUs(J)J

    .line 988
    .line 989
    .line 990
    move-result-wide v14

    .line 991
    sub-long v46, v14, v37

    .line 992
    .line 993
    goto :goto_f

    .line 994
    :cond_26
    move-object v1, v6

    .line 995
    move-object v0, v7

    .line 996
    move-object/from16 v69, v9

    .line 997
    .line 998
    move-object/from16 v36, v10

    .line 999
    .line 1000
    move-object/from16 v67, v12

    .line 1001
    .line 1002
    move-object/from16 v91, v13

    .line 1003
    .line 1004
    move-object/from16 v10, v17

    .line 1005
    .line 1006
    goto/16 :goto_9

    .line 1007
    .line 1008
    :cond_27
    const-string v0, "#EXT-X-GAP"

    .line 1009
    .line 1010
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    if-eqz v0, :cond_28

    .line 1015
    .line 1016
    move-object/from16 v0, p0

    .line 1017
    .line 1018
    move-object/from16 v36, v3

    .line 1019
    .line 1020
    move-object/from16 v67, v10

    .line 1021
    .line 1022
    move-object/from16 v11, v17

    .line 1023
    .line 1024
    move-object/from16 v3, v43

    .line 1025
    .line 1026
    move-object/from16 v10, v88

    .line 1027
    .line 1028
    move-object/from16 v4, v90

    .line 1029
    .line 1030
    const/16 v42, 0x1

    .line 1031
    .line 1032
    goto/16 :goto_e

    .line 1033
    .line 1034
    :cond_28
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 1035
    .line 1036
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v0

    .line 1040
    if-eqz v0, :cond_29

    .line 1041
    .line 1042
    move-object/from16 v0, p0

    .line 1043
    .line 1044
    move-object/from16 v36, v3

    .line 1045
    .line 1046
    move-object/from16 v67, v10

    .line 1047
    .line 1048
    move-object/from16 v11, v17

    .line 1049
    .line 1050
    move-object/from16 v3, v43

    .line 1051
    .line 1052
    move-object/from16 v10, v88

    .line 1053
    .line 1054
    move-object/from16 v4, v90

    .line 1055
    .line 1056
    const/16 v25, 0x1

    .line 1057
    .line 1058
    goto/16 :goto_e

    .line 1059
    .line 1060
    :cond_29
    const-string v0, "#EXT-X-ENDLIST"

    .line 1061
    .line 1062
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    if-eqz v0, :cond_2a

    .line 1067
    .line 1068
    move-object/from16 v0, p0

    .line 1069
    .line 1070
    move-object/from16 v36, v3

    .line 1071
    .line 1072
    move-object/from16 v67, v10

    .line 1073
    .line 1074
    move-object/from16 v11, v17

    .line 1075
    .line 1076
    move-object/from16 v3, v43

    .line 1077
    .line 1078
    move-object/from16 v10, v88

    .line 1079
    .line 1080
    move-object/from16 v4, v90

    .line 1081
    .line 1082
    const/16 v21, 0x1

    .line 1083
    .line 1084
    goto/16 :goto_e

    .line 1085
    .line 1086
    :cond_2a
    const-string v0, "#EXT-X-RENDITION-REPORT"

    .line 1087
    .line 1088
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    if-eqz v0, :cond_2b

    .line 1093
    .line 1094
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 1095
    .line 1096
    move-object/from16 v33, v12

    .line 1097
    .line 1098
    move-object/from16 v91, v13

    .line 1099
    .line 1100
    move-wide/from16 v11, v76

    .line 1101
    .line 1102
    invoke-static {v15, v0, v11, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v13

    .line 1106
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 1107
    .line 1108
    const/4 v4, -0x1

    .line 1109
    invoke-static {v15, v0, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    .line 1110
    .line 1111
    .line 1112
    move-result v0

    .line 1113
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 1114
    .line 1115
    invoke-static {v15, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v4

    .line 1119
    move-object/from16 v11, p3

    .line 1120
    .line 1121
    invoke-static {v11, v4}, Landroidx/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    new-instance v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 1130
    .line 1131
    invoke-direct {v12, v4, v13, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    .line 1136
    .line 1137
    :goto_11
    move-object v1, v6

    .line 1138
    move-object v0, v7

    .line 1139
    move-object/from16 v69, v9

    .line 1140
    .line 1141
    move-object/from16 v36, v10

    .line 1142
    .line 1143
    move-object/from16 v10, v17

    .line 1144
    .line 1145
    move-object/from16 v67, v33

    .line 1146
    .line 1147
    goto/16 :goto_9

    .line 1148
    .line 1149
    :cond_2b
    move-object/from16 v11, p3

    .line 1150
    .line 1151
    move-object/from16 v33, v12

    .line 1152
    .line 1153
    move-object/from16 v91, v13

    .line 1154
    .line 1155
    const-string v0, "#EXT-X-PRELOAD-HINT"

    .line 1156
    .line 1157
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v0

    .line 1161
    if-eqz v0, :cond_33

    .line 1162
    .line 1163
    if-eqz v90, :cond_2c

    .line 1164
    .line 1165
    :goto_12
    goto :goto_11

    .line 1166
    :cond_2c
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 1167
    .line 1168
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    const-string v4, "PART"

    .line 1173
    .line 1174
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v0

    .line 1178
    if-nez v0, :cond_2d

    .line 1179
    .line 1180
    goto :goto_12

    .line 1181
    :cond_2d
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 1182
    .line 1183
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v59

    .line 1187
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 1188
    .line 1189
    const-wide/16 v12, -0x1

    .line 1190
    .line 1191
    invoke-static {v15, v0, v12, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    .line 1192
    .line 1193
    .line 1194
    move-result-wide v29

    .line 1195
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 1196
    .line 1197
    invoke-static {v15, v0, v12, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v71

    .line 1201
    move-wide/from16 v12, v78

    .line 1202
    .line 1203
    invoke-static {v12, v13, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v68

    .line 1207
    if-nez v43, :cond_2f

    .line 1208
    .line 1209
    invoke-virtual/range {v91 .. v91}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 1210
    .line 1211
    .line 1212
    move-result v0

    .line 1213
    if-nez v0, :cond_2f

    .line 1214
    .line 1215
    invoke-virtual/range {v91 .. v91}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v0

    .line 1219
    const/4 v4, 0x0

    .line 1220
    new-array v14, v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1221
    .line 1222
    invoke-interface {v0, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    check-cast v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1227
    .line 1228
    new-instance v4, Landroidx/media3/common/DrmInitData;

    .line 1229
    .line 1230
    invoke-direct {v4, v2, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 1231
    .line 1232
    .line 1233
    if-nez v28, :cond_2e

    .line 1234
    .line 1235
    invoke-static {v2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    move-object/from16 v28, v0

    .line 1240
    .line 1241
    :cond_2e
    move-object/from16 v66, v4

    .line 1242
    .line 1243
    :goto_13
    const-wide/16 v76, -0x1

    .line 1244
    .line 1245
    goto :goto_14

    .line 1246
    :cond_2f
    move-object/from16 v66, v43

    .line 1247
    .line 1248
    goto :goto_13

    .line 1249
    :goto_14
    cmp-long v0, v29, v76

    .line 1250
    .line 1251
    if-eqz v0, :cond_31

    .line 1252
    .line 1253
    cmp-long v4, v71, v76

    .line 1254
    .line 1255
    if-eqz v4, :cond_30

    .line 1256
    .line 1257
    goto :goto_15

    .line 1258
    :cond_30
    move-object/from16 v4, v90

    .line 1259
    .line 1260
    goto :goto_17

    .line 1261
    :cond_31
    :goto_15
    new-instance v58, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 1262
    .line 1263
    if-eqz v0, :cond_32

    .line 1264
    .line 1265
    move-wide/from16 v69, v29

    .line 1266
    .line 1267
    goto :goto_16

    .line 1268
    :cond_32
    move-wide/from16 v69, v44

    .line 1269
    .line 1270
    :goto_16
    const/16 v74, 0x0

    .line 1271
    .line 1272
    const/16 v75, 0x1

    .line 1273
    .line 1274
    const-wide/16 v61, 0x0

    .line 1275
    .line 1276
    const/16 v73, 0x0

    .line 1277
    .line 1278
    move-object/from16 v67, v10

    .line 1279
    .line 1280
    invoke-direct/range {v58 .. v75}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .line 1281
    .line 1282
    .line 1283
    move-object/from16 v4, v58

    .line 1284
    .line 1285
    :goto_17
    move-object/from16 v0, p0

    .line 1286
    .line 1287
    move-object/from16 v36, v3

    .line 1288
    .line 1289
    move-object/from16 v67, v10

    .line 1290
    .line 1291
    move-wide/from16 v78, v12

    .line 1292
    .line 1293
    move-object/from16 v11, v17

    .line 1294
    .line 1295
    move-object/from16 v17, v33

    .line 1296
    .line 1297
    move-object/from16 v3, v66

    .line 1298
    .line 1299
    move-object/from16 v10, v88

    .line 1300
    .line 1301
    move-object/from16 v12, v89

    .line 1302
    .line 1303
    :goto_18
    move-object/from16 v13, v91

    .line 1304
    .line 1305
    const-wide/16 v76, -0x1

    .line 1306
    .line 1307
    goto/16 :goto_0

    .line 1308
    .line 1309
    :cond_33
    move-wide/from16 v12, v78

    .line 1310
    .line 1311
    const-string v0, "#EXT-X-PART"

    .line 1312
    .line 1313
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    if-eqz v0, :cond_3b

    .line 1318
    .line 1319
    invoke-static {v12, v13, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v68

    .line 1323
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 1324
    .line 1325
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v59

    .line 1329
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 1330
    .line 1331
    invoke-static {v15, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    .line 1332
    .line 1333
    .line 1334
    move-result-wide v31

    .line 1335
    move-object/from16 v35, v10

    .line 1336
    .line 1337
    mul-double v10, v31, v29

    .line 1338
    .line 1339
    double-to-long v10, v10

    .line 1340
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 1341
    .line 1342
    const/4 v14, 0x0

    .line 1343
    invoke-static {v15, v0, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v0

    .line 1347
    if-eqz v25, :cond_34

    .line 1348
    .line 1349
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1350
    .line 1351
    .line 1352
    move-result v29

    .line 1353
    if-eqz v29, :cond_34

    .line 1354
    .line 1355
    const/16 v29, 0x1

    .line 1356
    .line 1357
    goto :goto_19

    .line 1358
    :cond_34
    move/from16 v29, v14

    .line 1359
    .line 1360
    :goto_19
    or-int v74, v0, v29

    .line 1361
    .line 1362
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 1363
    .line 1364
    invoke-static {v15, v0, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v73

    .line 1368
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 1369
    .line 1370
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    if-eqz v0, :cond_36

    .line 1375
    .line 1376
    invoke-static {v0, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    aget-object v4, v0, v14

    .line 1381
    .line 1382
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1383
    .line 1384
    .line 1385
    move-result-wide v14

    .line 1386
    array-length v4, v0

    .line 1387
    move-object/from16 v29, v0

    .line 1388
    .line 1389
    const/4 v0, 0x1

    .line 1390
    if-le v4, v0, :cond_35

    .line 1391
    .line 1392
    aget-object v4, v29, v0

    .line 1393
    .line 1394
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1395
    .line 1396
    .line 1397
    move-result-wide v83

    .line 1398
    :cond_35
    move-wide/from16 v71, v14

    .line 1399
    .line 1400
    :goto_1a
    const-wide/16 v76, -0x1

    .line 1401
    .line 1402
    goto :goto_1b

    .line 1403
    :cond_36
    const-wide/16 v71, -0x1

    .line 1404
    .line 1405
    goto :goto_1a

    .line 1406
    :goto_1b
    cmp-long v0, v71, v76

    .line 1407
    .line 1408
    if-nez v0, :cond_37

    .line 1409
    .line 1410
    move-wide/from16 v69, v44

    .line 1411
    .line 1412
    goto :goto_1c

    .line 1413
    :cond_37
    move-wide/from16 v69, v83

    .line 1414
    .line 1415
    :goto_1c
    if-nez v43, :cond_39

    .line 1416
    .line 1417
    invoke-virtual/range {v91 .. v91}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 1418
    .line 1419
    .line 1420
    move-result v4

    .line 1421
    if-nez v4, :cond_39

    .line 1422
    .line 1423
    invoke-virtual/range {v91 .. v91}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v4

    .line 1427
    const/4 v14, 0x0

    .line 1428
    new-array v15, v14, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1429
    .line 1430
    invoke-interface {v4, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v4

    .line 1434
    check-cast v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1435
    .line 1436
    new-instance v14, Landroidx/media3/common/DrmInitData;

    .line 1437
    .line 1438
    invoke-direct {v14, v2, v4}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 1439
    .line 1440
    .line 1441
    if-nez v28, :cond_38

    .line 1442
    .line 1443
    invoke-static {v2, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v4

    .line 1447
    move-object/from16 v28, v4

    .line 1448
    .line 1449
    :cond_38
    move-object/from16 v66, v14

    .line 1450
    .line 1451
    goto :goto_1d

    .line 1452
    :cond_39
    move-object/from16 v66, v43

    .line 1453
    .line 1454
    :goto_1d
    new-instance v58, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 1455
    .line 1456
    const/16 v75, 0x0

    .line 1457
    .line 1458
    move-wide/from16 v61, v10

    .line 1459
    .line 1460
    move-object/from16 v67, v35

    .line 1461
    .line 1462
    invoke-direct/range {v58 .. v75}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .line 1463
    .line 1464
    .line 1465
    move-object/from16 v11, v58

    .line 1466
    .line 1467
    move-object/from16 v4, v60

    .line 1468
    .line 1469
    move/from16 v14, v63

    .line 1470
    .line 1471
    move-object/from16 v10, v67

    .line 1472
    .line 1473
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    add-long v64, v64, v61

    .line 1477
    .line 1478
    if-eqz v0, :cond_3a

    .line 1479
    .line 1480
    add-long v69, v69, v71

    .line 1481
    .line 1482
    :cond_3a
    move-wide/from16 v83, v69

    .line 1483
    .line 1484
    move-object/from16 v0, p0

    .line 1485
    .line 1486
    move-object/from16 v36, v3

    .line 1487
    .line 1488
    move-object/from16 v60, v4

    .line 1489
    .line 1490
    move-object/from16 v67, v10

    .line 1491
    .line 1492
    move-wide/from16 v78, v12

    .line 1493
    .line 1494
    move/from16 v63, v14

    .line 1495
    .line 1496
    move-object/from16 v11, v17

    .line 1497
    .line 1498
    move-object/from16 v17, v33

    .line 1499
    .line 1500
    move-object/from16 v3, v66

    .line 1501
    .line 1502
    move-object/from16 v10, v88

    .line 1503
    .line 1504
    move-object/from16 v12, v89

    .line 1505
    .line 1506
    move-object/from16 v4, v90

    .line 1507
    .line 1508
    goto/16 :goto_18

    .line 1509
    .line 1510
    :cond_3b
    move-object/from16 v4, v60

    .line 1511
    .line 1512
    move/from16 v14, v63

    .line 1513
    .line 1514
    const-string v0, "#EXT-X-DATERANGE"

    .line 1515
    .line 1516
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v0

    .line 1520
    if-eqz v0, :cond_64

    .line 1521
    .line 1522
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLASS:Ljava/util/regex/Pattern;

    .line 1523
    .line 1524
    move-object/from16 v11, v33

    .line 1525
    .line 1526
    invoke-static {v15, v0, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    move-object/from16 v66, v4

    .line 1531
    .line 1532
    const-string v4, "com.apple.hls.interstitial"

    .line 1533
    .line 1534
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    if-eqz v0, :cond_63

    .line 1539
    .line 1540
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ID:Ljava/util/regex/Pattern;

    .line 1541
    .line 1542
    invoke-static {v15, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v0

    .line 1546
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_URI:Ljava/util/regex/Pattern;

    .line 1547
    .line 1548
    invoke-static {v15, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v4

    .line 1552
    if-eqz v4, :cond_3c

    .line 1553
    .line 1554
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v4

    .line 1558
    :goto_1e
    move-object/from16 v33, v8

    .line 1559
    .line 1560
    goto :goto_1f

    .line 1561
    :cond_3c
    move-object/from16 v4, v86

    .line 1562
    .line 1563
    goto :goto_1e

    .line 1564
    :goto_1f
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

    .line 1565
    .line 1566
    invoke-static {v15, v8, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v8

    .line 1570
    if-eqz v8, :cond_3d

    .line 1571
    .line 1572
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v8

    .line 1576
    :goto_20
    move-object/from16 v67, v11

    .line 1577
    .line 1578
    goto :goto_21

    .line 1579
    :cond_3d
    move-object/from16 v8, v86

    .line 1580
    .line 1581
    goto :goto_20

    .line 1582
    :goto_21
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_START_DATE:Ljava/util/regex/Pattern;

    .line 1583
    .line 1584
    invoke-static {v15, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v11

    .line 1588
    if-eqz v11, :cond_3e

    .line 1589
    .line 1590
    invoke-static {v11}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    .line 1591
    .line 1592
    .line 1593
    move-result-wide v31

    .line 1594
    invoke-static/range {v31 .. v32}, Landroidx/media3/common/util/Util;->msToUs(J)J

    .line 1595
    .line 1596
    .line 1597
    move-result-wide v31

    .line 1598
    move-object/from16 v34, v2

    .line 1599
    .line 1600
    move-wide/from16 v1, v31

    .line 1601
    .line 1602
    goto :goto_22

    .line 1603
    :cond_3e
    move-object/from16 v34, v2

    .line 1604
    .line 1605
    move-wide/from16 v1, v52

    .line 1606
    .line 1607
    :goto_22
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_DATE:Ljava/util/regex/Pattern;

    .line 1608
    .line 1609
    invoke-static {v15, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v11

    .line 1613
    if-eqz v11, :cond_3f

    .line 1614
    .line 1615
    invoke-static {v11}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    .line 1616
    .line 1617
    .line 1618
    move-result-wide v31

    .line 1619
    invoke-static/range {v31 .. v32}, Landroidx/media3/common/util/Util;->msToUs(J)J

    .line 1620
    .line 1621
    .line 1622
    move-result-wide v31

    .line 1623
    move-object/from16 v35, v6

    .line 1624
    .line 1625
    move-object/from16 v68, v7

    .line 1626
    .line 1627
    move-wide/from16 v6, v31

    .line 1628
    .line 1629
    goto :goto_23

    .line 1630
    :cond_3f
    move-object/from16 v35, v6

    .line 1631
    .line 1632
    move-object/from16 v68, v7

    .line 1633
    .line 1634
    move-wide/from16 v6, v52

    .line 1635
    .line 1636
    :goto_23
    new-instance v11, Ljava/util/ArrayList;

    .line 1637
    .line 1638
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .line 1640
    .line 1641
    move/from16 v36, v14

    .line 1642
    .line 1643
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CUE:Ljava/util/regex/Pattern;

    .line 1644
    .line 1645
    invoke-static {v15, v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v14

    .line 1649
    move-object/from16 v69, v9

    .line 1650
    .line 1651
    const-string v9, ","

    .line 1652
    .line 1653
    if-eqz v14, :cond_43

    .line 1654
    .line 1655
    invoke-static {v14, v9}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v14

    .line 1659
    move-object/from16 v70, v3

    .line 1660
    .line 1661
    array-length v3, v14

    .line 1662
    move-object/from16 v31, v14

    .line 1663
    .line 1664
    const/4 v14, 0x0

    .line 1665
    :goto_24
    if-ge v14, v3, :cond_44

    .line 1666
    .line 1667
    aget-object v32, v31, v14

    .line 1668
    .line 1669
    move/from16 v58, v3

    .line 1670
    .line 1671
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v3

    .line 1675
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 1679
    .line 1680
    .line 1681
    move-result v32

    .line 1682
    sparse-switch v32, :sswitch_data_0

    .line 1683
    .line 1684
    .line 1685
    move/from16 v32, v14

    .line 1686
    .line 1687
    :goto_25
    const/4 v14, -0x1

    .line 1688
    goto :goto_27

    .line 1689
    :sswitch_0
    move/from16 v32, v14

    .line 1690
    .line 1691
    const-string v14, "POST"

    .line 1692
    .line 1693
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    move-result v14

    .line 1697
    if-nez v14, :cond_40

    .line 1698
    .line 1699
    goto :goto_26

    .line 1700
    :cond_40
    move/from16 v14, v85

    .line 1701
    .line 1702
    goto :goto_27

    .line 1703
    :sswitch_1
    move/from16 v32, v14

    .line 1704
    .line 1705
    const-string v14, "ONCE"

    .line 1706
    .line 1707
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1708
    .line 1709
    .line 1710
    move-result v14

    .line 1711
    if-nez v14, :cond_41

    .line 1712
    .line 1713
    goto :goto_26

    .line 1714
    :cond_41
    const/4 v14, 0x1

    .line 1715
    goto :goto_27

    .line 1716
    :sswitch_2
    move/from16 v32, v14

    .line 1717
    .line 1718
    const-string v14, "PRE"

    .line 1719
    .line 1720
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v14

    .line 1724
    if-nez v14, :cond_42

    .line 1725
    .line 1726
    :goto_26
    goto :goto_25

    .line 1727
    :cond_42
    const/4 v14, 0x0

    .line 1728
    :goto_27
    packed-switch v14, :pswitch_data_0

    .line 1729
    .line 1730
    .line 1731
    :goto_28
    const/16 v22, 0x1

    .line 1732
    .line 1733
    goto :goto_29

    .line 1734
    :pswitch_0
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    .line 1736
    .line 1737
    goto :goto_28

    .line 1738
    :goto_29
    add-int/lit8 v14, v32, 0x1

    .line 1739
    .line 1740
    move/from16 v3, v58

    .line 1741
    .line 1742
    goto :goto_24

    .line 1743
    :cond_43
    move-object/from16 v70, v3

    .line 1744
    .line 1745
    :cond_44
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

    .line 1746
    .line 1747
    move-wide/from16 v58, v12

    .line 1748
    .line 1749
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 1750
    .line 1751
    invoke-static {v15, v3, v12, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 1752
    .line 1753
    .line 1754
    move-result-wide v31

    .line 1755
    const-wide/16 v60, 0x0

    .line 1756
    .line 1757
    cmpl-double v3, v31, v60

    .line 1758
    .line 1759
    if-ltz v3, :cond_45

    .line 1760
    .line 1761
    mul-double v12, v31, v29

    .line 1762
    .line 1763
    double-to-long v12, v12

    .line 1764
    goto :goto_2a

    .line 1765
    :cond_45
    move-wide/from16 v12, v52

    .line 1766
    .line 1767
    :goto_2a
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

    .line 1768
    .line 1769
    move-object v14, v10

    .line 1770
    move-object/from16 v31, v11

    .line 1771
    .line 1772
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 1773
    .line 1774
    invoke-static {v15, v3, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 1775
    .line 1776
    .line 1777
    move-result-wide v71

    .line 1778
    cmpl-double v3, v71, v60

    .line 1779
    .line 1780
    if-ltz v3, :cond_46

    .line 1781
    .line 1782
    mul-double v10, v71, v29

    .line 1783
    .line 1784
    double-to-long v10, v10

    .line 1785
    goto :goto_2b

    .line 1786
    :cond_46
    move-wide/from16 v10, v52

    .line 1787
    .line 1788
    :goto_2b
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

    .line 1789
    .line 1790
    move-object/from16 v71, v14

    .line 1791
    .line 1792
    const/4 v14, 0x0

    .line 1793
    invoke-static {v15, v3, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 1794
    .line 1795
    .line 1796
    move-result v3

    .line 1797
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

    .line 1798
    .line 1799
    move-wide/from16 v72, v10

    .line 1800
    .line 1801
    const-wide/16 v10, 0x1

    .line 1802
    .line 1803
    invoke-static {v15, v14, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 1804
    .line 1805
    .line 1806
    move-result-wide v74

    .line 1807
    cmpl-double v10, v74, v10

    .line 1808
    .line 1809
    if-eqz v10, :cond_47

    .line 1810
    .line 1811
    mul-double v10, v74, v29

    .line 1812
    .line 1813
    double-to-long v10, v10

    .line 1814
    goto :goto_2c

    .line 1815
    :cond_47
    move-wide/from16 v10, v52

    .line 1816
    .line 1817
    :goto_2c
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

    .line 1818
    .line 1819
    move-wide/from16 v74, v10

    .line 1820
    .line 1821
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 1822
    .line 1823
    invoke-static {v15, v14, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 1824
    .line 1825
    .line 1826
    move-result-wide v78

    .line 1827
    cmpl-double v10, v78, v60

    .line 1828
    .line 1829
    if-ltz v10, :cond_48

    .line 1830
    .line 1831
    mul-double v10, v78, v29

    .line 1832
    .line 1833
    double-to-long v10, v10

    .line 1834
    goto :goto_2d

    .line 1835
    :cond_48
    move-wide/from16 v10, v52

    .line 1836
    .line 1837
    :goto_2d
    new-instance v14, Ljava/util/ArrayList;

    .line 1838
    .line 1839
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    .line 1841
    .line 1842
    move-wide/from16 v78, v10

    .line 1843
    .line 1844
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SNAP:Ljava/util/regex/Pattern;

    .line 1845
    .line 1846
    invoke-static {v15, v10, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v10

    .line 1850
    if-eqz v10, :cond_4a

    .line 1851
    .line 1852
    invoke-static {v10, v9}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v10

    .line 1856
    array-length v11, v10

    .line 1857
    move-object/from16 v32, v10

    .line 1858
    .line 1859
    const/4 v10, 0x0

    .line 1860
    :goto_2e
    if-ge v10, v11, :cond_4a

    .line 1861
    .line 1862
    aget-object v92, v32, v10

    .line 1863
    .line 1864
    move/from16 v93, v10

    .line 1865
    .line 1866
    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v10

    .line 1870
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1871
    .line 1872
    .line 1873
    move/from16 v92, v11

    .line 1874
    .line 1875
    const-string v11, "IN"

    .line 1876
    .line 1877
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1878
    .line 1879
    .line 1880
    move-result v11

    .line 1881
    if-nez v11, :cond_49

    .line 1882
    .line 1883
    const-string v11, "OUT"

    .line 1884
    .line 1885
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1886
    .line 1887
    .line 1888
    move-result v11

    .line 1889
    if-nez v11, :cond_49

    .line 1890
    .line 1891
    :goto_2f
    const/16 v22, 0x1

    .line 1892
    .line 1893
    goto :goto_30

    .line 1894
    :cond_49
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    .line 1896
    .line 1897
    goto :goto_2f

    .line 1898
    :goto_30
    add-int/lit8 v10, v93, 0x1

    .line 1899
    .line 1900
    move/from16 v11, v92

    .line 1901
    .line 1902
    goto :goto_2e

    .line 1903
    :cond_4a
    new-instance v10, Ljava/util/ArrayList;

    .line 1904
    .line 1905
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1906
    .line 1907
    .line 1908
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESTRICT:Ljava/util/regex/Pattern;

    .line 1909
    .line 1910
    invoke-static {v15, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v11

    .line 1914
    if-eqz v11, :cond_4c

    .line 1915
    .line 1916
    invoke-static {v11, v9}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v9

    .line 1920
    array-length v11, v9

    .line 1921
    move-object/from16 v32, v9

    .line 1922
    .line 1923
    const/4 v9, 0x0

    .line 1924
    :goto_31
    if-ge v9, v11, :cond_4c

    .line 1925
    .line 1926
    aget-object v92, v32, v9

    .line 1927
    .line 1928
    move/from16 v93, v9

    .line 1929
    .line 1930
    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v9

    .line 1934
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1935
    .line 1936
    .line 1937
    move/from16 v92, v11

    .line 1938
    .line 1939
    const-string v11, "JUMP"

    .line 1940
    .line 1941
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1942
    .line 1943
    .line 1944
    move-result v11

    .line 1945
    if-nez v11, :cond_4b

    .line 1946
    .line 1947
    const-string v11, "SKIP"

    .line 1948
    .line 1949
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1950
    .line 1951
    .line 1952
    move-result v11

    .line 1953
    if-nez v11, :cond_4b

    .line 1954
    .line 1955
    :goto_32
    const/16 v22, 0x1

    .line 1956
    .line 1957
    goto :goto_33

    .line 1958
    :cond_4b
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    .line 1960
    .line 1961
    goto :goto_32

    .line 1962
    :goto_33
    add-int/lit8 v9, v93, 0x1

    .line 1963
    .line 1964
    move/from16 v11, v92

    .line 1965
    .line 1966
    goto :goto_31

    .line 1967
    :cond_4c
    const/16 v22, 0x1

    .line 1968
    .line 1969
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CONTENT_MAY_VARY:Ljava/util/regex/Pattern;

    .line 1970
    .line 1971
    invoke-static {v15, v9, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v9

    .line 1975
    if-eqz v9, :cond_4d

    .line 1976
    .line 1977
    const-string v11, "NO"

    .line 1978
    .line 1979
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v9

    .line 1983
    xor-int/lit8 v9, v9, 0x1

    .line 1984
    .line 1985
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v9

    .line 1989
    goto :goto_34

    .line 1990
    :cond_4d
    move-object/from16 v9, v86

    .line 1991
    .line 1992
    :goto_34
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIMELINE_OCCUPIES:Ljava/util/regex/Pattern;

    .line 1993
    .line 1994
    invoke-static {v15, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v11

    .line 1998
    move-object/from16 v32, v9

    .line 1999
    .line 2000
    if-eqz v11, :cond_4f

    .line 2001
    .line 2002
    const-string v9, "RANGE"

    .line 2003
    .line 2004
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2005
    .line 2006
    .line 2007
    move-result v92

    .line 2008
    if-eqz v92, :cond_4e

    .line 2009
    .line 2010
    goto :goto_35

    .line 2011
    :cond_4e
    const-string v9, "POINT"

    .line 2012
    .line 2013
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2014
    .line 2015
    .line 2016
    move-result v11

    .line 2017
    if-eqz v11, :cond_4f

    .line 2018
    .line 2019
    goto :goto_35

    .line 2020
    :cond_4f
    move-object/from16 v9, v86

    .line 2021
    .line 2022
    :goto_35
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIMELINE_STYLE:Ljava/util/regex/Pattern;

    .line 2023
    .line 2024
    invoke-static {v15, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v11

    .line 2028
    move-object/from16 v92, v9

    .line 2029
    .line 2030
    if-eqz v11, :cond_51

    .line 2031
    .line 2032
    const-string v9, "PRIMARY"

    .line 2033
    .line 2034
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2035
    .line 2036
    .line 2037
    move-result v93

    .line 2038
    if-eqz v93, :cond_50

    .line 2039
    .line 2040
    goto :goto_36

    .line 2041
    :cond_50
    const-string v9, "HIGHLIGHT"

    .line 2042
    .line 2043
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2044
    .line 2045
    .line 2046
    move-result v11

    .line 2047
    if-eqz v11, :cond_51

    .line 2048
    .line 2049
    goto :goto_36

    .line 2050
    :cond_51
    move-object/from16 v9, v86

    .line 2051
    .line 2052
    :goto_36
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIP_CONTROL_OFFSET:Ljava/util/regex/Pattern;

    .line 2053
    .line 2054
    move-object/from16 v94, v9

    .line 2055
    .line 2056
    move-object/from16 v93, v10

    .line 2057
    .line 2058
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 2059
    .line 2060
    invoke-static {v15, v11, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 2061
    .line 2062
    .line 2063
    move-result-wide v62

    .line 2064
    cmpl-double v11, v62, v60

    .line 2065
    .line 2066
    if-ltz v11, :cond_52

    .line 2067
    .line 2068
    mul-double v9, v62, v29

    .line 2069
    .line 2070
    double-to-long v9, v9

    .line 2071
    goto :goto_37

    .line 2072
    :cond_52
    move-wide/from16 v9, v52

    .line 2073
    .line 2074
    :goto_37
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIP_CONTROL_DURATION:Ljava/util/regex/Pattern;

    .line 2075
    .line 2076
    move-wide/from16 v62, v9

    .line 2077
    .line 2078
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 2079
    .line 2080
    invoke-static {v15, v11, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 2081
    .line 2082
    .line 2083
    move-result-wide v9

    .line 2084
    cmpl-double v11, v9, v60

    .line 2085
    .line 2086
    if-ltz v11, :cond_53

    .line 2087
    .line 2088
    mul-double v9, v9, v29

    .line 2089
    .line 2090
    double-to-long v9, v9

    .line 2091
    goto :goto_38

    .line 2092
    :cond_53
    move-wide/from16 v9, v52

    .line 2093
    .line 2094
    :goto_38
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIP_CONTROL_LABEL_ID:Ljava/util/regex/Pattern;

    .line 2095
    .line 2096
    invoke-static {v15, v11, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 2097
    .line 2098
    .line 2099
    move-result-object v11

    .line 2100
    move-object/from16 v29, v11

    .line 2101
    .line 2102
    new-instance v11, Ljava/util/ArrayList;

    .line 2103
    .line 2104
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2105
    .line 2106
    .line 2107
    move-wide/from16 v60, v9

    .line 2108
    .line 2109
    const/16 v9, 0x11

    .line 2110
    .line 2111
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v9

    .line 2115
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

    .line 2116
    .line 2117
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v10

    .line 2121
    :goto_39
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 2122
    .line 2123
    .line 2124
    move-result v15

    .line 2125
    if-eqz v15, :cond_60

    .line 2126
    .line 2127
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v15

    .line 2131
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2132
    .line 2133
    .line 2134
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 2135
    .line 2136
    .line 2137
    move-result v30

    .line 2138
    sparse-switch v30, :sswitch_data_1

    .line 2139
    .line 2140
    .line 2141
    move-object/from16 v30, v10

    .line 2142
    .line 2143
    :goto_3a
    const/4 v10, -0x1

    .line 2144
    goto/16 :goto_3c

    .line 2145
    .line 2146
    :sswitch_3
    move-object/from16 v30, v10

    .line 2147
    .line 2148
    const-string v10, "X-SKIP-CONTROL-LABEL-ID="

    .line 2149
    .line 2150
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2151
    .line 2152
    .line 2153
    move-result v10

    .line 2154
    if-nez v10, :cond_54

    .line 2155
    .line 2156
    goto/16 :goto_3b

    .line 2157
    .line 2158
    :cond_54
    const/16 v10, 0xb

    .line 2159
    .line 2160
    goto/16 :goto_3c

    .line 2161
    .line 2162
    :sswitch_4
    move-object/from16 v30, v10

    .line 2163
    .line 2164
    const-string v10, "X-ASSET-URI="

    .line 2165
    .line 2166
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2167
    .line 2168
    .line 2169
    move-result v10

    .line 2170
    if-nez v10, :cond_55

    .line 2171
    .line 2172
    goto/16 :goto_3b

    .line 2173
    .line 2174
    :cond_55
    const/16 v10, 0xa

    .line 2175
    .line 2176
    goto/16 :goto_3c

    .line 2177
    .line 2178
    :sswitch_5
    move-object/from16 v30, v10

    .line 2179
    .line 2180
    const-string v10, "X-RESUME-OFFSET="

    .line 2181
    .line 2182
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2183
    .line 2184
    .line 2185
    move-result v10

    .line 2186
    if-nez v10, :cond_56

    .line 2187
    .line 2188
    goto/16 :goto_3b

    .line 2189
    .line 2190
    :cond_56
    const/16 v10, 0x9

    .line 2191
    .line 2192
    goto/16 :goto_3c

    .line 2193
    .line 2194
    :sswitch_6
    move-object/from16 v30, v10

    .line 2195
    .line 2196
    const-string v10, "X-RESTRICT="

    .line 2197
    .line 2198
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2199
    .line 2200
    .line 2201
    move-result v10

    .line 2202
    if-nez v10, :cond_57

    .line 2203
    .line 2204
    goto/16 :goto_3b

    .line 2205
    .line 2206
    :cond_57
    const/16 v10, 0x8

    .line 2207
    .line 2208
    goto/16 :goto_3c

    .line 2209
    .line 2210
    :sswitch_7
    move-object/from16 v30, v10

    .line 2211
    .line 2212
    const-string v10, "X-SKIP-CONTROL-OFFSET="

    .line 2213
    .line 2214
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2215
    .line 2216
    .line 2217
    move-result v10

    .line 2218
    if-nez v10, :cond_58

    .line 2219
    .line 2220
    goto/16 :goto_3b

    .line 2221
    .line 2222
    :cond_58
    const/4 v10, 0x7

    .line 2223
    goto/16 :goto_3c

    .line 2224
    .line 2225
    :sswitch_8
    move-object/from16 v30, v10

    .line 2226
    .line 2227
    const-string v10, "X-SKIP-CONTROL-DURATION="

    .line 2228
    .line 2229
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2230
    .line 2231
    .line 2232
    move-result v10

    .line 2233
    if-nez v10, :cond_59

    .line 2234
    .line 2235
    goto :goto_3b

    .line 2236
    :cond_59
    const/4 v10, 0x6

    .line 2237
    goto :goto_3c

    .line 2238
    :sswitch_9
    move-object/from16 v30, v10

    .line 2239
    .line 2240
    const-string v10, "X-TIMELINE-OCCUPIES="

    .line 2241
    .line 2242
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2243
    .line 2244
    .line 2245
    move-result v10

    .line 2246
    if-nez v10, :cond_5a

    .line 2247
    .line 2248
    goto :goto_3b

    .line 2249
    :cond_5a
    const/4 v10, 0x5

    .line 2250
    goto :goto_3c

    .line 2251
    :sswitch_a
    move-object/from16 v30, v10

    .line 2252
    .line 2253
    const-string v10, "X-ASSET-LIST="

    .line 2254
    .line 2255
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2256
    .line 2257
    .line 2258
    move-result v10

    .line 2259
    if-nez v10, :cond_5b

    .line 2260
    .line 2261
    goto :goto_3b

    .line 2262
    :cond_5b
    const/4 v10, 0x4

    .line 2263
    goto :goto_3c

    .line 2264
    :sswitch_b
    move-object/from16 v30, v10

    .line 2265
    .line 2266
    const-string v10, "X-TIMELINE-STYLE="

    .line 2267
    .line 2268
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2269
    .line 2270
    .line 2271
    move-result v10

    .line 2272
    if-nez v10, :cond_5c

    .line 2273
    .line 2274
    goto :goto_3b

    .line 2275
    :cond_5c
    const/4 v10, 0x3

    .line 2276
    goto :goto_3c

    .line 2277
    :sswitch_c
    move-object/from16 v30, v10

    .line 2278
    .line 2279
    const-string v10, "X-PLAYOUT-LIMIT="

    .line 2280
    .line 2281
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2282
    .line 2283
    .line 2284
    move-result v10

    .line 2285
    if-nez v10, :cond_5d

    .line 2286
    .line 2287
    goto :goto_3b

    .line 2288
    :cond_5d
    move/from16 v10, v85

    .line 2289
    .line 2290
    goto :goto_3c

    .line 2291
    :sswitch_d
    move-object/from16 v30, v10

    .line 2292
    .line 2293
    const-string v10, "X-CONTENT-MAY-VARY="

    .line 2294
    .line 2295
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2296
    .line 2297
    .line 2298
    move-result v10

    .line 2299
    if-nez v10, :cond_5e

    .line 2300
    .line 2301
    goto :goto_3b

    .line 2302
    :cond_5e
    const/4 v10, 0x1

    .line 2303
    goto :goto_3c

    .line 2304
    :sswitch_e
    move-object/from16 v30, v10

    .line 2305
    .line 2306
    const-string v10, "X-SNAP="

    .line 2307
    .line 2308
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2309
    .line 2310
    .line 2311
    move-result v10

    .line 2312
    if-nez v10, :cond_5f

    .line 2313
    .line 2314
    :goto_3b
    goto/16 :goto_3a

    .line 2315
    .line 2316
    :cond_5f
    const/4 v10, 0x0

    .line 2317
    :goto_3c
    packed-switch v10, :pswitch_data_1

    .line 2318
    .line 2319
    .line 2320
    move-object/from16 v95, v14

    .line 2321
    .line 2322
    const/4 v10, 0x0

    .line 2323
    const/4 v14, 0x1

    .line 2324
    invoke-static {v14, v10, v15}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v15

    .line 2328
    invoke-static {v9, v15, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseClientDefinedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v10

    .line 2332
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    .line 2334
    .line 2335
    goto :goto_3d

    .line 2336
    :pswitch_1
    move-object/from16 v95, v14

    .line 2337
    .line 2338
    :goto_3d
    move-object/from16 v10, v30

    .line 2339
    .line 2340
    move-object/from16 v14, v95

    .line 2341
    .line 2342
    goto/16 :goto_39

    .line 2343
    .line 2344
    :cond_60
    move-object/from16 v95, v14

    .line 2345
    .line 2346
    move-object/from16 v10, v17

    .line 2347
    .line 2348
    invoke-virtual {v10, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 2349
    .line 2350
    .line 2351
    move-result v9

    .line 2352
    if-eqz v9, :cond_61

    .line 2353
    .line 2354
    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    .line 2356
    .line 2357
    move-result-object v9

    .line 2358
    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2359
    .line 2360
    goto :goto_3e

    .line 2361
    :cond_61
    new-instance v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2362
    .line 2363
    invoke-direct {v9, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;-><init>(Ljava/lang/String;)V

    .line 2364
    .line 2365
    .line 2366
    :goto_3e
    invoke-virtual {v9, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setAssetUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v4

    .line 2370
    invoke-virtual {v4, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setAssetListUri(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v4

    .line 2374
    invoke-virtual {v4, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setStartDateUnixUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v1

    .line 2378
    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setEndDateUnixUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v1

    .line 2382
    invoke-virtual {v1, v12, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setDurationUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2383
    .line 2384
    .line 2385
    move-result-object v1

    .line 2386
    move-wide/from16 v6, v72

    .line 2387
    .line 2388
    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setPlannedDurationUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v1

    .line 2392
    move-object/from16 v2, v31

    .line 2393
    .line 2394
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setCue(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v1

    .line 2398
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setEndOnNext(Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v1

    .line 2402
    move-wide/from16 v2, v74

    .line 2403
    .line 2404
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setResumeOffsetUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v1

    .line 2408
    move-wide/from16 v2, v78

    .line 2409
    .line 2410
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setPlayoutLimitUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v1

    .line 2414
    move-object/from16 v2, v95

    .line 2415
    .line 2416
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setSnapTypes(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v1

    .line 2420
    move-object/from16 v2, v93

    .line 2421
    .line 2422
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setRestrictions(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v1

    .line 2426
    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setClientDefinedAttributes(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v1

    .line 2430
    move-object/from16 v9, v32

    .line 2431
    .line 2432
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setContentMayVary(Ljava/lang/Boolean;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v1

    .line 2436
    move-object/from16 v9, v92

    .line 2437
    .line 2438
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setTimelineOccupies(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v1

    .line 2442
    move-object/from16 v9, v94

    .line 2443
    .line 2444
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setTimelineStyle(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v1

    .line 2448
    move-wide/from16 v2, v62

    .line 2449
    .line 2450
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setSkipControlOffsetUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2451
    .line 2452
    .line 2453
    move-result-object v1

    .line 2454
    move-wide/from16 v2, v60

    .line 2455
    .line 2456
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setSkipControlDurationUs(J)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v1

    .line 2460
    move-object/from16 v2, v29

    .line 2461
    .line 2462
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->setSkipControlLabelId(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v1

    .line 2466
    invoke-virtual {v10, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    .line 2468
    .line 2469
    :cond_62
    move-wide/from16 v62, v26

    .line 2470
    .line 2471
    move-object/from16 v8, v33

    .line 2472
    .line 2473
    move-object/from16 v2, v34

    .line 2474
    .line 2475
    move-object/from16 v1, v35

    .line 2476
    .line 2477
    move/from16 v14, v36

    .line 2478
    .line 2479
    move-wide/from16 v33, v37

    .line 2480
    .line 2481
    move-object/from16 v29, v39

    .line 2482
    .line 2483
    move-wide/from16 v12, v58

    .line 2484
    .line 2485
    move-object/from16 v0, v68

    .line 2486
    .line 2487
    move-object/from16 v3, v70

    .line 2488
    .line 2489
    move-object/from16 v36, v71

    .line 2490
    .line 2491
    move-wide/from16 v30, v81

    .line 2492
    .line 2493
    const/4 v7, 0x0

    .line 2494
    goto/16 :goto_47

    .line 2495
    .line 2496
    :cond_63
    move-object/from16 v67, v11

    .line 2497
    .line 2498
    move-object/from16 v34, v2

    .line 2499
    .line 2500
    move-object/from16 v70, v3

    .line 2501
    .line 2502
    move-object/from16 v35, v6

    .line 2503
    .line 2504
    move-object/from16 v68, v7

    .line 2505
    .line 2506
    move-object/from16 v33, v8

    .line 2507
    .line 2508
    move-object/from16 v69, v9

    .line 2509
    .line 2510
    move-object/from16 v71, v10

    .line 2511
    .line 2512
    move-wide/from16 v58, v12

    .line 2513
    .line 2514
    move/from16 v36, v14

    .line 2515
    .line 2516
    move-object/from16 v10, v17

    .line 2517
    .line 2518
    goto :goto_3f

    .line 2519
    :cond_64
    move-object/from16 v66, v4

    .line 2520
    .line 2521
    move-object/from16 v67, v33

    .line 2522
    .line 2523
    move-object/from16 v34, v2

    .line 2524
    .line 2525
    move-object/from16 v70, v3

    .line 2526
    .line 2527
    move-object/from16 v35, v6

    .line 2528
    .line 2529
    move-object/from16 v68, v7

    .line 2530
    .line 2531
    move-object/from16 v69, v9

    .line 2532
    .line 2533
    move-object/from16 v71, v10

    .line 2534
    .line 2535
    move-wide/from16 v58, v12

    .line 2536
    .line 2537
    move/from16 v36, v14

    .line 2538
    .line 2539
    move-object/from16 v10, v17

    .line 2540
    .line 2541
    move-object/from16 v33, v8

    .line 2542
    .line 2543
    :goto_3f
    const-string v0, "#"

    .line 2544
    .line 2545
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2546
    .line 2547
    .line 2548
    move-result v0

    .line 2549
    if-nez v0, :cond_62

    .line 2550
    .line 2551
    move-object/from16 v30, v33

    .line 2552
    .line 2553
    move-object/from16 v2, v34

    .line 2554
    .line 2555
    move-wide/from16 v33, v37

    .line 2556
    .line 2557
    move-wide/from16 v12, v58

    .line 2558
    .line 2559
    move-object/from16 v3, v70

    .line 2560
    .line 2561
    move-object/from16 v14, v71

    .line 2562
    .line 2563
    invoke-static {v12, v13, v14, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v37

    .line 2567
    add-long v78, v12, v31

    .line 2568
    .line 2569
    invoke-static {v15, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2570
    .line 2571
    .line 2572
    move-result-object v0

    .line 2573
    move-object/from16 v1, v35

    .line 2574
    .line 2575
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    .line 2577
    .line 2578
    move-result-object v4

    .line 2579
    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 2580
    .line 2581
    const-wide/16 v76, -0x1

    .line 2582
    .line 2583
    cmp-long v6, v40, v76

    .line 2584
    .line 2585
    if-nez v6, :cond_65

    .line 2586
    .line 2587
    move-object/from16 v60, v4

    .line 2588
    .line 2589
    move-wide/from16 v26, v44

    .line 2590
    .line 2591
    goto :goto_40

    .line 2592
    :cond_65
    if-eqz v80, :cond_66

    .line 2593
    .line 2594
    if-nez v66, :cond_66

    .line 2595
    .line 2596
    if-nez v4, :cond_66

    .line 2597
    .line 2598
    new-instance v58, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 2599
    .line 2600
    const/16 v64, 0x0

    .line 2601
    .line 2602
    const/16 v65, 0x0

    .line 2603
    .line 2604
    const-wide/16 v60, 0x0

    .line 2605
    .line 2606
    move-object/from16 v59, v0

    .line 2607
    .line 2608
    move-wide/from16 v62, v26

    .line 2609
    .line 2610
    invoke-direct/range {v58 .. v65}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 2611
    .line 2612
    .line 2613
    move-object/from16 v4, v58

    .line 2614
    .line 2615
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    .line 2617
    .line 2618
    move-object/from16 v60, v4

    .line 2619
    .line 2620
    goto :goto_40

    .line 2621
    :cond_66
    move-wide/from16 v62, v26

    .line 2622
    .line 2623
    move-object/from16 v60, v4

    .line 2624
    .line 2625
    move-wide/from16 v26, v62

    .line 2626
    .line 2627
    :goto_40
    if-nez v43, :cond_68

    .line 2628
    .line 2629
    invoke-virtual/range {v91 .. v91}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 2630
    .line 2631
    .line 2632
    move-result v4

    .line 2633
    if-nez v4, :cond_68

    .line 2634
    .line 2635
    invoke-virtual/range {v91 .. v91}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v4

    .line 2639
    const/4 v7, 0x0

    .line 2640
    new-array v8, v7, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 2641
    .line 2642
    invoke-interface {v4, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v4

    .line 2646
    check-cast v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 2647
    .line 2648
    new-instance v8, Landroidx/media3/common/DrmInitData;

    .line 2649
    .line 2650
    invoke-direct {v8, v2, v4}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 2651
    .line 2652
    .line 2653
    if-nez v28, :cond_67

    .line 2654
    .line 2655
    invoke-static {v2, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    .line 2656
    .line 2657
    .line 2658
    move-result-object v4

    .line 2659
    move-object/from16 v35, v8

    .line 2660
    .line 2661
    :goto_41
    move-object/from16 v29, v39

    .line 2662
    .line 2663
    :goto_42
    move-wide/from16 v38, v26

    .line 2664
    .line 2665
    goto :goto_43

    .line 2666
    :cond_67
    move-object/from16 v35, v8

    .line 2667
    .line 2668
    move-object/from16 v4, v28

    .line 2669
    .line 2670
    goto :goto_41

    .line 2671
    :cond_68
    const/4 v7, 0x0

    .line 2672
    move-object/from16 v4, v28

    .line 2673
    .line 2674
    move-object/from16 v29, v39

    .line 2675
    .line 2676
    move-object/from16 v35, v43

    .line 2677
    .line 2678
    goto :goto_42

    .line 2679
    :goto_43
    new-instance v26, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 2680
    .line 2681
    if-eqz v66, :cond_69

    .line 2682
    .line 2683
    move-object/from16 v28, v66

    .line 2684
    .line 2685
    :goto_44
    move-object/from16 v27, v0

    .line 2686
    .line 2687
    move-object/from16 v43, v30

    .line 2688
    .line 2689
    move/from16 v32, v36

    .line 2690
    .line 2691
    move-wide/from16 v30, v81

    .line 2692
    .line 2693
    move-object/from16 v36, v14

    .line 2694
    .line 2695
    goto :goto_45

    .line 2696
    :cond_69
    move-object/from16 v28, v60

    .line 2697
    .line 2698
    goto :goto_44

    .line 2699
    :goto_45
    invoke-direct/range {v26 .. v43}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 2700
    .line 2701
    .line 2702
    move-object/from16 v8, v26

    .line 2703
    .line 2704
    move/from16 v14, v32

    .line 2705
    .line 2706
    move-object/from16 v0, v68

    .line 2707
    .line 2708
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2709
    .line 2710
    .line 2711
    add-long v64, v33, v30

    .line 2712
    .line 2713
    new-instance v8, Ljava/util/ArrayList;

    .line 2714
    .line 2715
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2716
    .line 2717
    .line 2718
    if-eqz v6, :cond_6a

    .line 2719
    .line 2720
    add-long v26, v38, v40

    .line 2721
    .line 2722
    goto :goto_46

    .line 2723
    :cond_6a
    move-wide/from16 v26, v38

    .line 2724
    .line 2725
    :goto_46
    move-object v6, v1

    .line 2726
    move-object/from16 v28, v4

    .line 2727
    .line 2728
    move/from16 v42, v7

    .line 2729
    .line 2730
    move-object v11, v10

    .line 2731
    move/from16 v63, v14

    .line 2732
    .line 2733
    move-wide/from16 v81, v44

    .line 2734
    .line 2735
    move-wide/from16 v37, v64

    .line 2736
    .line 2737
    move-object/from16 v60, v66

    .line 2738
    .line 2739
    move-object/from16 v17, v67

    .line 2740
    .line 2741
    move-object/from16 v39, v17

    .line 2742
    .line 2743
    move-object/from16 v9, v69

    .line 2744
    .line 2745
    move-object/from16 v10, v88

    .line 2746
    .line 2747
    move-object/from16 v12, v89

    .line 2748
    .line 2749
    move-object/from16 v4, v90

    .line 2750
    .line 2751
    move-object/from16 v13, v91

    .line 2752
    .line 2753
    const-wide/16 v40, -0x1

    .line 2754
    .line 2755
    const-wide/16 v76, -0x1

    .line 2756
    .line 2757
    move-object/from16 v1, p1

    .line 2758
    .line 2759
    move-object v7, v0

    .line 2760
    move-object/from16 v67, v36

    .line 2761
    .line 2762
    move-object/from16 v0, p0

    .line 2763
    .line 2764
    move-object/from16 v36, v3

    .line 2765
    .line 2766
    move-object/from16 v3, v35

    .line 2767
    .line 2768
    goto/16 :goto_0

    .line 2769
    .line 2770
    :goto_47
    move-object v7, v0

    .line 2771
    move-object v6, v1

    .line 2772
    move-object v11, v10

    .line 2773
    move-wide/from16 v78, v12

    .line 2774
    .line 2775
    move-object/from16 v39, v29

    .line 2776
    .line 2777
    move-wide/from16 v81, v30

    .line 2778
    .line 2779
    move-wide/from16 v37, v33

    .line 2780
    .line 2781
    move-wide/from16 v26, v62

    .line 2782
    .line 2783
    move-object/from16 v60, v66

    .line 2784
    .line 2785
    move-object/from16 v17, v67

    .line 2786
    .line 2787
    move-object/from16 v9, v69

    .line 2788
    .line 2789
    move-object/from16 v10, v88

    .line 2790
    .line 2791
    move-object/from16 v12, v89

    .line 2792
    .line 2793
    move-object/from16 v4, v90

    .line 2794
    .line 2795
    move-object/from16 v13, v91

    .line 2796
    .line 2797
    const-wide/16 v76, -0x1

    .line 2798
    .line 2799
    move-object/from16 v0, p0

    .line 2800
    .line 2801
    move-object/from16 v1, p1

    .line 2802
    .line 2803
    move/from16 v63, v14

    .line 2804
    .line 2805
    move-object/from16 v67, v36

    .line 2806
    .line 2807
    move-object/from16 v36, v3

    .line 2808
    .line 2809
    goto/16 :goto_1

    .line 2810
    .line 2811
    :cond_6b
    move-object/from16 v90, v4

    .line 2812
    .line 2813
    move-object v0, v7

    .line 2814
    move-object/from16 v69, v9

    .line 2815
    .line 2816
    move-object/from16 v88, v10

    .line 2817
    .line 2818
    move-object v10, v11

    .line 2819
    move-object/from16 v89, v12

    .line 2820
    .line 2821
    const/4 v7, 0x0

    .line 2822
    new-instance v1, Ljava/util/HashMap;

    .line 2823
    .line 2824
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2825
    .line 2826
    .line 2827
    move v4, v7

    .line 2828
    :goto_48
    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    .line 2829
    .line 2830
    .line 2831
    move-result v2

    .line 2832
    if-ge v4, v2, :cond_6f

    .line 2833
    .line 2834
    move-object/from16 v2, v69

    .line 2835
    .line 2836
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2837
    .line 2838
    .line 2839
    move-result-object v3

    .line 2840
    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 2841
    .line 2842
    iget-wide v5, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    .line 2843
    .line 2844
    const-wide/16 v76, -0x1

    .line 2845
    .line 2846
    cmp-long v9, v5, v76

    .line 2847
    .line 2848
    if-nez v9, :cond_6c

    .line 2849
    .line 2850
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2851
    .line 2852
    .line 2853
    move-result v5

    .line 2854
    int-to-long v5, v5

    .line 2855
    add-long v5, v18, v5

    .line 2856
    .line 2857
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 2858
    .line 2859
    .line 2860
    move-result v9

    .line 2861
    int-to-long v11, v9

    .line 2862
    sub-long/2addr v5, v11

    .line 2863
    :cond_6c
    iget v9, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    .line 2864
    .line 2865
    const/4 v11, -0x1

    .line 2866
    if-ne v9, v11, :cond_6e

    .line 2867
    .line 2868
    cmp-long v12, v23, v52

    .line 2869
    .line 2870
    if-eqz v12, :cond_6e

    .line 2871
    .line 2872
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 2873
    .line 2874
    .line 2875
    move-result v9

    .line 2876
    if-eqz v9, :cond_6d

    .line 2877
    .line 2878
    invoke-static {v0}, LQ3/A;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 2879
    .line 2880
    .line 2881
    move-result-object v9

    .line 2882
    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 2883
    .line 2884
    iget-object v9, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 2885
    .line 2886
    goto :goto_49

    .line 2887
    :cond_6d
    move-object v9, v8

    .line 2888
    :goto_49
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 2889
    .line 2890
    .line 2891
    move-result v9

    .line 2892
    const/16 v22, 0x1

    .line 2893
    .line 2894
    add-int/lit8 v9, v9, -0x1

    .line 2895
    .line 2896
    goto :goto_4a

    .line 2897
    :cond_6e
    const/16 v22, 0x1

    .line 2898
    .line 2899
    :goto_4a
    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    .line 2900
    .line 2901
    new-instance v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 2902
    .line 2903
    invoke-direct {v12, v3, v5, v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    .line 2904
    .line 2905
    .line 2906
    invoke-virtual {v1, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    .line 2908
    .line 2909
    add-int/lit8 v4, v4, 0x1

    .line 2910
    .line 2911
    move-object/from16 v69, v2

    .line 2912
    .line 2913
    goto :goto_48

    .line 2914
    :cond_6f
    const/16 v22, 0x1

    .line 2915
    .line 2916
    if-eqz v90, :cond_70

    .line 2917
    .line 2918
    move-object/from16 v12, v90

    .line 2919
    .line 2920
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2921
    .line 2922
    .line 2923
    :cond_70
    new-instance v2, Ljava/util/ArrayList;

    .line 2924
    .line 2925
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2926
    .line 2927
    .line 2928
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 2929
    .line 2930
    .line 2931
    move-result-object v3

    .line 2932
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2933
    .line 2934
    .line 2935
    move-result-object v3

    .line 2936
    :cond_71
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2937
    .line 2938
    .line 2939
    move-result v4

    .line 2940
    if-eqz v4, :cond_72

    .line 2941
    .line 2942
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2943
    .line 2944
    .line 2945
    move-result-object v4

    .line 2946
    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    .line 2947
    .line 2948
    invoke-virtual {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->build()Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    .line 2949
    .line 2950
    .line 2951
    move-result-object v4

    .line 2952
    if-eqz v4, :cond_71

    .line 2953
    .line 2954
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2955
    .line 2956
    .line 2957
    goto :goto_4b

    .line 2958
    :cond_72
    cmp-long v3, v46, v44

    .line 2959
    .line 2960
    if-nez v3, :cond_73

    .line 2961
    .line 2962
    if-eqz p1, :cond_73

    .line 2963
    .line 2964
    move-object/from16 v3, p1

    .line 2965
    .line 2966
    iget-boolean v4, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    .line 2967
    .line 2968
    if-eqz v4, :cond_73

    .line 2969
    .line 2970
    iget-wide v3, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 2971
    .line 2972
    move-wide v14, v3

    .line 2973
    :goto_4c
    move/from16 v87, v7

    .line 2974
    .line 2975
    goto :goto_4d

    .line 2976
    :cond_73
    move-wide/from16 v14, v46

    .line 2977
    .line 2978
    goto :goto_4c

    .line 2979
    :goto_4d
    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 2980
    .line 2981
    cmp-long v3, v14, v44

    .line 2982
    .line 2983
    if-eqz v3, :cond_74

    .line 2984
    .line 2985
    move/from16 v27, v22

    .line 2986
    .line 2987
    :goto_4e
    move-object/from16 v9, p3

    .line 2988
    .line 2989
    move-object/from16 v29, v0

    .line 2990
    .line 2991
    move-object/from16 v32, v1

    .line 2992
    .line 2993
    move-object/from16 v33, v2

    .line 2994
    .line 2995
    move-object/from16 v30, v8

    .line 2996
    .line 2997
    move/from16 v26, v21

    .line 2998
    .line 2999
    move/from16 v13, v48

    .line 3000
    .line 3001
    move/from16 v8, v49

    .line 3002
    .line 3003
    move-wide/from16 v11, v50

    .line 3004
    .line 3005
    move-wide/from16 v21, v54

    .line 3006
    .line 3007
    move/from16 v16, v56

    .line 3008
    .line 3009
    move/from16 v17, v57

    .line 3010
    .line 3011
    move-object/from16 v10, v88

    .line 3012
    .line 3013
    move-object/from16 v31, v89

    .line 3014
    .line 3015
    goto :goto_4f

    .line 3016
    :cond_74
    move/from16 v27, v87

    .line 3017
    .line 3018
    goto :goto_4e

    .line 3019
    :goto_4f
    invoke-direct/range {v7 .. v33}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;Ljava/util/List;)V

    .line 3020
    .line 3021
    .line 3022
    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x13683 -> :sswitch_2
        0x251681 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_e
        -0x6ddab8e6 -> :sswitch_d
        -0x8e0f436 -> :sswitch_c
        -0x22a979d -> :sswitch_b
        0x17ad642d -> :sswitch_a
        0x32acec39 -> :sswitch_9
        0x3f8488e0 -> :sswitch_8
        0x4bf74f81 -> :sswitch_7
        0x57c501cc -> :sswitch_6
        0x6837ce7f -> :sswitch_5
        0x6c2295e3 -> :sswitch_4
        0x7c029fc0 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static parseMultivariantPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    new-instance v5, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v11, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v8, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v9, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v10, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v12, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v13, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v14, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    move-object/from16 v17, v10

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v18

    .line 62
    const/16 v19, 0x0

    .line 63
    .line 64
    const-string v15, "application/x-mpegURL"

    .line 65
    .line 66
    const-string v0, "/"

    .line 67
    .line 68
    if-eqz v18, :cond_13

    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v2, "#EXT"

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_0
    const-string v2, "#EXT-X-I-FRAME-STREAM-INF"

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const-string v4, "#EXT-X-DEFINE"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 100
    .line 101
    invoke-static {v3, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 106
    .line 107
    invoke-static {v3, v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const-string v4, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    move-object/from16 v34, v7

    .line 124
    .line 125
    move-object/from16 v33, v8

    .line 126
    .line 127
    move-object/from16 v32, v9

    .line 128
    .line 129
    move-object/from16 v35, v12

    .line 130
    .line 131
    move-object/from16 v30, v13

    .line 132
    .line 133
    move-object/from16 v31, v14

    .line 134
    .line 135
    const/4 v10, 0x1

    .line 136
    goto/16 :goto_b

    .line 137
    .line 138
    :cond_2
    const-string v4, "#EXT-X-MEDIA"

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_3

    .line 145
    .line 146
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    const-string v4, "#EXT-X-SESSION-KEY"

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_4

    .line 157
    .line 158
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 159
    .line 160
    const-string v2, "identity"

    .line 161
    .line 162
    invoke-static {v3, v0, v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v3, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 173
    .line 174
    invoke-static {v3, v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v3, Landroidx/media3/common/DrmInitData;

    .line 183
    .line 184
    const/4 v4, 0x1

    .line 185
    new-array v15, v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 186
    .line 187
    aput-object v0, v15, v19

    .line 188
    .line 189
    invoke-direct {v3, v2, v15}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    const-string v4, "#EXT-X-STREAM-INF"

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_6

    .line 203
    .line 204
    if-eqz v2, :cond_5

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    :goto_1
    move-object/from16 v34, v7

    .line 208
    .line 209
    move-object/from16 v33, v8

    .line 210
    .line 211
    move-object/from16 v32, v9

    .line 212
    .line 213
    move-object/from16 v35, v12

    .line 214
    .line 215
    move-object/from16 v30, v13

    .line 216
    .line 217
    move-object/from16 v31, v14

    .line 218
    .line 219
    goto/16 :goto_b

    .line 220
    .line 221
    :cond_6
    :goto_2
    const-string v4, "CLOSED-CAPTIONS=NONE"

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    or-int v16, v16, v4

    .line 228
    .line 229
    if-eqz v2, :cond_7

    .line 230
    .line 231
    const/16 v4, 0x4000

    .line 232
    .line 233
    :goto_3
    move/from16 v21, v2

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_7
    move/from16 v4, v19

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :goto_4
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 240
    .line 241
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    move/from16 v29, v10

    .line 246
    .line 247
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 248
    .line 249
    move-object/from16 v30, v13

    .line 250
    .line 251
    const/4 v13, -0x1

    .line 252
    invoke-static {v3, v10, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

    .line 257
    .line 258
    invoke-static {v3, v13, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    move-object/from16 v31, v14

    .line 263
    .line 264
    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 265
    .line 266
    invoke-static {v3, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    move-object/from16 v32, v9

    .line 271
    .line 272
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

    .line 273
    .line 274
    invoke-static {v3, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    move-object/from16 v33, v8

    .line 279
    .line 280
    const-string v8, ","

    .line 281
    .line 282
    if-eqz v9, :cond_9

    .line 283
    .line 284
    invoke-static {v9, v8}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    aget-object v9, v9, v19

    .line 289
    .line 290
    invoke-static {v9, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    aget-object v9, v0, v19

    .line 295
    .line 296
    move-object/from16 v22, v9

    .line 297
    .line 298
    array-length v9, v0

    .line 299
    move-object/from16 v23, v0

    .line 300
    .line 301
    const/4 v0, 0x1

    .line 302
    if-le v9, v0, :cond_8

    .line 303
    .line 304
    aget-object v9, v23, v0

    .line 305
    .line 306
    move-object/from16 v34, v7

    .line 307
    .line 308
    move-object/from16 v35, v12

    .line 309
    .line 310
    move-object/from16 v0, v22

    .line 311
    .line 312
    const/4 v7, 0x2

    .line 313
    goto :goto_6

    .line 314
    :cond_8
    move-object/from16 v34, v7

    .line 315
    .line 316
    move-object/from16 v35, v12

    .line 317
    .line 318
    move-object/from16 v0, v22

    .line 319
    .line 320
    :goto_5
    const/4 v7, 0x2

    .line 321
    const/4 v9, 0x0

    .line 322
    goto :goto_6

    .line 323
    :cond_9
    move-object/from16 v34, v7

    .line 324
    .line 325
    move-object/from16 v35, v12

    .line 326
    .line 327
    const/4 v0, 0x0

    .line 328
    goto :goto_5

    .line 329
    :goto_6
    invoke-static {v14, v7}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v12

    .line 333
    invoke-static {v13, v12, v0, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->isDolbyVisionFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    if-eqz v9, :cond_c

    .line 338
    .line 339
    if-eqz v0, :cond_a

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_a
    move-object v0, v12

    .line 343
    :goto_7
    invoke-static {v14, v7}, Landroidx/media3/common/util/Util;->getCodecsWithoutType(Ljava/lang/String;I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    if-eqz v9, :cond_b

    .line 348
    .line 349
    invoke-static {v0, v8, v9}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    :cond_b
    move-object v14, v0

    .line 354
    :cond_c
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 355
    .line 356
    invoke-static {v3, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_d

    .line 361
    .line 362
    const-string v7, "x"

    .line 363
    .line 364
    invoke-static {v0, v7}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    aget-object v7, v0, v19

    .line 369
    .line 370
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    const/16 v20, 0x1

    .line 375
    .line 376
    aget-object v0, v0, v20

    .line 377
    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-lez v7, :cond_d

    .line 383
    .line 384
    if-gtz v0, :cond_e

    .line 385
    .line 386
    :cond_d
    const/4 v0, -0x1

    .line 387
    const/4 v7, -0x1

    .line 388
    :cond_e
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 389
    .line 390
    invoke-static {v3, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    if-eqz v8, :cond_f

    .line 395
    .line 396
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    goto :goto_8

    .line 401
    :cond_f
    const/high16 v8, -0x40800000    # -1.0f

    .line 402
    .line 403
    :goto_8
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 404
    .line 405
    invoke-static {v3, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v25

    .line 409
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 410
    .line 411
    invoke-static {v3, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v26

    .line 415
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 416
    .line 417
    invoke-static {v3, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v27

    .line 421
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 422
    .line 423
    invoke-static {v3, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v28

    .line 427
    if-eqz v21, :cond_10

    .line 428
    .line 429
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 430
    .line 431
    invoke-static {v3, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-static {v1, v3}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    :goto_9
    move-object/from16 v23, v3

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-eqz v3, :cond_12

    .line 447
    .line 448
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-static {v3, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-static {v1, v3}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    goto :goto_9

    .line 461
    :goto_a
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 462
    .line 463
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    invoke-virtual {v3, v9}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v3, v15}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v3, v14}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v3, v10}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v3, v0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0, v8}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 507
    .line 508
    .line 509
    move-result-object v24

    .line 510
    new-instance v22, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 511
    .line 512
    invoke-direct/range {v22 .. v28}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v0, v22

    .line 516
    .line 517
    move-object/from16 v3, v23

    .line 518
    .line 519
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    check-cast v0, Ljava/util/ArrayList;

    .line 527
    .line 528
    if-nez v0, :cond_11

    .line 529
    .line 530
    new-instance v0, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    :cond_11
    new-instance v22, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    .line 539
    .line 540
    move/from16 v24, v2

    .line 541
    .line 542
    move/from16 v23, v10

    .line 543
    .line 544
    invoke-direct/range {v22 .. v28}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    move-object/from16 v2, v22

    .line 548
    .line 549
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move/from16 v10, v29

    .line 553
    .line 554
    :goto_b
    move-object/from16 v13, v30

    .line 555
    .line 556
    move-object/from16 v14, v31

    .line 557
    .line 558
    move-object/from16 v9, v32

    .line 559
    .line 560
    move-object/from16 v8, v33

    .line 561
    .line 562
    move-object/from16 v7, v34

    .line 563
    .line 564
    move-object/from16 v12, v35

    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :cond_12
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    .line 569
    .line 570
    const/4 v1, 0x0

    .line 571
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    throw v0

    .line 576
    :cond_13
    move-object/from16 v34, v7

    .line 577
    .line 578
    move-object/from16 v33, v8

    .line 579
    .line 580
    move-object/from16 v32, v9

    .line 581
    .line 582
    move/from16 v29, v10

    .line 583
    .line 584
    move-object/from16 v35, v12

    .line 585
    .line 586
    move-object/from16 v30, v13

    .line 587
    .line 588
    move-object/from16 v31, v14

    .line 589
    .line 590
    new-instance v3, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .line 594
    .line 595
    new-instance v2, Ljava/util/HashSet;

    .line 596
    .line 597
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 598
    .line 599
    .line 600
    move/from16 v4, v19

    .line 601
    .line 602
    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 603
    .line 604
    .line 605
    move-result v7

    .line 606
    if-ge v4, v7, :cond_16

    .line 607
    .line 608
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 613
    .line 614
    iget-object v8, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 615
    .line 616
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    if-eqz v8, :cond_15

    .line 621
    .line 622
    iget-object v8, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 623
    .line 624
    iget-object v8, v8, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 625
    .line 626
    if-nez v8, :cond_14

    .line 627
    .line 628
    const/4 v8, 0x1

    .line 629
    goto :goto_d

    .line 630
    :cond_14
    move/from16 v8, v19

    .line 631
    .line 632
    :goto_d
    invoke-static {v8}, LP3/v;->checkState(Z)V

    .line 633
    .line 634
    .line 635
    new-instance v8, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 636
    .line 637
    iget-object v9, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 638
    .line 639
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v9

    .line 643
    check-cast v9, Ljava/util/ArrayList;

    .line 644
    .line 645
    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v9

    .line 649
    check-cast v9, Ljava/util/List;

    .line 650
    .line 651
    const/4 v10, 0x0

    .line 652
    invoke-direct {v8, v10, v10, v9}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 653
    .line 654
    .line 655
    new-instance v9, Landroidx/media3/common/Metadata;

    .line 656
    .line 657
    const/4 v12, 0x1

    .line 658
    new-array v13, v12, [Landroidx/media3/common/Metadata$Entry;

    .line 659
    .line 660
    aput-object v8, v13, v19

    .line 661
    .line 662
    invoke-direct {v9, v13}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 663
    .line 664
    .line 665
    iget-object v8, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 666
    .line 667
    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 676
    .line 677
    .line 678
    move-result-object v8

    .line 679
    invoke-virtual {v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    goto :goto_e

    .line 687
    :cond_15
    const/4 v10, 0x0

    .line 688
    const/4 v12, 0x1

    .line 689
    :goto_e
    add-int/2addr v4, v12

    .line 690
    goto :goto_c

    .line 691
    :cond_16
    const/4 v10, 0x0

    .line 692
    move-object v2, v10

    .line 693
    move-object v8, v2

    .line 694
    move/from16 v4, v19

    .line 695
    .line 696
    :goto_f
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-ge v4, v5, :cond_27

    .line 701
    .line 702
    move-object/from16 v5, v35

    .line 703
    .line 704
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    check-cast v7, Ljava/lang/String;

    .line 709
    .line 710
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 711
    .line 712
    invoke-static {v7, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 717
    .line 718
    invoke-static {v7, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v12

    .line 722
    new-instance v13, Landroidx/media3/common/Format$Builder;

    .line 723
    .line 724
    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 725
    .line 726
    .line 727
    new-instance v14, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    const-string v10, ":"

    .line 736
    .line 737
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v10

    .line 747
    invoke-virtual {v13, v10}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 748
    .line 749
    .line 750
    move-result-object v10

    .line 751
    invoke-virtual {v10, v12}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 752
    .line 753
    .line 754
    move-result-object v10

    .line 755
    invoke-virtual {v10, v15}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 756
    .line 757
    .line 758
    move-result-object v10

    .line 759
    invoke-static {v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    move-result v13

    .line 763
    invoke-virtual {v10, v13}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    .line 764
    .line 765
    .line 766
    move-result-object v10

    .line 767
    invoke-static {v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    .line 768
    .line 769
    .line 770
    move-result v13

    .line 771
    invoke-virtual {v10, v13}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 772
    .line 773
    .line 774
    move-result-object v10

    .line 775
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 776
    .line 777
    invoke-static {v7, v13, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v13

    .line 781
    invoke-virtual {v10, v13}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 782
    .line 783
    .line 784
    move-result-object v10

    .line 785
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 786
    .line 787
    invoke-static {v7, v13, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v13

    .line 791
    if-nez v13, :cond_17

    .line 792
    .line 793
    const/4 v13, 0x0

    .line 794
    goto :goto_10

    .line 795
    :cond_17
    invoke-static {v1, v13}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 796
    .line 797
    .line 798
    move-result-object v13

    .line 799
    :goto_10
    new-instance v14, Landroidx/media3/common/Metadata;

    .line 800
    .line 801
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 802
    .line 803
    move-object/from16 p0, v2

    .line 804
    .line 805
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 806
    .line 807
    invoke-direct {v1, v9, v12, v2}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 808
    .line 809
    .line 810
    move-object/from16 v21, v1

    .line 811
    .line 812
    const/4 v2, 0x1

    .line 813
    new-array v1, v2, [Landroidx/media3/common/Metadata$Entry;

    .line 814
    .line 815
    aput-object v21, v1, v19

    .line 816
    .line 817
    invoke-direct {v14, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 818
    .line 819
    .line 820
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 821
    .line 822
    invoke-static {v7, v1, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    sparse-switch v2, :sswitch_data_0

    .line 834
    .line 835
    .line 836
    :goto_11
    const/4 v1, -0x1

    .line 837
    goto :goto_12

    .line 838
    :sswitch_0
    const-string v2, "VIDEO"

    .line 839
    .line 840
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    if-nez v1, :cond_18

    .line 845
    .line 846
    goto :goto_11

    .line 847
    :cond_18
    const/4 v1, 0x3

    .line 848
    goto :goto_12

    .line 849
    :sswitch_1
    const-string v2, "AUDIO"

    .line 850
    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    if-nez v1, :cond_19

    .line 856
    .line 857
    goto :goto_11

    .line 858
    :cond_19
    const/4 v1, 0x2

    .line 859
    goto :goto_12

    .line 860
    :sswitch_2
    const-string v2, "CLOSED-CAPTIONS"

    .line 861
    .line 862
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    if-nez v1, :cond_1a

    .line 867
    .line 868
    goto :goto_11

    .line 869
    :cond_1a
    const/4 v1, 0x1

    .line 870
    goto :goto_12

    .line 871
    :sswitch_3
    const-string v2, "SUBTITLES"

    .line 872
    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    if-nez v1, :cond_1b

    .line 878
    .line 879
    goto :goto_11

    .line 880
    :cond_1b
    move/from16 v1, v19

    .line 881
    .line 882
    :goto_12
    packed-switch v1, :pswitch_data_0

    .line 883
    .line 884
    .line 885
    :goto_13
    move-object/from16 v9, v32

    .line 886
    .line 887
    move-object/from16 v2, v33

    .line 888
    .line 889
    :goto_14
    const/4 v7, 0x3

    .line 890
    goto/16 :goto_1b

    .line 891
    .line 892
    :pswitch_0
    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    if-eqz v1, :cond_1c

    .line 897
    .line 898
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 899
    .line 900
    iget-object v2, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 901
    .line 902
    const/4 v7, 0x2

    .line 903
    invoke-static {v2, v7}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    invoke-virtual {v10, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 908
    .line 909
    .line 910
    move-result-object v7

    .line 911
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    invoke-virtual {v7, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    iget v7, v1, Landroidx/media3/common/Format;->width:I

    .line 920
    .line 921
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    iget v7, v1, Landroidx/media3/common/Format;->height:I

    .line 926
    .line 927
    invoke-virtual {v2, v7}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    iget v1, v1, Landroidx/media3/common/Format;->frameRate:F

    .line 932
    .line 933
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    .line 934
    .line 935
    .line 936
    :cond_1c
    if-nez v13, :cond_1d

    .line 937
    .line 938
    goto :goto_13

    .line 939
    :cond_1d
    invoke-virtual {v10, v14}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 940
    .line 941
    .line 942
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 943
    .line 944
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    invoke-direct {v1, v13, v2, v9, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    move-object/from16 v2, v34

    .line 952
    .line 953
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    goto :goto_13

    .line 957
    :pswitch_1
    move-object/from16 v2, v34

    .line 958
    .line 959
    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    if-eqz v1, :cond_1e

    .line 964
    .line 965
    move-object/from16 v34, v2

    .line 966
    .line 967
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 968
    .line 969
    iget-object v2, v2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 970
    .line 971
    move-object/from16 v21, v1

    .line 972
    .line 973
    const/4 v1, 0x1

    .line 974
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    invoke-virtual {v10, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 979
    .line 980
    .line 981
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    goto :goto_15

    .line 986
    :cond_1e
    move-object/from16 v21, v1

    .line 987
    .line 988
    move-object/from16 v34, v2

    .line 989
    .line 990
    const/4 v1, 0x0

    .line 991
    :goto_15
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 992
    .line 993
    invoke-static {v7, v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    if-eqz v2, :cond_1f

    .line 998
    .line 999
    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v7

    .line 1003
    aget-object v7, v7, v19

    .line 1004
    .line 1005
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1006
    .line 1007
    .line 1008
    move-result v7

    .line 1009
    invoke-virtual {v10, v7}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 1010
    .line 1011
    .line 1012
    const-string v7, "audio/eac3"

    .line 1013
    .line 1014
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v7

    .line 1018
    if-eqz v7, :cond_1f

    .line 1019
    .line 1020
    const-string v7, "/JOC"

    .line 1021
    .line 1022
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v2

    .line 1026
    if-eqz v2, :cond_1f

    .line 1027
    .line 1028
    const-string v1, "ec+3"

    .line 1029
    .line 1030
    invoke-virtual {v10, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1031
    .line 1032
    .line 1033
    const-string v1, "audio/eac3-joc"

    .line 1034
    .line 1035
    :cond_1f
    invoke-virtual {v10, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1036
    .line 1037
    .line 1038
    if-eqz v13, :cond_21

    .line 1039
    .line 1040
    invoke-virtual {v10, v14}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 1041
    .line 1042
    .line 1043
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 1044
    .line 1045
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    invoke-direct {v1, v13, v2, v9, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    move-object/from16 v2, v33

    .line 1053
    .line 1054
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    :cond_20
    move-object/from16 v9, v32

    .line 1058
    .line 1059
    goto/16 :goto_14

    .line 1060
    .line 1061
    :cond_21
    move-object/from16 v2, v33

    .line 1062
    .line 1063
    if-eqz v21, :cond_20

    .line 1064
    .line 1065
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    move-object/from16 v12, p0

    .line 1070
    .line 1071
    move-object v8, v1

    .line 1072
    :goto_16
    move-object/from16 v9, v32

    .line 1073
    .line 1074
    const/4 v7, 0x3

    .line 1075
    :goto_17
    const/16 v20, 0x1

    .line 1076
    .line 1077
    goto/16 :goto_1c

    .line 1078
    .line 1079
    :pswitch_2
    move-object/from16 v2, v33

    .line 1080
    .line 1081
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 1082
    .line 1083
    invoke-static {v7, v1, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    const-string v7, "CC"

    .line 1088
    .line 1089
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v7

    .line 1093
    if-eqz v7, :cond_22

    .line 1094
    .line 1095
    const/4 v7, 0x2

    .line 1096
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1101
    .line 1102
    .line 1103
    move-result v1

    .line 1104
    const-string v9, "application/cea-608"

    .line 1105
    .line 1106
    goto :goto_18

    .line 1107
    :cond_22
    const/4 v7, 0x2

    .line 1108
    const/4 v9, 0x7

    .line 1109
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1114
    .line 1115
    .line 1116
    move-result v1

    .line 1117
    const-string v9, "application/cea-708"

    .line 1118
    .line 1119
    :goto_18
    if-nez p0, :cond_23

    .line 1120
    .line 1121
    new-instance v12, Ljava/util/ArrayList;

    .line 1122
    .line 1123
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_19

    .line 1127
    :cond_23
    move-object/from16 v12, p0

    .line 1128
    .line 1129
    :goto_19
    invoke-virtual {v10, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v9

    .line 1133
    invoke-virtual {v9, v1}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    .line 1142
    .line 1143
    goto :goto_16

    .line 1144
    :pswitch_3
    move-object/from16 v2, v33

    .line 1145
    .line 1146
    const/4 v7, 0x2

    .line 1147
    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    if-eqz v1, :cond_24

    .line 1152
    .line 1153
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 1154
    .line 1155
    iget-object v1, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1156
    .line 1157
    const/4 v7, 0x3

    .line 1158
    invoke-static {v1, v7}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    invoke-virtual {v10, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1163
    .line 1164
    .line 1165
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    goto :goto_1a

    .line 1170
    :cond_24
    const/4 v7, 0x3

    .line 1171
    const/4 v1, 0x0

    .line 1172
    :goto_1a
    if-nez v1, :cond_25

    .line 1173
    .line 1174
    const-string v1, "text/vtt"

    .line 1175
    .line 1176
    :cond_25
    invoke-virtual {v10, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    invoke-virtual {v1, v14}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 1181
    .line 1182
    .line 1183
    if-eqz v13, :cond_26

    .line 1184
    .line 1185
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 1186
    .line 1187
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v10

    .line 1191
    invoke-direct {v1, v13, v10, v9, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    move-object/from16 v9, v32

    .line 1195
    .line 1196
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    .line 1198
    .line 1199
    goto :goto_1b

    .line 1200
    :cond_26
    move-object/from16 v9, v32

    .line 1201
    .line 1202
    const-string v1, "HlsPlaylistParser"

    .line 1203
    .line 1204
    const-string v10, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    .line 1205
    .line 1206
    invoke-static {v1, v10}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    :goto_1b
    move-object/from16 v12, p0

    .line 1210
    .line 1211
    goto/16 :goto_17

    .line 1212
    .line 1213
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    .line 1214
    .line 1215
    move-object/from16 v1, p1

    .line 1216
    .line 1217
    move-object/from16 v33, v2

    .line 1218
    .line 1219
    move-object/from16 v35, v5

    .line 1220
    .line 1221
    move-object/from16 v32, v9

    .line 1222
    .line 1223
    move-object v2, v12

    .line 1224
    const/4 v10, 0x0

    .line 1225
    goto/16 :goto_f

    .line 1226
    .line 1227
    :cond_27
    move-object/from16 p0, v2

    .line 1228
    .line 1229
    move-object/from16 v9, v32

    .line 1230
    .line 1231
    move-object/from16 v2, v33

    .line 1232
    .line 1233
    if-eqz v16, :cond_28

    .line 1234
    .line 1235
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1236
    .line 1237
    goto :goto_1d

    .line 1238
    :cond_28
    move-object/from16 v0, p0

    .line 1239
    .line 1240
    :goto_1d
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 1241
    .line 1242
    move-object v5, v2

    .line 1243
    move-object v6, v9

    .line 1244
    move-object/from16 v7, v17

    .line 1245
    .line 1246
    move/from16 v10, v29

    .line 1247
    .line 1248
    move-object/from16 v12, v30

    .line 1249
    .line 1250
    move-object/from16 v2, v31

    .line 1251
    .line 1252
    move-object/from16 v4, v34

    .line 1253
    .line 1254
    move-object v9, v0

    .line 1255
    move-object v0, v1

    .line 1256
    move-object/from16 v1, p1

    .line 1257
    .line 1258
    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 1259
    .line 1260
    .line 1261
    return-object v0

    .line 1262
    nop

    .line 1263
    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "YES"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    return p2
.end method

.method private static parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    return-wide p2
.end method

.method private static parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    return p2
.end method

.method private static parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    return-wide p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 4
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const-string p1, ","

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "public.accessibility.describes-video"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x200

    .line 30
    .line 31
    :cond_1
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    or-int/lit16 v0, v0, 0x1000

    .line 40
    .line 41
    :cond_2
    const-string p1, "public.accessibility.describes-music-and-sound"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    or-int/lit16 v0, v0, 0x400

    .line 50
    .line 51
    :cond_3
    const-string p1, "public.easy-to-read"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    or-int/lit16 p0, v0, 0x2000

    .line 60
    .line 61
    return p0

    .line 62
    :cond_4
    return v0
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    or-int/lit8 p0, v0, 0x4

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    return v0
.end method

.method private static parseServerControl(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    cmpl-double v1, v4, v2

    .line 12
    .line 13
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    move-wide v11, v8

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    mul-double/2addr v4, v6

    .line 28
    double-to-long v4, v4

    .line 29
    move-wide v11, v4

    .line 30
    :goto_0
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v14

    .line 43
    cmpl-double v1, v14, v2

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    move-wide v14, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    mul-double/2addr v14, v6

    .line 50
    double-to-long v14, v14

    .line 51
    :goto_1
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    cmpl-double v1, v16, v2

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    :goto_2
    move-wide/from16 v16, v8

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    mul-double v1, v16, v6

    .line 65
    .line 66
    double-to-long v8, v1

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 69
    .line 70
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v18

    .line 74
    new-instance v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 75
    .line 76
    invoke-direct/range {v10 .. v18}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 77
    .line 78
    .line 79
    return-object v10
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "Couldn\'t match "

    .line 11
    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " in "

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method

.method private static parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Ljava/math/BigDecimal;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/math/BigDecimal;

    .line 13
    .line 14
    const-wide/32 v0, 0xf4240

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    return-wide p0
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    :try_start_0
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMultivariantPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 12
    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXTINF"

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-KEY"

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-BYTERANGE"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-ENDLIST"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {v1, v2, v3, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_4
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 27
    :cond_5
    :try_start_2
    const-string p1, "Input does not start with the #EXTM3U header."

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
