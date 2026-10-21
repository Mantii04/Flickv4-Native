.class public abstract Lp2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/a;


# instance fields
.field public final a:J

.field public final b:Lp2/f;


# direct methods
.method public constructor <init>(Lp2/f;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lp2/g;->a:J

    .line 5
    .line 6
    iput-object p1, p0, Lp2/g;->b:Lp2/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public build()Lp2/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/g;->b:Lp2/f;

    .line 2
    .line 3
    check-cast v0, Lp2/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp2/i;->getCacheDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-object v1

    .line 27
    :cond_2
    :goto_0
    iget-wide v1, p0, Lp2/g;->a:J

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lp2/h;->create(Ljava/io/File;J)Lp2/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
