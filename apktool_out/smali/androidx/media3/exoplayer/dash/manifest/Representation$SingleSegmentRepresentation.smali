.class public Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;
.super Landroidx/media3/exoplayer/dash/manifest/Representation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field public final contentLength:J

.field private final indexUri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

.field private final segmentIndex:Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    const/4 v9, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v1, p1

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    move-object/from16 v6, p6

    .line 8
    .line 9
    move-object/from16 v7, p7

    .line 10
    .line 11
    move-object/from16 v8, p8

    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/dash/manifest/Representation;-><init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/Representation$1;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-virtual {p5}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 36
    .line 37
    move-object/from16 p2, p9

    .line 38
    .line 39
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    .line 40
    .line 41
    move-wide/from16 p2, p10

    .line 42
    .line 43
    iput-wide p2, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    .line 50
    .line 51
    new-instance p4, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 52
    .line 53
    const/4 p5, 0x0

    .line 54
    const-wide/16 v1, 0x0

    .line 55
    .line 56
    move-wide/from16 p6, p2

    .line 57
    .line 58
    move-object p2, p4

    .line 59
    move-object p3, p5

    .line 60
    move-wide p4, v1

    .line 61
    invoke-direct/range {p2 .. p7}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    .line 68
    .line 69
    return-void
.end method

.method public static newInstance(JLandroidx/media3/common/Format;Ljava/lang/String;JJJJLjava/util/List;Ljava/lang/String;J)Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/common/Format;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 2
    .line 3
    sub-long v1, p6, p4

    .line 4
    .line 5
    const-wide/16 v6, 0x1

    .line 6
    .line 7
    add-long v4, v1, v6

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-wide/from16 v2, p4

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    new-instance v13, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    .line 16
    .line 17
    sub-long v1, p10, p8

    .line 18
    .line 19
    add-long v8, v1, v6

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    move-wide/from16 v6, p8

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    move-object v0, v13

    .line 29
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJ)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 33
    .line 34
    move-object/from16 v2, p3

    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    new-instance v8, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    .line 48
    move-result-object v15

    .line 49
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    .line 52
    move-result-object v16

    .line 53
    move-wide/from16 v9, p0

    .line 54
    .line 55
    move-object/from16 v11, p2

    .line 56
    .line 57
    move-object/from16 v14, p12

    .line 58
    .line 59
    move-object/from16 v17, p13

    .line 60
    .line 61
    move-wide/from16 v18, p14

    .line 62
    .line 63
    invoke-direct/range {v8 .. v19}, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    return-object v8
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()Landroidx/media3/exoplayer/dash/DashSegmentIndex;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndexUri()Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 2
    .line 3
    return-object v0
.end method
