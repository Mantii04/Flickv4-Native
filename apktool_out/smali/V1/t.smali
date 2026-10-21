.class public final LV1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/d;
.implements LW1/a;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public final d:LW1/f;

.field public final e:LW1/f;

.field public final f:LW1/f;


# direct methods
.method public constructor <init>(Lb2/b;La2/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/t;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p2}, La2/p;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, La2/p;->isHidden()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, LV1/t;->a:Z

    .line 19
    .line 20
    invoke-virtual {p2}, La2/p;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, LV1/t;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 25
    .line 26
    invoke-virtual {p2}, La2/p;->getStart()LZ1/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, LZ1/b;->createAnimation()LW1/f;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, LV1/t;->d:LW1/f;

    .line 35
    .line 36
    invoke-virtual {p2}, La2/p;->getEnd()LZ1/b;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, LZ1/b;->createAnimation()LW1/f;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, LV1/t;->e:LW1/f;

    .line 45
    .line 46
    invoke-virtual {p2}, La2/p;->getOffset()LZ1/b;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, LZ1/b;->createAnimation()LW1/f;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, LV1/t;->f:LW1/f;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(LW1/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, LV1/t;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getEnd()LW1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV1/t;->e:LW1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffset()LW1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV1/t;->f:LW1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStart()LW1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW1/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV1/t;->d:LW1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LV1/t;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public onValueChanged()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LV1/t;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, LW1/a;

    .line 15
    .line 16
    invoke-interface {v1}, LW1/a;->onValueChanged()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LV1/d;",
            ">;",
            "Ljava/util/List<",
            "LV1/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method
