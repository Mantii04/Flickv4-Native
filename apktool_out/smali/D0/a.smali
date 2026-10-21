.class public final LD0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Lv0/C;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lv0/i0;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    const-string v1, "image/jpeg"

    .line 12
    .line 13
    const v2, 0xffd8

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v2, v0, v1}, Lv0/i0;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LD0/a;->a:Lv0/C;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, LD0/b;

    .line 23
    .line 24
    invoke-direct {p1}, LD0/b;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LD0/a;->a:Lv0/C;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->a(Lv0/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUnderlyingImplementation()Lv0/C;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->b(Lv0/C;)Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public init(Lv0/F;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->a:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv0/C;->init(Lv0/F;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LD0/a;->a:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv0/C;->read(Lv0/D;Lv0/c0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->a:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0}, Lv0/C;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->a:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lv0/C;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LD0/a;->a:Lv0/C;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lv0/C;->sniff(Lv0/D;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
