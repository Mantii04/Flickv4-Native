.class final Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackGroupInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory;
    }
.end annotation


# static fields
.field private static final CATEGORY_EMBEDDED:I = 0x1

.field private static final CATEGORY_MANIFEST_EVENTS:I = 0x2

.field private static final CATEGORY_PRIMARY:I


# instance fields
.field public final adaptationSetIndices:[I

.field public final embeddedClosedCaptionTrackGroupIndex:I

.field public final embeddedClosedCaptionTrackOriginalFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final embeddedEventMessageTrackGroupIndex:I

.field public final eventStreamGroupIndex:I

.field public final primaryTrackGroupIndex:I

.field public final trackGroupCategory:I

.field public final trackType:I


# direct methods
.method private constructor <init>(II[IIIIILcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[IIIII",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 7
    .line 8
    iput p2, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackOriginalFormats:Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    return-void
.end method

.method public static embeddedClosedCaptionTrack([IILcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Format;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 2
    .line 3
    const/4 v6, -0x1

    .line 4
    const/4 v7, -0x1

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v5, -0x1

    .line 8
    move-object v3, p0

    .line 9
    move v4, p1

    .line 10
    move-object v8, p2

    .line 11
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static embeddedEmsgTrack([II)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 2
    .line 3
    const/4 v7, -0x1

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    .line 7
    move-result-object v8

    .line 8
    const/4 v1, 0x5

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v5, -0x1

    .line 11
    const/4 v6, -0x1

    .line 12
    move-object v3, p0

    .line 13
    move v4, p1

    .line 14
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static mpdEventTrack(I)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v3, v1, [I

    .line 5
    .line 6
    const/4 v6, -0x1

    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    const/4 v1, 0x5

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, -0x1

    .line 15
    move v7, p0

    .line 16
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static primaryTrack(I[IIII)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 2
    .line 3
    const/4 v7, -0x1

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    .line 7
    move-result-object v8

    .line 8
    const/4 v2, 0x0

    .line 9
    move v1, p0

    .line 10
    move-object v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    move v6, p4

    .line 14
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
