.class public final Landroidx/media3/common/AdPlaybackState$SkipInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkipInfo"
.end annotation


# static fields
.field private static final FIELD_LABEL_ID:Ljava/lang/String;

.field private static final FIELD_SKIP_DURATION_US:Ljava/lang/String;

.field private static final FIELD_SKIP_OFFSET_US:Ljava/lang/String;


# instance fields
.field public final labelId:Ljava/lang/String;

.field public final skipDurationUs:J

.field public final skipOffsetUs:J


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
    sput-object v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_OFFSET_US:Ljava/lang/String;

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
    sput-object v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_DURATION_US:Ljava/lang/String;

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
    sput-object v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_LABEL_ID:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    cmp-long v0, p3, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 24
    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const-wide/16 p1, 0x0

    .line 30
    .line 31
    :goto_2
    iput-wide p1, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    .line 32
    .line 33
    iput-wide p3, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    .line 34
    .line 35
    iput-object p5, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_OFFSET_US:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-object v3, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_DURATION_US:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    sget-object v5, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_LABEL_ID:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/AdPlaybackState$SkipInfo;-><init>(JJLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
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
    const-class v3, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 18
    .line 19
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    .line 20
    .line 21
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    .line 28
    .line 29
    iget-wide v4, p1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    .line 30
    .line 31
    cmp-long v2, v2, v4

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v0, v3, v4

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v3, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v2, v3, v0

    .line 26
    .line 27
    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
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
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_OFFSET_US:Ljava/lang/String;

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_DURATION_US:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_LABEL_ID:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
