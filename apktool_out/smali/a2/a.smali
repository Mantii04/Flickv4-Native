.class public final La2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LZ1/m;

.field public final c:LZ1/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LZ1/m;LZ1/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LZ1/m;",
            "LZ1/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/a;->b:LZ1/m;

    .line 7
    .line 8
    iput-object p3, p0, La2/a;->c:LZ1/f;

    .line 9
    .line 10
    iput-boolean p4, p0, La2/a;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, La2/a;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()LZ1/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZ1/m;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/a;->b:LZ1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()LZ1/f;
    .locals 1

    .line 1
    iget-object v0, p0, La2/a;->c:LZ1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/a;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReversed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/g;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/g;-><init>(LT1/G;Lb2/b;La2/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
