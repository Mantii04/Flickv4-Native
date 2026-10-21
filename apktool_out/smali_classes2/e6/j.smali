.class public final Le6/j;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic b:Le6/l;


# direct methods
.method public constructor <init>(Le6/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le6/j;->b:Le6/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-object v0, p0, Le6/j;->b:Le6/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/l;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v0, v0

    .line 16
    return v0
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public read()I
    .locals 5

    .line 1
    iget-object v0, p0, Le6/j;->b:Le6/l;

    invoke-virtual {v0}, Le6/l;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Le6/l;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le6/j;->b:Le6/l;

    invoke-virtual {v0, p1, p2, p3}, Le6/l;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Le6/j;->b:Le6/l;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".inputStream()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
