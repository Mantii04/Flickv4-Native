.class public final Landroidx/media3/common/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field private static final FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_COUNT:Ljava/lang/String;

.field private static final FIELD_DURATIONS_US:Ljava/lang/String;

.field static final FIELD_IDS:Ljava/lang/String;

.field static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

.field static final FIELD_MEDIA_ITEMS:Ljava/lang/String;

.field private static final FIELD_ORIGINAL_COUNT:Ljava/lang/String;

.field private static final FIELD_SKIP_INFOS:Ljava/lang/String;

.field private static final FIELD_STATES:Ljava/lang/String;

.field private static final FIELD_TIME_US:Ljava/lang/String;

.field private static final FIELD_URIS:Ljava/lang/String;


# instance fields
.field public final contentResumeOffsetUs:J

.field public final count:I

.field public final durationsUs:[J

.field public final ids:[Ljava/lang/String;

.field public final isPlaceholder:Z

.field public final isServerSideInserted:Z

.field public final mediaItems:[Landroidx/media3/common/MediaItem;

.field public final originalCount:I

.field public final skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

.field public final states:[I

.field public final timeUs:J

.field public final uris:[Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x7

    .line 51
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v0, 0x8

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v0, 0x9

    .line 66
    .line 67
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    .line 72
    .line 73
    const/16 v0, 0xa

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 80
    .line 81
    const/16 v0, 0xb

    .line 82
    .line 83
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_SKIP_INFOS:Ljava/lang/String;

    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>(J)V
    .locals 15

    const/4 v0, 0x0

    .line 2
    new-array v6, v0, [I

    new-array v7, v0, [Landroidx/media3/common/MediaItem;

    new-array v8, v0, [J

    new-array v12, v0, [Ljava/lang/String;

    new-array v13, v0, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    const/4 v14, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-void
.end method

.method private constructor <init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V
    .locals 5

    move-object/from16 v0, p12

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    array-length v1, p5

    array-length v2, p6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, LP3/v;->checkArgument(Z)V

    .line 5
    array-length v1, p5

    array-length v2, v0

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-static {v4}, LP3/v;->checkArgument(Z)V

    .line 6
    iput-wide p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 7
    iput p3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 8
    iput p4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 9
    iput-object p5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 10
    iput-object p6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 11
    iput-object p7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 12
    iput-wide p8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 13
    iput-boolean p10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 14
    array-length p1, p6

    new-array p1, p1, [Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 15
    :goto_2
    iget-object p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length p2, p1

    if-ge v3, p2, :cond_3

    .line 16
    aget-object p2, p6, v3

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_3

    :cond_2
    iget-object p2, p2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p2, p2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    :goto_3
    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 p1, p11

    .line 17
    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 18
    iput-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move/from16 p1, p13

    .line 19
    iput-boolean p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    return-void
.end method

.method public synthetic constructor <init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;ZLandroidx/media3/common/AdPlaybackState$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/common/AdPlaybackState$AdGroup;ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withIsPlaceholder(ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static copyDurationsUsWithSpaceForAdCount([JI)[J
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method private static copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 11
    .line 12
    return-object p0
.end method

.method private static copyStatesWithSpaceForAdCount([II)[I
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 15

    .line 1
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    sget-object v12, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_SKIP_INFOS:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    sget-object v13, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    move-object p0, v1

    .line 74
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    if-nez v6, :cond_0

    .line 78
    .line 79
    new-array v6, v13, [I

    .line 80
    .line 81
    :cond_0
    invoke-static {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getMediaItemsFromBundleArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;)[Landroidx/media3/common/MediaItem;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez v7, :cond_1

    .line 86
    .line 87
    new-array v7, v13, [J

    .line 88
    .line 89
    :cond_1
    new-array v0, v13, [Ljava/lang/String;

    .line 90
    .line 91
    if-nez v8, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [Ljava/lang/String;

    .line 99
    .line 100
    :goto_0
    if-nez v12, :cond_3

    .line 101
    .line 102
    new-array v8, v13, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 103
    .line 104
    :goto_1
    move-object v12, v0

    .line 105
    move-object v13, v8

    .line 106
    move-object v8, v7

    .line 107
    move-object v7, p0

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-static {v12}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getSkipInfosFromBundleArrays(Ljava/util/List;)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    goto :goto_1

    .line 114
    :goto_2
    invoke-direct/range {v1 .. v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 115
    .line 116
    .line 117
    return-object v1
.end method

.method private getMediaItemsArrayBundles()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v4}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method private static getMediaItemsFromBundleArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;)[Landroidx/media3/common/MediaItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)[",
            "Landroidx/media3/common/MediaItem;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-array p1, p1, [Landroidx/media3/common/MediaItem;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/Bundle;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v2}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_1
    aput-object v2, p1, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object p1

    .line 37
    :cond_2
    if-eqz p1, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    new-array p0, p0, [Landroidx/media3/common/MediaItem;

    .line 44
    .line 45
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ge v1, v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/net/Uri;

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-static {v2}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_3
    aput-object v2, p0, v1

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    return-object p0

    .line 71
    :cond_5
    new-array p0, v1, [Landroidx/media3/common/MediaItem;

    .line 72
    .line 73
    return-object p0
.end method

.method private getSkipInfoArrayBundles()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v4}, Landroidx/media3/common/AdPlaybackState$SkipInfo;->toBundle()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method private static getSkipInfosFromBundleArrays(Ljava/util/List;)[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)[",
            "Landroidx/media3/common/AdPlaybackState$SkipInfo;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/os/Bundle;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {v2}, Landroidx/media3/common/AdPlaybackState$SkipInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_1
    aput-object v2, v0, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method

.method private withIsPlaceholder(ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 4
    .line 5
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 6
    .line 7
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 14
    .line 15
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 16
    .line 17
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 20
    .line 21
    move v13, p1

    .line 22
    move/from16 v10, p2

    .line 23
    .line 24
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public copy()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 4
    .line 5
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 6
    .line 7
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 10
    .line 11
    array-length v6, v5

    .line 12
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 17
    .line 18
    array-length v7, v6

    .line 19
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, [Landroidx/media3/common/MediaItem;

    .line 24
    .line 25
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 26
    .line 27
    array-length v8, v7

    .line 28
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 33
    .line 34
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 35
    .line 36
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 37
    .line 38
    array-length v12, v11

    .line 39
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    check-cast v11, [Ljava/lang/String;

    .line 44
    .line 45
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 46
    .line 47
    array-length v13, v12

    .line 48
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    check-cast v12, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 53
    .line 54
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 55
    .line 56
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 18
    .line 19
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 20
    .line 21
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 28
    .line 29
    iget v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 34
    .line 35
    iget v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 40
    .line 41
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 50
    .line 51
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 60
    .line 61
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 70
    .line 71
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 72
    .line 73
    cmp-long v2, v2, v4

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 78
    .line 79
    iget-boolean v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 94
    .line 95
    iget-object v3, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 104
    .line 105
    iget-boolean p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 106
    .line 107
    if-ne v2, p1, :cond_2

    .line 108
    .line 109
    return v0

    .line 110
    :cond_2
    :goto_0
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public getIndexOfAdId(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, -0x1

    .line 20
    return p1
.end method

.method public getNextAdIndexToPlay(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge p1, v2, :cond_1

    .line 7
    .line 8
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    aget v1, v1, p1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    return p1
.end method

.method public hasUnplayedAds()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 11
    .line 12
    if-ge v1, v3, :cond_3

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 15
    .line 16
    aget v3, v3, v1

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    if-ne v3, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 11
    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    ushr-long v4, v1, v3

    .line 15
    .line 16
    xor-long/2addr v1, v4

    .line 17
    long-to-int v1, v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 40
    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 49
    .line 50
    ushr-long v2, v4, v3

    .line 51
    .line 52
    xor-long/2addr v2, v4

    .line 53
    long-to-int v0, v2

    .line 54
    add-int/2addr v1, v0

    .line 55
    mul-int/lit8 v1, v1, 0x1f

    .line 56
    .line 57
    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 58
    .line 59
    add-int/2addr v1, v0

    .line 60
    mul-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x1f

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 72
    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget-boolean v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 81
    .line 82
    add-int/2addr v0, v1

    .line 83
    return v0
.end method

.method public isLivePostrollPlaceholder()Z
    .locals 4

    .line 2
    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLivePostrollPlaceholder(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldPlayAdGroup()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 14
    .line 15
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 21
    .line 22
    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 32
    .line 33
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getMediaItemsArrayBundles()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 67
    .line 68
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 74
    .line 75
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_SKIP_INFOS:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getSkipInfoArrayBundles()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 106
    .line 107
    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    move v3, p1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    .line 5
    .line 6
    .line 7
    move-result-object v5

    .line 8
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 15
    .line 16
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v6, v0

    .line 21
    check-cast v6, [Landroidx/media3/common/MediaItem;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v11, v0

    .line 30
    check-cast v11, [Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 39
    .line 40
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 41
    .line 42
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 43
    .line 44
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 45
    .line 46
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 47
    .line 48
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 49
    .line 50
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    array-length v0, v1

    .line 8
    invoke-static {p1, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    move-object v7, p1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    array-length v0, p1

    .line 20
    array-length v2, v1

    .line 21
    if-le v0, v2, :cond_0

    .line 22
    .line 23
    array-length v0, v1

    .line 24
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 30
    .line 31
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 32
    .line 33
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 34
    .line 35
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 36
    .line 37
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 38
    .line 39
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 40
    .line 41
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 42
    .line 43
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 44
    .line 45
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 46
    .line 47
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 48
    .line 49
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 50
    .line 51
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public withAdId(Ljava/lang/String;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 4
    .line 5
    add-int/lit8 v2, p2, 0x1

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    array-length v3, v8

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    :goto_0
    move-object v10, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    array-length v2, v8

    .line 20
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    array-length v3, v8

    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    :goto_2
    move-object v9, v1

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    array-length v2, v8

    .line 34
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Landroidx/media3/common/MediaItem;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v2, v8

    .line 44
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v14, v1

    .line 49
    check-cast v14, [Ljava/lang/String;

    .line 50
    .line 51
    aput-object p1, v14, p2

    .line 52
    .line 53
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 54
    .line 55
    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 56
    .line 57
    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 58
    .line 59
    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 60
    .line 61
    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 62
    .line 63
    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 64
    .line 65
    iget-object v15, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 66
    .line 67
    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 68
    .line 69
    move/from16 v16, v1

    .line 70
    .line 71
    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 72
    .line 73
    .line 74
    return-object v3
.end method

.method public withAdMediaItem(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 4
    .line 5
    add-int/lit8 v2, p2, 0x1

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    array-length v3, v8

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    :goto_0
    move-object v10, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    array-length v2, v8

    .line 20
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 26
    .line 27
    array-length v2, v8

    .line 28
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v9, v1

    .line 33
    check-cast v9, [Landroidx/media3/common/MediaItem;

    .line 34
    .line 35
    aput-object p1, v9, p2

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput v1, v8, p2

    .line 39
    .line 40
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    array-length v3, v8

    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    :goto_2
    move-object v14, v1

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    array-length v2, v8

    .line 49
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, [Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 57
    .line 58
    array-length v2, v1

    .line 59
    array-length v3, v8

    .line 60
    if-ne v2, v3, :cond_2

    .line 61
    .line 62
    :goto_4
    move-object v15, v1

    .line 63
    goto :goto_5

    .line 64
    :cond_2
    array-length v2, v8

    .line 65
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_4

    .line 70
    :goto_5
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 71
    .line 72
    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 73
    .line 74
    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 75
    .line 76
    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 77
    .line 78
    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 79
    .line 80
    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 81
    .line 82
    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 83
    .line 84
    move/from16 v16, v1

    .line 85
    .line 86
    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 87
    .line 88
    .line 89
    return-object v3
.end method

.method public withAdSkipInfo(Landroidx/media3/common/AdPlaybackState$SkipInfo;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 4
    .line 5
    add-int/lit8 v2, p2, 0x1

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    array-length v3, v8

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    :goto_0
    move-object v10, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    array-length v2, v8

    .line 20
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    array-length v3, v8

    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    :goto_2
    move-object v9, v1

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    array-length v2, v8

    .line 34
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Landroidx/media3/common/MediaItem;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v2, v1

    .line 44
    array-length v3, v8

    .line 45
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    :goto_4
    move-object v14, v1

    .line 48
    goto :goto_5

    .line 49
    :cond_2
    array-length v2, v8

    .line 50
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, [Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_5
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 58
    .line 59
    array-length v2, v8

    .line 60
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    aput-object p1, v15, p2

    .line 65
    .line 66
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 67
    .line 68
    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 69
    .line 70
    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 71
    .line 72
    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 73
    .line 74
    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 75
    .line 76
    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 77
    .line 78
    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 79
    .line 80
    move/from16 v16, v1

    .line 81
    .line 82
    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 83
    .line 84
    .line 85
    return-object v3
.end method

.method public withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eq v3, v4, :cond_1

    .line 13
    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v5

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v3, v6

    .line 20
    :goto_1
    invoke-static {v3}, LP3/v;->checkArgument(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 24
    .line 25
    add-int/lit8 v4, v2, 0x1

    .line 26
    .line 27
    invoke-static {v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    aget v3, v12, v2

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    if-eq v3, v6, :cond_2

    .line 36
    .line 37
    if-ne v3, v1, :cond_3

    .line 38
    .line 39
    :cond_2
    move v5, v6

    .line 40
    :cond_3
    invoke-static {v5}, LP3/v;->checkArgument(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 44
    .line 45
    array-length v4, v3

    .line 46
    array-length v5, v12

    .line 47
    if-ne v4, v5, :cond_4

    .line 48
    .line 49
    :goto_2
    move-object v14, v3

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    array-length v4, v12

    .line 52
    invoke-static {v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    goto :goto_2

    .line 57
    :goto_3
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 58
    .line 59
    array-length v4, v3

    .line 60
    array-length v5, v12

    .line 61
    if-ne v4, v5, :cond_5

    .line 62
    .line 63
    :goto_4
    move-object v13, v3

    .line 64
    goto :goto_5

    .line 65
    :cond_5
    array-length v4, v12

    .line 66
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, [Landroidx/media3/common/MediaItem;

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :goto_5
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 74
    .line 75
    array-length v4, v3

    .line 76
    array-length v5, v12

    .line 77
    if-ne v4, v5, :cond_6

    .line 78
    .line 79
    :goto_6
    move-object/from16 v18, v3

    .line 80
    .line 81
    goto :goto_7

    .line 82
    :cond_6
    array-length v4, v12

    .line 83
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, [Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :goto_7
    aput v1, v12, v2

    .line 91
    .line 92
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 93
    .line 94
    array-length v2, v1

    .line 95
    array-length v3, v12

    .line 96
    if-ne v2, v3, :cond_7

    .line 97
    .line 98
    :goto_8
    move-object/from16 v19, v1

    .line 99
    .line 100
    goto :goto_9

    .line 101
    :cond_7
    array-length v2, v12

    .line 102
    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_8

    .line 107
    :goto_9
    new-instance v7, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 108
    .line 109
    iget-wide v8, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 110
    .line 111
    iget v10, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 112
    .line 113
    iget v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 114
    .line 115
    iget-wide v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 116
    .line 117
    iget-boolean v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 118
    .line 119
    iget-boolean v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 120
    .line 121
    move-wide v15, v1

    .line 122
    move/from16 v17, v3

    .line 123
    .line 124
    move/from16 v20, v4

    .line 125
    .line 126
    invoke-direct/range {v7 .. v20}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 127
    .line 128
    .line 129
    return-object v7
.end method

.method public withAdUri(Landroid/net/Uri;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdMediaItem(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public withAllAdsReset()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 15

    .line 1
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 8
    .line 9
    array-length v4, v0

    .line 10
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    if-ge v1, v4, :cond_4

    .line 17
    .line 18
    aget v2, v6, v1

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    if-ne v2, v3, :cond_3

    .line 28
    .line 29
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    move v2, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v2, 0x1

    .line 38
    :goto_1
    aput v2, v6, v1

    .line 39
    .line 40
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 44
    .line 45
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 46
    .line 47
    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 48
    .line 49
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 50
    .line 51
    iget-object v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 52
    .line 53
    iget-wide v9, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 54
    .line 55
    iget-boolean v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 56
    .line 57
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 58
    .line 59
    iget-object v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 60
    .line 61
    iget-boolean v14, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 62
    .line 63
    invoke-direct/range {v1 .. v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method

.method public withAllAdsSkipped()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    new-instance v4, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 10
    .line 11
    iget-wide v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 12
    .line 13
    iget v8, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 14
    .line 15
    new-array v9, v3, [I

    .line 16
    .line 17
    new-array v10, v3, [Landroidx/media3/common/MediaItem;

    .line 18
    .line 19
    new-array v11, v3, [J

    .line 20
    .line 21
    iget-wide v12, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 22
    .line 23
    iget-boolean v14, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 24
    .line 25
    iget-object v15, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 28
    .line 29
    iget-boolean v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object/from16 v16, v1

    .line 33
    .line 34
    move/from16 v17, v2

    .line 35
    .line 36
    invoke-direct/range {v4 .. v17}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 37
    .line 38
    .line 39
    return-object v4

    .line 40
    :cond_0
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 41
    .line 42
    array-length v7, v1

    .line 43
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    :goto_0
    if-ge v3, v7, :cond_3

    .line 48
    .line 49
    aget v1, v9, v3

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    :cond_1
    const/4 v1, 0x2

    .line 57
    aput v1, v9, v3

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    new-instance v4, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 63
    .line 64
    iget-wide v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 65
    .line 66
    iget v8, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 67
    .line 68
    iget-object v10, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 69
    .line 70
    iget-object v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 71
    .line 72
    iget-wide v12, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 73
    .line 74
    iget-boolean v14, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 75
    .line 76
    iget-object v15, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 79
    .line 80
    iget-boolean v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 81
    .line 82
    move-object/from16 v16, v1

    .line 83
    .line 84
    move/from16 v17, v2

    .line 85
    .line 86
    invoke-direct/range {v4 .. v17}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 87
    .line 88
    .line 89
    return-object v4
.end method

.method public withContentResumeOffsetUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 4
    .line 5
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 6
    .line 7
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 14
    .line 15
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 16
    .line 17
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 20
    .line 21
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 22
    .line 23
    move-wide v8, p1

    .line 24
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public withIsServerSideInserted(Z)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 4
    .line 5
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 6
    .line 7
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 14
    .line 15
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 16
    .line 17
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 20
    .line 21
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 22
    .line 23
    move v10, p1

    .line 24
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public withLastAdRemoved()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    add-int/lit8 v6, v2, -0x1

    .line 7
    .line 8
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 13
    .line 14
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v9, v1

    .line 19
    check-cast v9, [Landroidx/media3/common/MediaItem;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 22
    .line 23
    array-length v2, v1

    .line 24
    if-le v2, v6, :cond_0

    .line 25
    .line 26
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    move-object v10, v1

    .line 31
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v14, v1

    .line 38
    check-cast v14, [Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 41
    .line 42
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v15, v1

    .line 47
    check-cast v15, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 48
    .line 49
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 50
    .line 51
    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 52
    .line 53
    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 54
    .line 55
    invoke-static {v10}, Landroidx/media3/common/util/Util;->sum([J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v11

    .line 59
    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 60
    .line 61
    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 62
    .line 63
    move/from16 v16, v1

    .line 64
    .line 65
    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 66
    .line 67
    .line 68
    return-object v3
.end method

.method public withOriginalAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 4
    .line 5
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 6
    .line 7
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 8
    .line 9
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 10
    .line 11
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 12
    .line 13
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 14
    .line 15
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 16
    .line 17
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 20
    .line 21
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 22
    .line 23
    move v4, p1

    .line 24
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public withTimeUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 2
    .line 3
    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 4
    .line 5
    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 6
    .line 7
    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 8
    .line 9
    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 10
    .line 11
    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 12
    .line 13
    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 14
    .line 15
    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 16
    .line 17
    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 20
    .line 21
    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 22
    .line 23
    move-wide v1, p1

    .line 24
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
