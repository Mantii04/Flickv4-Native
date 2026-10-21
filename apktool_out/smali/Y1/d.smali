.class public final LY1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:C

.field public final c:D

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La2/m;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY1/d;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-char p2, p0, LY1/d;->b:C

    .line 7
    .line 8
    iput-wide p5, p0, LY1/d;->c:D

    .line 9
    .line 10
    iput-object p7, p0, LY1/d;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p8, p0, LY1/d;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    mul-int/2addr p0, v0

    .line 4
    invoke-static {p0, v0, p1}, LA/i;->b(IILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/2addr p1, p0

    .line 13
    return p1
.end method


# virtual methods
.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La2/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LY1/d;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 1
    iget-wide v0, p0, LY1/d;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, LY1/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LY1/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-char v2, p0, LY1/d;->b:C

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, LY1/d;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
