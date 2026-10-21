.class public final La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public final c:LZ1/b;

.field public final d:LZ1/m;

.field public final e:LZ1/b;

.field public final f:LZ1/b;

.field public final g:LZ1/b;

.field public final h:LZ1/b;

.field public final i:LZ1/b;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;LZ1/b;LZ1/m;LZ1/b;LZ1/b;LZ1/b;LZ1/b;LZ1/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "LZ1/b;",
            "LZ1/m;",
            "LZ1/b;",
            "LZ1/b;",
            "LZ1/b;",
            "LZ1/b;",
            "LZ1/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La2/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, La2/h;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 7
    .line 8
    iput-object p3, p0, La2/h;->c:LZ1/b;

    .line 9
    .line 10
    iput-object p4, p0, La2/h;->d:LZ1/m;

    .line 11
    .line 12
    iput-object p5, p0, La2/h;->e:LZ1/b;

    .line 13
    .line 14
    iput-object p6, p0, La2/h;->f:LZ1/b;

    .line 15
    .line 16
    iput-object p7, p0, La2/h;->g:LZ1/b;

    .line 17
    .line 18
    iput-object p8, p0, La2/h;->h:LZ1/b;

    .line 19
    .line 20
    iput-object p9, p0, La2/h;->i:LZ1/b;

    .line 21
    .line 22
    iput-boolean p10, p0, La2/h;->j:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getInnerRadius()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->f:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInnerRoundedness()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->h:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOuterRadius()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->g:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOuterRoundedness()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->i:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPoints()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->c:LZ1/b;

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
    iget-object v0, p0, La2/h;->d:LZ1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRotation()LZ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->e:LZ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    .line 1
    iget-object v0, p0, La2/h;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/h;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public toContent(LT1/G;Lb2/b;)LV1/d;
    .locals 1

    .line 1
    new-instance v0, LV1/o;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0}, LV1/o;-><init>(LT1/G;Lb2/b;La2/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
