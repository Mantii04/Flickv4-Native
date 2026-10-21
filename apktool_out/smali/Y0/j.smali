.class public final LY0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/i;


# instance fields
.field public final b:LY0/c;

.field public final e:[J

.field public final f:Ljava/util/Map;

.field public final j:Ljava/util/Map;

.field public final m:Ljava/util/Map;


# direct methods
.method public constructor <init>(LY0/c;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY0/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LY0/i;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LY0/g;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY0/j;->b:LY0/c;

    .line 5
    .line 6
    iput-object p3, p0, LY0/j;->j:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p4, p0, LY0/j;->m:Ljava/util/Map;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 18
    .line 19
    :goto_0
    iput-object p2, p0, LY0/j;->f:Ljava/util/Map;

    .line 20
    .line 21
    invoke-virtual {p1}, LY0/c;->getEventTimesUs()[J

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, LY0/j;->e:[J

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v4, p0, LY0/j;->j:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v5, p0, LY0/j;->m:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v0, p0, LY0/j;->b:LY0/c;

    .line 6
    .line 7
    iget-object v3, p0, LY0/j;->f:Ljava/util/Map;

    .line 8
    .line 9
    move-wide v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, LY0/c;->getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getEventTime(I)J
    .locals 3

    .line 1
    iget-object v0, p0, LY0/j;->e:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LY0/j;->e:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LY0/j;->e:[J

    .line 3
    .line 4
    invoke-static {v1, p1, p2, v0, v0}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    array-length p2, v1

    .line 9
    if-ge p1, p2, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    return p1
.end method
