.class public final Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Lv0/i0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv0/i0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const-string v2, "image/bmp"

    .line 8
    .line 9
    const/16 v3, 0x424d

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Lv0/i0;-><init>(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lz0/a;->a:Lv0/i0;

    .line 15
    .line 16
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
    iget-object v0, p0, Lz0/a;->a:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv0/i0;->init(Lv0/F;)V

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
    iget-object v0, p0, Lz0/a;->a:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lv0/i0;->read(Lv0/D;Lv0/c0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz0/a;->a:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/i0;->seek(JJ)V

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
    iget-object v0, p0, Lz0/a;->a:Lv0/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv0/i0;->sniff(Lv0/D;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
