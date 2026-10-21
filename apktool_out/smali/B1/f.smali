.class public final LB1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:LB1/f;


# instance fields
.field public final a:Landroidx/work/NetworkType;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, LB1/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LB1/d;-><init>(Lkotlin/jvm/internal/g;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, LB1/f;

    .line 8
    .line 9
    const/16 v13, 0xff

    .line 10
    .line 11
    const/4 v14, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    invoke-direct/range {v2 .. v14}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;ILkotlin/jvm/internal/g;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, LB1/f;->i:LB1/f;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(LB1/f;)V
    .locals 12

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v3, p1, LB1/f;->b:Z

    .line 14
    iget-boolean v4, p1, LB1/f;->c:Z

    .line 15
    iget-object v2, p1, LB1/f;->a:Landroidx/work/NetworkType;

    .line 16
    iget-boolean v5, p1, LB1/f;->d:Z

    .line 17
    iget-boolean v6, p1, LB1/f;->e:Z

    .line 18
    iget-object v11, p1, LB1/f;->h:Ljava/util/Set;

    .line 19
    iget-wide v7, p1, LB1/f;->f:J

    .line 20
    iget-wide v9, p1, LB1/f;->g:J

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v11}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/NetworkType;",
            "ZZZZJJ",
            "Ljava/util/Set<",
            "LB1/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LB1/f;->a:Landroidx/work/NetworkType;

    .line 3
    iput-boolean p2, p0, LB1/f;->b:Z

    .line 4
    iput-boolean p3, p0, LB1/f;->c:Z

    .line 5
    iput-boolean p4, p0, LB1/f;->d:Z

    .line 6
    iput-boolean p5, p0, LB1/f;->e:Z

    .line 7
    iput-wide p6, p0, LB1/f;->f:J

    .line 8
    iput-wide p8, p0, LB1/f;->g:J

    .line 9
    iput-object p10, p0, LB1/f;->h:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;ILkotlin/jvm/internal/g;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    .line 10
    sget-object p1, Landroidx/work/NetworkType;->b:Landroidx/work/NetworkType;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    const/4 v0, 0x0

    if-eqz p12, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    const-wide/16 v0, -0x1

    if-eqz p12, :cond_5

    move-wide p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-wide p8, v0

    :cond_6
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_7

    .line 11
    invoke-static {}, Lv5/B;->emptySet()Ljava/util/Set;

    move-result-object p10

    :cond_7
    move-object p12, p10

    move-wide p10, p8

    move-wide p8, p6

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 12
    invoke-direct/range {p2 .. p12}, LB1/f;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, LB1/f;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    check-cast p1, LB1/f;

    .line 22
    .line 23
    iget-boolean v1, p0, LB1/f;->b:Z

    .line 24
    .line 25
    iget-boolean v2, p1, LB1/f;->b:Z

    .line 26
    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget-boolean v1, p0, LB1/f;->c:Z

    .line 31
    .line 32
    iget-boolean v2, p1, LB1/f;->c:Z

    .line 33
    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    iget-boolean v1, p0, LB1/f;->d:Z

    .line 38
    .line 39
    iget-boolean v2, p1, LB1/f;->d:Z

    .line 40
    .line 41
    if-eq v1, v2, :cond_4

    .line 42
    .line 43
    return v0

    .line 44
    :cond_4
    iget-boolean v1, p0, LB1/f;->e:Z

    .line 45
    .line 46
    iget-boolean v2, p1, LB1/f;->e:Z

    .line 47
    .line 48
    if-eq v1, v2, :cond_5

    .line 49
    .line 50
    return v0

    .line 51
    :cond_5
    iget-wide v1, p0, LB1/f;->f:J

    .line 52
    .line 53
    iget-wide v3, p1, LB1/f;->f:J

    .line 54
    .line 55
    cmp-long v1, v1, v3

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    return v0

    .line 60
    :cond_6
    iget-wide v1, p0, LB1/f;->g:J

    .line 61
    .line 62
    iget-wide v3, p1, LB1/f;->g:J

    .line 63
    .line 64
    cmp-long v1, v1, v3

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    return v0

    .line 69
    :cond_7
    iget-object v1, p0, LB1/f;->a:Landroidx/work/NetworkType;

    .line 70
    .line 71
    iget-object v2, p1, LB1/f;->a:Landroidx/work/NetworkType;

    .line 72
    .line 73
    if-eq v1, v2, :cond_8

    .line 74
    .line 75
    return v0

    .line 76
    :cond_8
    iget-object v0, p0, LB1/f;->h:Ljava/util/Set;

    .line 77
    .line 78
    iget-object p1, p1, LB1/f;->h:Ljava/util/Set;

    .line 79
    .line 80
    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_9
    :goto_0
    return v0
.end method

.method public final getContentTriggerMaxDelayMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, LB1/f;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContentTriggerUpdateDelayMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, LB1/f;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContentUriTriggers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LB1/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LB1/f;->h:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequiredNetworkType()Landroidx/work/NetworkType;
    .locals 1

    .line 1
    iget-object v0, p0, LB1/f;->a:Landroidx/work/NetworkType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasContentUriTriggers()Z
    .locals 1

    .line 1
    iget-object v0, p0, LB1/f;->h:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, LB1/f;->a:Landroidx/work/NetworkType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, LB1/f;->b:Z

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, LB1/f;->c:Z

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-boolean v1, p0, LB1/f;->d:Z

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v1, p0, LB1/f;->e:Z

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-wide v1, p0, LB1/f;->f:J

    .line 30
    .line 31
    const/16 v3, 0x20

    .line 32
    .line 33
    ushr-long v4, v1, v3

    .line 34
    .line 35
    xor-long/2addr v1, v4

    .line 36
    long-to-int v1, v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-wide v1, p0, LB1/f;->g:J

    .line 41
    .line 42
    ushr-long v3, v1, v3

    .line 43
    .line 44
    xor-long/2addr v1, v3

    .line 45
    long-to-int v1, v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v1, p0, LB1/f;->h:Ljava/util/Set;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v1, v0

    .line 56
    return v1
.end method

.method public final requiresBatteryNotLow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LB1/f;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final requiresCharging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LB1/f;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final requiresDeviceIdle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LB1/f;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final requiresStorageNotLow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LB1/f;->e:Z

    .line 2
    .line 3
    return v0
.end method
