.class public final La2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LZ1/m;

.field public final c:LZ1/f;

.field public final d:LZ1/b;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LZ1/m;LZ1/f;LZ1/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LZ1/m;",
            "LZ1/f;",
            "LZ1/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/i;->b:LZ1/m;

    .line 7
    .line 8
    iput-object p3, p0, La2/i;->c:LZ1/f;

    .line 9
    .line 10
    iput-object p4, p0, La2/i;->d:LZ1/b;

    .line 11
    .line 12
    iput-boolean p5, p0, La2/i;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getCornerRadius()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->d:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->a:Ljava/lang/String;

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
    iget-object v0, p0, La2/i;->b:LZ1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()LZ1/f;
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->c:LZ1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/i;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/p;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/p;-><init>(LT1/G;Lb2/b;La2/i;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RectangleShape{position="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La2/i;->b:LZ1/m;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", size="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La2/i;->c:LZ1/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
